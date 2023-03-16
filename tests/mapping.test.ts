import {
  clearStore,
  test,
  assert,
  describe,
  afterAll,
} from "matchstick-as/assembly/index";

import {
  handleDonationAdded,
  handleNonProfitAdded,
  handleNonProfitRemoved,
  handlePoolCreated,
  handlePoolBalanceIncreased,
  handleIntegrationControllerBalanceAdded,
  handleIntegrationControllerBalanceRemoved,
  handlePoolBalanceTransfered,
  handlePoolIncreaseFeeChanged,
} from "../src/mapping";
import { BigInt, Bytes } from "@graphprotocol/graph-ts";
import {
  createNewDonationAddedEvent,
  createNewNonProfitAddedEvent,
  createNewNonProfitRemovedEvent,
  createNewPoolCreatedEvent,
  createNewPoolBalanceIncreasedEvent,
  createNewIntegrationControllerBalanceAddedEvent,
  createNewIntegrationControllerBalanceRemovedEvent,
  createNewPoolBalanceTransferedEvent,
  createNewPoolIncreaseFeeChangedEvent,
} from "./utils";

describe("Manager", () => {
  afterAll(() => {
    clearStore();
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
    });

    describe("#NonProfitRemoved", () => {
      test("when the non profit already exists", () => {
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
      test("when non profit does not yet exist", () => {
        let nonProfit = "0xf20c382d2a95eb19f9164435aed59e5c59bc1fd9";
        let pool = "0x026b2ed6b34c98f6624b448865642056d04d730c";

        let newEntityEvent = createNewNonProfitRemovedEvent(pool, nonProfit);
        handleNonProfitRemoved(newEntityEvent);

        assert.notInStore("NonProfit", nonProfit);
        clearStore();
      });
    });
  });

  describe("Integration", () => {
    describe("when integration does not yet exist", () => {
      test("#IntegrationBalanceAdded", () => {
        let integration = "0x3c651eca8944e24b7f70817b14ea8345834503ad";
        let amount = BigInt.fromI32(5);

        let newEntityEvent = createNewIntegrationControllerBalanceAddedEvent(
          integration,
          amount
        );
        handleIntegrationControllerBalanceAdded(newEntityEvent);

        assert.fieldEquals("Integration", integration, "id", integration);
        assert.fieldEquals("Integration", integration, "balance", "5");

        clearStore();
      });
      test("#IntegrationControllerBalanceRemoved", () => {
        let integration = "0x3c651eca8944e24b7f70817b14ea8345834503ad";
        let amount = BigInt.fromI32(3);

        let newEntityEvent = createNewIntegrationControllerBalanceRemovedEvent(
          integration,
          amount
        );
        handleIntegrationControllerBalanceRemoved(newEntityEvent);

        assert.notInStore("Integration", integration);
      });
    });
    describe("when the integration already exists", () => {
      test("#IntegrationBalanceAdded", () => {
        let integration = "0x3c651eca8944e24b7f70817b14ea8345834503ad";
        let amount = BigInt.fromI32(5);

        let newEntityEvent = createNewIntegrationControllerBalanceAddedEvent(
          integration,
          amount
        );
        handleIntegrationControllerBalanceAdded(newEntityEvent);

        assert.fieldEquals("Integration", integration, "id", integration);
        assert.fieldEquals("Integration", integration, "balance", "5");
      });
      test("#IntegrationControllerBalanceRemoved", () => {
        let integration = "0x3c651eca8944e24b7f70817b14ea8345834503ad";
        let amount = BigInt.fromI32(3);

        let newEntityEvent = createNewIntegrationControllerBalanceRemovedEvent(
          integration,
          amount
        );
        handleIntegrationControllerBalanceRemoved(newEntityEvent);

        assert.fieldEquals("Integration", integration, "id", integration);
        assert.fieldEquals("Integration", integration, "balance", "2");
      });
    });
  });

  describe("Pool Balance", () => {
    test("#PoolCreated", () => {
      let token = "0x2791Bca1f2de4661ED88A30C99A7a9449Aa84174";
      let pool = "0x026b2ed6b34c98f6624b448865642056d04d730c";
      let nonProfit = "0xf20c382d2a95eb19f9164435aed59e5c59bc1fd9";

      let newEntityEvent = createNewPoolCreatedEvent(pool, token);
      handlePoolCreated(newEntityEvent);
      let newNonProfitEvent = createNewNonProfitAddedEvent(pool, nonProfit);
      handleNonProfitAdded(newNonProfitEvent);

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

    describe("PoolBalanceTransfered", () => {
      test("when the pool already exists", () => {
        let pool = "0x026b2ed6b34c98f6624b448865642056d04d730c";
        let wallet = "0x6e060041d62fdd76cf27c582f62983b864878e8f";

        let newEntityEvent = createNewPoolBalanceTransferedEvent(pool, wallet);
        handlePoolBalanceTransfered(newEntityEvent);

        assert.fieldEquals("Pool", pool, "id", pool);
        assert.fieldEquals("Pool", pool, "balance", "0");

        clearStore();
      });

      test("when the pool does not yet exists", () => {
        let pool = "0x026b2ed6b34c98f6624b448865642056d04d730c";
        let wallet = "0x6e060041d62fdd76cf27c582f62983b864878e8f";

        let newEntityEvent = createNewPoolBalanceTransferedEvent(pool, wallet);
        handlePoolBalanceTransfered(newEntityEvent);

        assert.notInStore("Pool", pool);

        clearStore();
      });
    });

    test("#DonationAdded", () => {
      let _donationBatch =
        "bafybeicdsk6drjhubevvw67jhhfg325n3gdvpzb5vtdd2dxq5a2nh725pq";
      let integration = "0x3c651eca8944e24b7f70817b14ea8345834503ad";
      let nonProfit = "0xf20c382d2a95eb19f9164435aed59e5c59bc1fd9";
      let pool = "0x026b2ed6b34c98f6624b448865642056d04d730c";
      let amount = BigInt.fromI32(3);

      let newEntityEvent = createNewDonationAddedEvent(
        pool,
        nonProfit,
        integration,
        _donationBatch
      );
      handleDonationAdded(newEntityEvent);

      assert.fieldEquals(
        "DonationBalance",
        _donationBatch + integration + nonProfit + pool,
        "donationBatch",
        _donationBatch
      );

      assert.fieldEquals(
        "DonationBalance",
        _donationBatch + integration + nonProfit + pool,
        "totalDonated",
        "1"
      );

      assert.fieldEquals(
        "DonationBalance",
        _donationBatch + integration + nonProfit + pool,
        "nonProfit",
        nonProfit
      );
      clearStore();
    });
  });

  describe("Pool Increase Fee", () => {
    test("#PoolIncreaseFeeChanged", () => {
      let fee = BigInt.fromI32(3).toString();
      let id = "0";

      let newEntityEvent = createNewPoolIncreaseFeeChangedEvent(
        fee
      );
      handlePoolIncreaseFeeChanged(newEntityEvent);

      assert.fieldEquals(
        "PoolIncreaseFee",
        id,
        "fee",
        fee,
      );
      clearStore();
    });
  });
});
