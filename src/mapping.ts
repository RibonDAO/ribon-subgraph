import { BigInt } from "@graphprotocol/graph-ts";
import {
  Ribon,
  DonationAdded,
  IntegrationBalanceUpdated,
  NonProfitAdded,
  NonProfitRemoved,
  PoolBalanceIncreased,
} from "../generated/Ribon/Ribon";
import {
  NonProfit,
  Integration,
  Promoter,
  DonationBalance,
} from "../generated/schema";

export function handleDonationAdded(event: DonationAdded): void {

  let idDonation =
    event.params.user.toHex() +
    event.params.integration.toHex() +
    event.params.nonProfit.toHex();
  let entity = DonationBalance.load(idDonation);
  let integration = Integration.load(event.params.integration.toHex());

  if (!entity) {
    entity = new DonationBalance(idDonation);
    entity.totalDonated = BigInt.fromI32(0);
  }

  entity.totalDonated = entity.totalDonated.plus(event.params.amount);
  
  if (integration) {
    integration.balance = integration.balance.minus(event.params.amount);
  }

  entity.user = event.params.user;
  entity.integration = event.params.integration;
  entity.nonProfit = event.params.nonProfit;

  entity.save();
}

export function handleIntegrationBalanceUpdated(
  event: IntegrationBalanceUpdated
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

export function handleNonProfitAdded(event: NonProfitAdded): void {
  let nonProfit = event.params.nonProfit.toHex();
  let entity = NonProfit.load(nonProfit);

  if (entity == null) {
    entity = new NonProfit(nonProfit);
  }

  entity.isNonProfitOnWhitelist = true;

  entity.save();
}

export function handleNonProfitRemoved(event: NonProfitRemoved): void {
  let nonProfit = event.params.nonProfit.toHex();
  let entity = NonProfit.load(nonProfit);

  if (!entity) {
    entity = new NonProfit(nonProfit);
  }

  entity.isNonProfitOnWhitelist = false;

  entity.save();
}

export function handlePoolBalanceIncreased(event: PoolBalanceIncreased): void {
  let idPromoter = event.transaction.from.toHex();
  let entity = Promoter.load(idPromoter);

  if (!entity) {
    entity = new Promoter(idPromoter);
    entity.totalDonated = BigInt.fromI32(0);
  }

  entity.totalDonated = entity.totalDonated.plus(event.params.amount);

  entity.save();
}
