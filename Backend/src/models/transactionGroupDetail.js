var mongoose = require("mongoose");
var Schema = mongoose.Schema;
var { composeWithMongoose } = require("graphql-compose-mongoose");

const TransactionGroupDetailSchema = new Schema(
  {
    TransactionId: {
      type: String,
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
  },
  {
    collection: "transactionGroupDetails",
  }
);

const TransactionGroupDetail = mongoose.model(
  "TransactionGroupDetail",
  TransactionGroupDetailSchema
);
const TransactionGroupDetailTC = composeWithMongoose(TransactionGroupDetail);

module.exports = {
  TransactionGroupDetail,
  TransactionGroupDetailTC,
};
