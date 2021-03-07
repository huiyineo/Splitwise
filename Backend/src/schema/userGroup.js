var { UserGroup, UserGroupTC } = require("../models/userGroup");

const UserGroupQuery = {
  userGroupById: UserGroupTC.getResolver("findById"),
  userGroupByIds: UserGroupTC.getResolver("findByIds"),
  userGroupOne: UserGroupTC.getResolver("findOne"),
  userGroupMany: UserGroupTC.getResolver("findMany"),
  userGroupCount: UserGroupTC.getResolver("count"),
  userGroupConnection: UserGroupTC.getResolver("connection"),
  userGroupPagination: UserGroupTC.getResolver("pagination"),
};

const UserGroupMutation = {
  userGroupCreateOne: UserGroupTC.getResolver("createOne"),
  userGroupCreateMany: UserGroupTC.getResolver("createMany"),
  userGroupUpdateById: UserGroupTC.getResolver("updateById"),
  userGroupUpdateOne: UserGroupTC.getResolver("updateOne"),
  userGroupUpdateMany: UserGroupTC.getResolver("updateMany"),
  userGroupRemoveById: UserGroupTC.getResolver("removeById"),
  userGroupRemoveOne: UserGroupTC.getResolver("removeOne"),
  userGroupRemoveMany: UserGroupTC.getResolver("removeMany"),
};

module.exports = {
  UserGroupQuery,
  UserGroupMutation,
};
