var mongoose = require("mongoose");
var Schema = mongoose.Schema;
var { composeWithMongoose } = require("graphql-compose-mongoose");

const TransactionSchema = new Schema(
  {
    PayerId: {
      type: String,
      required: true,
    },
    IsGroup: {
      type: Boolean,
      required: true,
    },
    PayeeId: {
      type: String,
      required: true,
    },
    Amount: {
      type: Schema.Types.Decimal128,
      required: true,
    },
    Category: {
      type: Number,
    },
    Date: {
      type: Date,
      required: true,
    },
    Notes: {
      type: String,
    },
  },
  {
    collection: "transactions",
  }
);

const Transaction = mongoose.model("Transaction", TransactionSchema);
const TransactionTC = composeWithMongoose(Transaction);

module.exports = {
  Transaction,
  TransactionTC,
};
