var GraphQLObjectType = require("graphql").GraphQLObjectType;
var GraphQLList = require("graphql").GraphQLList;
var userModel = require("../../models/user");
var userType = require("./UserType").UserType;

exports.UserQuery = new GraphQLObjectType({
  name: "Query",
  fields: () => {
    return {
      users: {
        type: new GraphQLList(userType),
        resolve: async () => {
          const books = await userModel.find();
          if (!books) {
            throw new Error("error while fetching data");
          }
          return books;
        },
      },
    };
  },
});
