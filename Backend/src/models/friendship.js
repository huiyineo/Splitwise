var mongoose = require("mongoose");
var Schema = mongoose.Schema;
var { composeWithMongoose } = require("graphql-compose-mongoose");

const FriendshipSchema = new Schema(
  {
    user1: {
      type: String,
      required: true,
    },
    user2: {
      type: String,
      required: true,
    },
  },
  {
    collection: "friendships",
  }
);

const Friendship = mongoose.model("Friendship", FriendshipSchema);
const FriendshipTC = composeWithMongoose(Friendship);

module.exports = {
  Friendship,
  FriendshipTC,
};
