import {
  clearStore,
  test,
  assert,
  describe,
} from "matchstick-as/assembly/index";

import {
  handleDonationAdded,
  handleNonProfitAdded,
  handleNonProfitRemoved,
  handlePoolCreated,
  handlePoolBalanceIncreased,
  handleIntegrationBalanceAdded,
  handleIntegrationBalanceRemoved,
  handlePoolBalanceTransfered,
} from "../src/mapping";
import { BigInt, Bytes } from "@graphprotocol/graph-ts";
import {
  createNewDonationAddedEvent,
  createNewNonProfitAddedEvent,
  createNewNonProfitRemovedEvent,
  createNewPoolCreatedEvent,
  createNewPoolBalanceIncreasedEvent,
  createNewIntegrationBalanceAddedEvent,
  createNewIntegrationBalanceRemovedEvent,
  createNewPoolBalanceTransferedEvent,
} from "./utils";

describe("Manager", () => {
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
    });

    test("#NonProfitRemoved", () => {
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

  describe("Integration", () => {
    test("#IntegrationBalanceAdded", () => {
      let integration = "0x3c651eca8944e24b7f70817b14ea8345834503ad";
      let amount = BigInt.fromI32(5);

      let newEntityEvent = createNewIntegrationBalanceAddedEvent(
        integration,
        amount
      );
      handleIntegrationBalanceAdded(newEntityEvent);

      assert.fieldEquals("Integration", integration, "id", integration);
      assert.fieldEquals("Integration", integration, "balance", "5");
    });
    test("#IntegrationBalanceRemoved", () => {
      let integration = "0x3c651eca8944e24b7f70817b14ea8345834503ad";
      let amount = BigInt.fromI32(3);

      let newEntityEvent = createNewIntegrationBalanceRemovedEvent(
        integration,
        amount
      );
      handleIntegrationBalanceRemoved(newEntityEvent);

      assert.fieldEquals("Integration", integration, "id", integration);
      assert.fieldEquals("Integration", integration, "balance", "2");
    });
  });

  describe("Pool Balance", () => {
    test("#PoolCreated", () => {
      let token = "0x2791Bca1f2de4661ED88A30C99A7a9449Aa84174";
      let pool = "0x026b2ed6b34c98f6624b448865642056d04d730c";
      let nonProfit = "0xf20c382d2a95eb19f9164435aed59e5c59bc1fd9";

      let newNonProfitEvent = createNewNonProfitAddedEvent(pool, nonProfit);
      handleNonProfitAdded(newNonProfitEvent);

      let newEntityEvent = createNewPoolCreatedEvent(pool, token);
      handlePoolCreated(newEntityEvent);

      assert.fieldEquals("Pool", pool, "id", pool);
      assert.fieldEquals("Pool", pool, "balance", "0");
      assert.fieldEquals("Pool", pool, "nonProfits", "[" + nonProfit + "]");
    });

    test("#PoolBalanceIncreased", () => {
      let promoter = "0x4c946b9af8d084ae59b5ea70d70a5b999e8e8332";
      let pool = "0x026b2ed6b34c98f6624b448865642056d04d730c";
      let amount = BigInt.fromI32(3);

      let newEntityEvent = createNewPoolBalanceIncreasedEvent(
        promoter,
        pool,
        amount
      );
      let id = newEntityEvent.transaction.hash.toHexString();
      handlePoolBalanceIncreased(newEntityEvent);

      assert.fieldEquals("PromoterDonation", id, "id", id);
      assert.fieldEquals("PromoterDonation", id, "amountDonated", "3");
      assert.fieldEquals("PromoterDonation", id, "promoter", promoter);
      assert.fieldEquals("PromoterDonation", id, "pool", pool);
      assert.fieldEquals("Pool", pool, "balance", "3");

      clearStore();
    });

    test("#PoolCreated", () => {
      let token = "0x2791Bca1f2de4661ED88A30C99A7a9449Aa84174";
      let pool = "0x026b2ed6b34c98f6624b448865642056d04d730c";
      let nonProfit = "0xf20c382d2a95eb19f9164435aed59e5c59bc1fd9";

      let newNonProfitEvent = createNewNonProfitAddedEvent(pool, nonProfit);
      handleNonProfitAdded(newNonProfitEvent);

      let newEntityEvent = createNewPoolCreatedEvent(pool, token);
      handlePoolCreated(newEntityEvent);

      assert.fieldEquals("Pool", pool, "id", pool);
      assert.fieldEquals("Pool", pool, "balance", "0");
      assert.fieldEquals("Pool", pool, "nonProfits", "[" + nonProfit + "]");
    });

    test("#PoolBalanceIncreased", () => {
      let promoter = "0x4c946b9af8d084ae59b5ea70d70a5b999e8e8332";
      let pool = "0x026b2ed6b34c98f6624b448865642056d04d730c";
      let amount = BigInt.fromI32(3);

      let newEntityEvent = createNewPoolBalanceIncreasedEvent(
        promoter,
        pool,
        amount
      );
      let id = newEntityEvent.transaction.hash.toHexString();
      handlePoolBalanceIncreased(newEntityEvent);

      assert.fieldEquals("PromoterDonation", id, "id", id);
      assert.fieldEquals("PromoterDonation", id, "amountDonated", "3");
      assert.fieldEquals("PromoterDonation", id, "promoter", promoter);
      assert.fieldEquals("PromoterDonation", id, "pool", pool);
      assert.fieldEquals("Pool", pool, "balance", "3");
    });

    test("#PoolBalanceTransfered", () => {
      let pool = "0x026b2ed6b34c98f6624b448865642056d04d730c";
      let wallet = "0x6e060041d62fdd76cf27c582f62983b864878e8f";

      let newEntityEvent = createNewPoolBalanceTransferedEvent(pool, wallet);
      handlePoolBalanceTransfered(newEntityEvent);

      assert.fieldEquals("Pool", pool, "id", pool);
      assert.fieldEquals("Pool", pool, "balance", "0");

      clearStore();
    });

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
});
