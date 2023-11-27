import React from "react";
import ActivitiesList from "./ActivitiesList";
import { formatDateTime } from "../../../utils/helpers";
import Tag from "../../../ui/Data/Tag";

const UsersList = ({ user }) => {
  return (
    <ActivitiesList.Item key={user.uid}>
      <span>
        <strong>{user.username}</strong>
      </span>
      <span>{user.role}</span>
      <span>{formatDateTime(user.last_login)}</span>
      <Tag type={user.refreshToken ? "online" : "offline"}>
        {user.refreshToken ? "online" : "offline"}
      </Tag>
    </ActivitiesList.Item>
  );
};

export default UsersList;
