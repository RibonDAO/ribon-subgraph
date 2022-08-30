import {
  clearStore,
  test,
  assert,
  newMockEvent,
  describe,
  beforeAll,
  beforeEach,
} from "matchstick-as/assembly/index";
import {
  DonationAdded,
  IntegrationBalanceAdded,
  NonProfitAdded,
} from "../generated/Manager/Manager";
import {
  handleDonationAdded,
  handleIntegrationBalanceAdded,
  handleNonProfitAdded,
  handleNonProfitRemoved,
} from "../src/mapping";
import { Address, ethereum, Value } from "@graphprotocol/graph-ts";
import { BigInt, Bytes } from "@graphprotocol/graph-ts";
import { Promoter } from "../generated/schema";
import {
  createNewDonationAddedEvent,
  createNewNonProfitAddedEvent,
  createNewNonProfitRemovedEvent,
} from "./utils";

describe("Manager", () => {
  describe("Pool Balance", () => {
    test("#DonationAdded", () => {
      let user = Bytes.fromHexString(
        "0xd229e8696a794bb2669821b444690c05f1faa8337ffba5053914b66c99dd39e0"
      );

      let integration = "0x3c651eca8944e24b7f70817b14ea8345834503ad";
      let nonProfit = "0xf20c382d2a95eb19f9164435aed59e5c59bc1fd9";
      let pool = "0x026b2ed6b34c98f6624b448865642056d04d730c";

      let newEntityEvent = createNewDonationAddedEvent(
        pool,
        user,
        integration,
        nonProfit
      );
      handleDonationAdded(newEntityEvent);

      assert.fieldEquals(
        "DonationBalance",
        user.toHex() + integration + nonProfit + pool,
        "user",
        user.toHex()
      );

      assert.fieldEquals(
        "DonationBalance",
        user.toHex() + integration + nonProfit + pool,
        "totalDonated",
        "1"
      );

      assert.fieldEquals(
        "DonationBalance",
        user.toHex() + integration + nonProfit + pool,
        "nonProfit",
        nonProfit
      );
      clearStore();
    });
  });
  describe("Non Profit", () => {
    test("#NonProfitAdded", () => {
      let nonProfit = "0xf20c382d2a95eb19f9164435aed59e5c59bc1fd9";
      let pool = "0x026b2ed6b34c98f6624b448865642056d04d730c";

      let newEntityEvent = createNewNonProfitAddedEvent(pool, nonProfit);
      handleNonProfitAdded(newEntityEvent);

      assert.fieldEquals("NonProfit", nonProfit, "id", nonProfit);

      assert.fieldEquals(
        "NonProfit",
        nonProfit,
        "isNonProfitOnWhitelist",
        "true"
      );

      assert.fieldEquals("NonProfit", nonProfit, "pool", pool);
      clearStore();
    });

    test("#NonProfitAdded", () => {
      let nonProfit = "0xf20c382d2a95eb19f9164435aed59e5c59bc1fd9";
      let pool = "0x026b2ed6b34c98f6624b448865642056d04d730c";

      let newEntityEvent = createNewNonProfitRemovedEvent(pool, nonProfit);
      handleNonProfitRemoved(newEntityEvent);

      assert.fieldEquals("NonProfit", nonProfit, "id", nonProfit);

      assert.fieldEquals(
        "NonProfit",
        nonProfit,
        "isNonProfitOnWhitelist",
        "false"
      );

      assert.fieldEquals("NonProfit", nonProfit, "pool", pool);
      clearStore();
    });
  });
});
