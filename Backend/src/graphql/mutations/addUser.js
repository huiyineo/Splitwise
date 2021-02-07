var GraphQLNonNull = require("graphql").GraphQLNonNull;
var GraphQLString = require("graphql").GraphQLString;
var userType = require("../queries/UserType").UserType;
var userModel = require("../../models/user");

exports.addUser = {
  type: userType,
  args: {
    name: {
      type: new GraphQLNonNull(GraphQLString),
    },
    email: {
      type: new GraphQLNonNull(GraphQLString),
    },
  },
  resolve: async (root, args) => {
    const uModel = new userModel(args);
    const newUser = await uModel.save();
    if (!newUser) {
      throw new Error("error");
    }
    return newUser;
  },
};
