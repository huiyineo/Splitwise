var GraphQLNonNull = require("graphql").GraphQLNonNull;
var GraphQLString = require("graphql").GraphQLString;
var userType = require("../queries/UserType").UserType;
var userModel = require("../../models/user");

exports.updateUser = {
  type: userType,
  args: {
    id: {
      type: new GraphQLNonNull(GraphQLString),
    },
    name: {
      type: new GraphQLNonNull(GraphQLString),
    },
    // email: {
    //   type: new GraphQLNonNull(GraphQLString),
    // },
  },
  resolve: async (root, args) => {
    const updatedUser = await userModel.findByIdAndUpdate(args.id, args, {
      new: true,
    });
    if (!updatedUser) {
      throw new Error("Error");
    }
    return updatedUser;
  },
};
