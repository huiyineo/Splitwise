var mongoose = require("mongoose");
var Schema = mongoose.Schema;
var { composeWithMongoose } = require("graphql-compose-mongoose");

const UserSchema = new Schema(
  {
    name: {
      type: String,
      trim: true,
      required: true,
    },
    email: {
      type: String,
      lowercase: true,
      trim: true,
      unique: true,
      required: true,
    },
  },
  {
    collection: "users",
  }
);

const User = mongoose.model("User", UserSchema);
const UserTC = composeWithMongoose(User);

module.exports = {
  User,
  UserTC,
};
