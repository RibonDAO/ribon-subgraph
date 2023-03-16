import { BigInt, Bytes } from "@graphprotocol/graph-ts";
import {
  Manager,
  DonationAdded,
  IntegrationControllerBalanceAdded,
  IntegrationControllerBalanceRemoved,
  NonProfitAdded,
  NonProfitRemoved,
  PoolBalanceIncreased,
  PoolCreated,
  PoolBalanceTransfered,
} from "../generated/Manager/Manager";
import {
  NonProfit,
  IntegrationController,
  Promoter,
  DonationBalance,
  PromoterDonation,
  Pool,
} from "../generated/schema";

export function handleDonationAdded(event: DonationAdded): void {
  let idDonation =
    event.params.donationBatch +
    event.params.integrationController.toHex() +
    event.params.nonProfit.toHex() +
    event.params.pool.toHex();

  let entity = DonationBalance.load(idDonation);
  let integration = IntegrationController.load(event.params.integrationController.toHex());

  if (!entity) {
    entity = new DonationBalance(idDonation);
    entity.totalDonated = BigInt.fromI32(0);
  }

  entity.totalDonated = entity.totalDonated.plus(event.params.amount);

  if (integration) {
    integration.balance = integration.balance.minus(event.params.amount);
    entity.integrationController = integration.id;
  }

  entity.donationBatch = event.params.donationBatch.toString();
  entity.integrationController = event.params.integrationController.toHex();
  entity.nonProfit = event.params.nonProfit.toHex();
  entity.pool = event.params.pool.toHex();

  entity.save();
}

export function handleIntegrationControllerBalanceAdded(
  event: IntegrationControllerBalanceAdded
): void {
  let integration = event.params.integrationController.toHex();
  let entity = IntegrationController.load(integration);

  if (!entity) {
    entity = new IntegrationController(integration);
    entity.balance = BigInt.fromI32(0);
  }

  entity.balance = entity.balance.plus(event.params.amount);

  entity.save();
}

export function handleIntegrationControllerBalanceRemoved(
  event: IntegrationControllerBalanceRemoved
): void {
  let integration = event.params.integrationController.toHex();
  let entity = IntegrationController.load(integration);

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
