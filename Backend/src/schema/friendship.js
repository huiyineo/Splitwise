var { Friendship, FriendshipTC } = require("../models/friendship");

const FriendshipQuery = {
  friendshipById: FriendshipTC.getResolver("findById"),
  friendshipByIds: FriendshipTC.getResolver("findByIds"),
  friendshipOne: FriendshipTC.getResolver("findOne"),
  friendshipMany: FriendshipTC.getResolver("findMany"),
  friendshipCount: FriendshipTC.getResolver("count"),
  friendshipConnection: FriendshipTC.getResolver("connection"),
  friendshipPagination: FriendshipTC.getResolver("pagination"),
};

const FriendshipMutation = {
  friendshipCreateOne: FriendshipTC.getResolver("createOne"),
  friendshipCreateMany: FriendshipTC.getResolver("createMany"),
  friendshipUpdateById: FriendshipTC.getResolver("updateById"),
  friendshipUpdateOne: FriendshipTC.getResolver("updateOne"),
  friendshipUpdateMany: FriendshipTC.getResolver("updateMany"),
  friendshipRemoveById: FriendshipTC.getResolver("removeById"),
  friendshipRemoveOne: FriendshipTC.getResolver("removeOne"),
  friendshipRemoveMany: FriendshipTC.getResolver("removeMany"),
};

module.exports = {
  FriendshipQuery,
  FriendshipMutation,
};
