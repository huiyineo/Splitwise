var mongoose = require("mongoose");
var Schema = mongoose.Schema;
var { composeWithMongoose } = require("graphql-compose-mongoose");

const UserGroupSchema = new Schema(
  {
    UserId: {
      type: String,
      required: true,
    },
    GroupId: {
      type: String,
      required: true,
    },
  },
  {
    collection: "userGroups",
  }
);

const UserGroup = mongoose.model("UserGroup", UserGroupSchema);
const UserGroupTC = composeWithMongoose(UserGroup);

module.exports = {
  UserGroup,
  UserGroupTC,
};
