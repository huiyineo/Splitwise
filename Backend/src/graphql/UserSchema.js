var GraphQLSchema = require("graphql").GraphQLSchema;
var GraphQLObjectType = require("graphql").GraphQLObjectType;
var query = require("./queries/UserQuery").UserQuery;
var mutation = require("./mutations/userMutations");

exports.UserSchema = new GraphQLSchema({
  query: query,
  mutation: new GraphQLObjectType({
    name: "Mutation",
    fields: mutation,
  }),
});
