import { newMockEvent } from "matchstick-as/assembly/index";
import {
  DonationAdded,
  NonProfitAdded,
  NonProfitRemoved,
  PoolCreated,
  PoolBalanceIncreased,
  IntegrationBalanceAdded,
  IntegrationBalanceRemoved,
  PoolBalanceTransfered,
} from "../generated/Manager/Manager";

import { Address, ByteArray, ethereum } from "@graphprotocol/graph-ts";
import { Bytes, BigInt } from "@graphprotocol/graph-ts";

export function createNewPoolCreatedEvent(
  pool: string,
  token: string
): PoolCreated {
  let mockEvent = newMockEvent();
  let newEntityEvent = new PoolCreated(
    mockEvent.address,
    mockEvent.logIndex,
    mockEvent.transactionLogIndex,
    mockEvent.logType,
    mockEvent.block,
    mockEvent.transaction,
    mockEvent.parameters
  );
  newEntityEvent.parameters = new Array();

  let poolParam = new ethereum.EventParam(
    "pool",
    ethereum.Value.fromAddress(Address.fromString(pool))
  );
  let tokenParam = new ethereum.EventParam(
    "token",
    ethereum.Value.fromAddress(Address.fromString(token))
  );

  newEntityEvent.parameters.push(poolParam);
  newEntityEvent.parameters.push(tokenParam);

  return newEntityEvent;
}

export function createNewPoolBalanceIncreasedEvent(
  promoter: string,
  pool: string,
  amount: BigInt
): PoolBalanceIncreased {
  let mockEvent = newMockEvent();
  let newEntityEvent = new PoolBalanceIncreased(
    mockEvent.address,
    mockEvent.logIndex,
    mockEvent.transactionLogIndex,
    mockEvent.logType,
    mockEvent.block,
    mockEvent.transaction,
    mockEvent.parameters
  );
  newEntityEvent.parameters = new Array();

  let promoterParam = new ethereum.EventParam(
    "promoter",
    ethereum.Value.fromAddress(Address.fromString(promoter))
  );

  let poolParam = new ethereum.EventParam(
    "pool",
    ethereum.Value.fromAddress(Address.fromString(pool))
  );
  let amountParam = new ethereum.EventParam(
    "amount",
    ethereum.Value.fromI32(amount.toI32())
  );

  newEntityEvent.parameters.push(promoterParam);
  newEntityEvent.parameters.push(poolParam);
  newEntityEvent.parameters.push(amountParam);

  return newEntityEvent;
}

export function createNewPoolBalanceTransferedEvent(
  pool: string,
  wallet: string
): PoolBalanceTransfered {
  let mockEvent = newMockEvent();
  let newEntityEvent = new PoolBalanceTransfered(
    mockEvent.address,
    mockEvent.logIndex,
    mockEvent.transactionLogIndex,
    mockEvent.logType,
    mockEvent.block,
    mockEvent.transaction,
    mockEvent.parameters
  );
  newEntityEvent.parameters = new Array();

  let poolParam = new ethereum.EventParam(
    "pool",
    ethereum.Value.fromAddress(Address.fromString(pool))
  );

  let walletParam = new ethereum.EventParam(
    "wallet",
    ethereum.Value.fromAddress(Address.fromString(wallet))
  );

  newEntityEvent.parameters.push(poolParam);
  newEntityEvent.parameters.push(walletParam);

  return newEntityEvent;
}

export function createNewDonationAddedEvent(
  pool: string,
  nonProfit: string,
  integration: string,
  donationBatch: string,
): DonationAdded {
  let mockEvent = newMockEvent();
  let newEntityEvent = new DonationAdded(
    mockEvent.address,
    mockEvent.logIndex,
    mockEvent.transactionLogIndex,
    mockEvent.logType,
    mockEvent.block,
    mockEvent.transaction,
    mockEvent.parameters
  );
  newEntityEvent.parameters = new Array();

  let poolParam = new ethereum.EventParam(
    "pool",
    ethereum.Value.fromAddress(Address.fromString(pool))
  );

  let donationBatchParam = new ethereum.EventParam(
    "_donation_batch",
    ethereum.Value.fromString(donationBatch)
  );

  let integrationParam = new ethereum.EventParam(
    "integration",
    ethereum.Value.fromAddress(Address.fromString(integration))
  );
  let nonProfitParam = new ethereum.EventParam(
    "nonProfit",
    ethereum.Value.fromAddress(Address.fromString(nonProfit))
  );
  let totalDonatedParam = new ethereum.EventParam(
    "amount",
    ethereum.Value.fromI32(1)
  );

  newEntityEvent.parameters.push(poolParam);
  newEntityEvent.parameters.push(nonProfitParam);
  newEntityEvent.parameters.push(integrationParam);
  newEntityEvent.parameters.push(donationBatchParam);
  newEntityEvent.parameters.push(totalDonatedParam);

  return newEntityEvent;
}

export function createNewNonProfitAddedEvent(
  pool: string,
  nonProfit: string
): NonProfitAdded {
  let mockEvent = newMockEvent();
  let newEntityEvent = new NonProfitAdded(
    mockEvent.address,
    mockEvent.logIndex,
    mockEvent.transactionLogIndex,
    mockEvent.logType,
    mockEvent.block,
    mockEvent.transaction,
    mockEvent.parameters
  );
  newEntityEvent.parameters = new Array();

  let poolParam = new ethereum.EventParam(
    "pool",
    ethereum.Value.fromAddress(Address.fromString(pool))
  );
  let nonProfitParam = new ethereum.EventParam(
    "nonProfit",
    ethereum.Value.fromAddress(Address.fromString(nonProfit))
  );

  newEntityEvent.parameters.push(poolParam);
  newEntityEvent.parameters.push(nonProfitParam);

  return newEntityEvent;
}

export function createNewNonProfitRemovedEvent(
  pool: string,
  nonProfit: string
): NonProfitRemoved {
  let mockEvent = newMockEvent();
  let newEntityEvent = new NonProfitRemoved(
    mockEvent.address,
    mockEvent.logIndex,
    mockEvent.transactionLogIndex,
    mockEvent.logType,
    mockEvent.block,
    mockEvent.transaction,
    mockEvent.parameters
  );
  newEntityEvent.parameters = new Array();

  let poolParam = new ethereum.EventParam(
    "pool",
    ethereum.Value.fromAddress(Address.fromString(pool))
  );
  let nonProfitParam = new ethereum.EventParam(
    "nonProfit",
    ethereum.Value.fromAddress(Address.fromString(nonProfit))
  );

  newEntityEvent.parameters.push(poolParam);
  newEntityEvent.parameters.push(nonProfitParam);

  return newEntityEvent;
}

export function createNewIntegrationBalanceAddedEvent(
  integration: string,
  amount: BigInt
): IntegrationBalanceAdded {
  let mockEvent = newMockEvent();
  let newEntityEvent = new IntegrationBalanceAdded(
    mockEvent.address,
    mockEvent.logIndex,
    mockEvent.transactionLogIndex,
    mockEvent.logType,
    mockEvent.block,
    mockEvent.transaction,
    mockEvent.parameters
  );
  newEntityEvent.parameters = new Array();

  let integrationParam = new ethereum.EventParam(
    "integration",
    ethereum.Value.fromAddress(Address.fromString(integration))
  );
  let amountParam = new ethereum.EventParam(
    "amount",
    ethereum.Value.fromI32(amount.toI32())
  );

  newEntityEvent.parameters.push(integrationParam);
  newEntityEvent.parameters.push(amountParam);

  return newEntityEvent;
}

export function createNewIntegrationBalanceRemovedEvent(
  integration: string,
  amount: BigInt
): IntegrationBalanceRemoved {
  let mockEvent = newMockEvent();
  let newEntityEvent = new IntegrationBalanceRemoved(
    mockEvent.address,
    mockEvent.logIndex,
    mockEvent.transactionLogIndex,
    mockEvent.logType,
    mockEvent.block,
    mockEvent.transaction,
    mockEvent.parameters
  );
  newEntityEvent.parameters = new Array();

  let integrationParam = new ethereum.EventParam(
    "integration",
    ethereum.Value.fromAddress(Address.fromString(integration))
  );
  let amountParam = new ethereum.EventParam(
    "amount",
    ethereum.Value.fromI32(amount.toI32())
  );

  newEntityEvent.parameters.push(integrationParam);
  newEntityEvent.parameters.push(amountParam);

  return newEntityEvent;
}
