var {
  TransactionGroupDetail,
  TransactionGroupDetailTC,
} = require("../models/transactionGroupDetail");

const TransactionGroupDetailQuery = {
  transactionGroupDetailById: TransactionGroupDetailTC.getResolver("findById"),
  transactionGroupDetailByIds: TransactionGroupDetailTC.getResolver(
    "findByIds"
  ),
  transactionGroupDetailOne: TransactionGroupDetailTC.getResolver("findOne"),
  transactionGroupDetailMany: TransactionGroupDetailTC.getResolver("findMany"),
  transactionGroupDetailCount: TransactionGroupDetailTC.getResolver("count"),
  transactionGroupDetailConnection: TransactionGroupDetailTC.getResolver(
    "connection"
  ),
  transactionGroupDetailPagination: TransactionGroupDetailTC.getResolver(
    "pagination"
  ),
};

const TransactionGroupDetailMutation = {
  transactionGroupDetailCreateOne: TransactionGroupDetailTC.getResolver(
    "createOne"
  ),
  transactionGroupDetailCreateMany: TransactionGroupDetailTC.getResolver(
    "createMany"
  ),
  transactionGroupDetailUpdateById: TransactionGroupDetailTC.getResolver(
    "updateById"
  ),
  transactionGroupDetailUpdateOne: TransactionGroupDetailTC.getResolver(
    "updateOne"
  ),
  transactionGroupDetailUpdateMany: TransactionGroupDetailTC.getResolver(
    "updateMany"
  ),
  transactionGroupDetailRemoveById: TransactionGroupDetailTC.getResolver(
    "removeById"
  ),
  transactionGroupDetailRemoveOne: TransactionGroupDetailTC.getResolver(
    "removeOne"
  ),
  transactionGroupDetailRemoveMany: TransactionGroupDetailTC.getResolver(
    "removeMany"
  ),
};

module.exports = {
  TransactionGroupDetailQuery,
  TransactionGroupDetailMutation,
};
