var { SchemaComposer } = require("graphql-compose");
var { UserQuery, UserMutation } = require("./user");
var { FriendshipQuery, FriendshipMutation } = require("./friendship");
var { UserGroupQuery, UserGroupMutation } = require("./userGroup");
var { GroupQuery, GroupMutation } = require("./group");
var { TransactionQuery, TransactionMutation } = require("./transaction");
var {
  TransactionGroupDetailQuery,
  TransactionGroupDetailMutation,
} = require("./transactionGroupDetail");

const schemaComposer = new SchemaComposer();
schemaComposer.Query.addFields({
  ...UserQuery,
  ...FriendshipQuery,
  ...UserGroupQuery,
  ...GroupQuery,
  ...TransactionQuery,
  ...TransactionGroupDetailQuery,
});
schemaComposer.Mutation.addFields({
  ...UserMutation,
  ...FriendshipMutation,
  ...UserGroupMutation,
  ...GroupMutation,
  ...TransactionMutation,
  ...TransactionGroupDetailMutation,
});

exports.schema = schemaComposer.buildSchema();
