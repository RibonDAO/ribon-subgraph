import {
  clearStore,
  test,
  assert,
  newMockEvent,
  describe,
} from "matchstick-as/assembly/index";
import { BigInt, Bytes } from "@graphprotocol/graph-ts";
import {
  NonProfit,
  Promoter,
  PromoterDonation,
  Integration,
  DonationBalance,
} from "../generated/schema";
import {
  NonProfitAdded,
  NonProfitRemoved,
  NonProfitCouncilChanged,
  DonationAdded,
  IntegrationBalanceAdded,
  IntegrationBalanceRemoved,
  IntegrationCouncilChanged,
  PoolBalanceIncreased,
  PoolBalanceTransfered,
  PoolCreated,
  Manager,
} from "../generated/Manager/Manager";
import {
  handleDonationAdded,
  handleIntegrationBalanceAdded,
  handleIntegrationBalanceRemoved,
  handleNonProfitAdded,
  handleNonProfitRemoved,
  handlePoolBalanceIncreased,
} from "../src/mapping";
import { Address, ethereum } from "@graphprotocol/graph-ts";

describe("Manager", () => {
  describe("Pool Balance", () => {
    test("#DonationAdded", () => {
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

      let promoterParam = new ethereum.EventParam(
        "user",
        ethereum.Value.fromBytes(
          Address.fromString("0x4c946b9af8d084ae59b5ea70d70a5b999e8e8332")
        )
      );
      let integrationParam = new ethereum.EventParam(
        "integration",
        ethereum.Value.fromAddress(
          Address.fromString("0x3c651eca8944e24b7f70817b14ea8345834503ad")
        )
      );
      let nonProfitParam = new ethereum.EventParam(
        "nonProfit",
        ethereum.Value.fromAddress(
          Address.fromString("0xf20c382d2a95eb19f9164435aed59e5c59bc1fd9")
        )
      );
      let totalDonatedParam = new ethereum.EventParam(
        "totalDonated",
        ethereum.Value.fromI32(1)
      );
      let idParam = new ethereum.EventParam(
        "id",
        ethereum.Value.fromAddress(
          Address.fromString("0x4f82d4f97fd7f46a8bb615fa77ba249e16014aeb")
        )
      );
      newEntityEvent.parameters.push(idParam);
      newEntityEvent.parameters.push(promoterParam);
      newEntityEvent.parameters.push(integrationParam);
      newEntityEvent.parameters.push(nonProfitParam);
      newEntityEvent.parameters.push(totalDonatedParam);
      handleDonationAdded(newEntityEvent);

      assert.fieldEquals(
        "Pool",
        "0x4f82d4f97fd7f46a8bb615fa77ba249e16014aeb",
        "promoter",
        "0x4c946b9af8d084ae59b5ea70d70a5b999e8e8332"
      );

      // assert.fieldEquals(
      //   "Pool",
      //   "0x4f82d4f97fd7f46a8bb615fa77ba249e16014aeb",
      //   "integration",
      //   "0x3c651eca8944e24b7f70817b14ea8345834503ad"
      // );

      assert.fieldEquals(
        "Pool",
        "0x4f82d4f97fd7f46a8bb615fa77ba249e16014aeb",
        "balance",
        "1"
      );

      assert.fieldEquals(
        "Pool",
        "0x4f82d4f97fd7f46a8bb615fa77ba249e16014aeb",
        "nonProfit",
        "0xf20c382d2a95eb19f9164435aed59e5c59bc1fd9"
      );
      clearStore();
    });
  });
});
