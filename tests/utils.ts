import { newMockEvent } from "matchstick-as/assembly/index";
import {
  DonationAdded,
  NonProfitAdded,
  NonProfitRemoved,
} from "../generated/Manager/Manager";

import { Address, ByteArray, ethereum } from "@graphprotocol/graph-ts";
import { Bytes } from "@graphprotocol/graph-ts";

export function createNewDonationAddedEvent(
  pool: string,
  user: ByteArray,
  integration: string,
  nonProfit: string
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
  let userParam = new ethereum.EventParam(
    "user",
    ethereum.Value.fromBytes(Bytes.fromByteArray(user))
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
  newEntityEvent.parameters.push(userParam);
  newEntityEvent.parameters.push(integrationParam);
  newEntityEvent.parameters.push(nonProfitParam);
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
