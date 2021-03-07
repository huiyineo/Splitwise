var mongoose = require("mongoose");
var Schema = mongoose.Schema;
var { composeWithMongoose } = require("graphql-compose-mongoose");

const GroupSchema = new Schema(
  {
    name: {
      type: String,
      trim: true,
      required: true,
    },
  },
  {
    collection: "groups",
  }
);

const Group = mongoose.model("Group", GroupSchema);
const GroupTC = composeWithMongoose(Group);

module.exports = {
  Group,
  GroupTC,
};
