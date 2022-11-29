import { BigInt, Bytes } from "@graphprotocol/graph-ts";
import {
  Manager,
  DonationAdded,
  IntegrationBalanceAdded,
  IntegrationBalanceRemoved,
  NonProfitAdded,
  NonProfitRemoved,
  PoolBalanceIncreased,
  PoolCreated,
  PoolBalanceTransfered,
} from "../generated/Manager/Manager";
import {
  NonProfit,
  Integration,
  Promoter,
  DonationBalance,
  PromoterDonation,
  Pool,
} from "../generated/schema";

export function handleDonationAdded(event: DonationAdded): void {
  let idDonation =
    event.params.user.toHex() +
    event.params.integration.toHex() +
    event.params.nonProfit.toHex() +
    event.params.pool.toHex();
  let entity = DonationBalance.load(idDonation);
  let integration = Integration.load(event.params.integration.toHex());

  if (!entity) {
    entity = new DonationBalance(idDonation);
    entity.totalDonated = BigInt.fromI32(0);
  }

  entity.totalDonated = entity.totalDonated.plus(event.params.amount);

  if (integration) {
    integration.balance = integration.balance.minus(event.params.amount);
    entity.integration = integration.id;
  }

  entity.user = event.params.user;
  entity.integration = event.params.integration.toHex();
  entity.nonProfit = event.params.nonProfit.toHex();
  entity.pool = event.params.pool.toHex();

  entity.save();
}

export function handleIntegrationBalanceAdded(
  event: IntegrationBalanceAdded
): void {
  let integration = event.params.integration.toHex();
  let entity = Integration.load(integration);

  if (!entity) {
    entity = new Integration(integration);
    entity.balance = BigInt.fromI32(0);
  }

  entity.balance = entity.balance.plus(event.params.amount);

  entity.save();
}

export function handleIntegrationBalanceRemoved(
  event: IntegrationBalanceRemoved
): void {
  let integration = event.params.integration.toHex();
  let entity = Integration.load(integration);

  if (entity) {
    entity.balance = entity.balance.minus(event.params.amount);
    entity.save();
  }
}

export function handleNonProfitAdded(event: NonProfitAdded): void {
  let nonProfit = event.params.nonProfit.toHex();
  let entity = NonProfit.load(nonProfit);

  if (entity == null) {
    entity = new NonProfit(nonProfit);
  }

  entity.isNonProfitOnWhitelist = true;
  entity.pool = event.params.pool.toHex();

  entity.save();
}

export function handleNonProfitRemoved(event: NonProfitRemoved): void {
  let nonProfit = event.params.nonProfit.toHex();
  let entity = NonProfit.load(nonProfit);

  if (entity) {
    entity.isNonProfitOnWhitelist = false;
    entity.pool = event.params.pool.toHex();
    entity.save();
  }
}

export function handlePoolCreated(event: PoolCreated): void {
  let pool = event.params.pool.toHex();
  let entity = new Pool(pool);

  entity.balance = BigInt.fromI32(0);
  entity.timestamp = event.block.timestamp;
  entity.save();
}

export function handlePoolBalanceIncreased(event: PoolBalanceIncreased): void {
  let promoter = event.params.promoter.toHex();
  let pool = event.params.pool.toHex();
  let entity = Promoter.load(promoter);
  let entityPool = Pool.load(pool);

  if (entityPool) {
    entityPool.balance = entityPool.balance.plus(event.params.amount);
    entityPool.save();
  }

  if (!entity) {
    entity = new Promoter(promoter);
    entity.totalDonated = BigInt.fromI32(0);
  }

  let entityPromoterDonation = new PromoterDonation(
    event.transaction.hash.toHexString()
  );

  entity.totalDonated = entity.totalDonated.plus(event.params.amount);
  entityPromoterDonation.amountDonated = event.params.amount;
  entityPromoterDonation.timestamp = event.block.timestamp;
  entityPromoterDonation.promoter = event.params.promoter.toHex();
  entityPromoterDonation.pool = pool;

  entity.save();
  entityPromoterDonation.save();
}

export function handlePoolBalanceTransfered(
  event: PoolBalanceTransfered
): void {
  let pool = event.params.pool.toHex();
  let wallet = event.params.wallet.toHex();
  let entity = Pool.load(pool);

  if (entity) {
    entity.balance = BigInt.fromI32(0);
    entity.save();
  }
}
