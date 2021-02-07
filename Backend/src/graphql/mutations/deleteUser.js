var GraphQLNonNull = require("graphql").GraphQLNonNull;
var GraphQLString = require("graphql").GraphQLString;
var userType = require("../queries/UserType").UserType;
var userModel = require("../../models/user");

exports.deleteUser = {
  type: userType,
  args: {
    id: {
      type: new GraphQLNonNull(GraphQLString),
    },
  },
  resolve: async (root, args) => {
    const removedUser = await userModel.findByIdAndRemove(args.id);
    if (!removedUser) {
      throw new Error("error");
    }
    return removedUser;
  },
};
