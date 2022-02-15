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
  // Entities can be loaded from the store using a string ID; this ID
  // needs to be unique across all entities of the same type
  let idDonation =
    event.params.user.toHex() +
    event.params.integration.toHex() +
    event.params.nonProfit.toHex();
  let entity = DonationBalance.load(idDonation);

  // Entities only exist after they have been saved to the store;
  // `null` checks allow to create entities on demand
  if (!entity) {
    entity = new DonationBalance(idDonation);
    entity.totalDonated = BigInt.fromI32(0);
  }

  // BigInt and BigDecimal math are supported
  // refactor to use BigInt
  let entityBalance = entity.totalDonated;
  let eventAmount = event.params.amount;

  let entityTotalDonated =
    parseInt(`${entityBalance}`) + parseInt(`${eventAmount}`);

  entity.totalDonated = BigInt.fromI32(entityTotalDonated);

  // Entity fields can be set based on event parameters
  entity.user = event.params.user;
  entity.integration = event.params.integration;
  entity.nonProfit = event.params.nonProfit;

  // Entities can be written to the store with `.save()`
  entity.save();

  // Note: If a handler doesn't require existing field values, it is faster
  // _not_ to load the entity from the store. Instead, create it fresh with
  // `new Entity(...)`, set the fields that should be updated and save the
  // entity back to the store. Fields that were not set or unset remain
  // unchanged, allowing for partial updates to be applied.

  // It is also possible to access smart contracts from mappings. For
  // example, the contract that has emitted the event can be connected to
  // with:
  //
  // let contract = Contract.bind(event.address)
  //
  // The following functions can then be called on this contract to access
  // state variables and other data:
  //
  // - contract.donationPoolBalance(...)
  // - contract.donationToken(...)
  // - contract.getIntegrationBalance(...)
  // - contract.getIntegrationCouncil(...)
  // - contract.integrationCouncil(...)
  // - contract.integrations(...)
  // - contract.isNonProfitOnWhitelist(...)
  // - contract.nonProfitCouncil(...)
  // - contract.nonProfits(...)
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

  // refactor to use BigInt
  let entityBalance = entity.balance;
  let eventAmount = event.params.amount;

  let integrationBalance =
    parseInt(`${entityBalance}`) + parseInt(`${eventAmount}`);

  entity.balance = BigInt.fromI32(integrationBalance);

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

  // refactor to use BigInt
  let entityBalance = entity.totalDonated;
  let eventAmount = event.params.amount;

  let entityTotalDonated =
    parseInt(`${entityBalance}`) + parseInt(`${eventAmount}`);

  entity.totalDonated = BigInt.fromI32(entityTotalDonated);

  entity.save();
}
