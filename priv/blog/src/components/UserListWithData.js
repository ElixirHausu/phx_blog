import React from "react";
import { gql, graphql } from "react-apollo";

import Avatar from "./Avatar";

const UserList = ({ data: { loading, error, users } }) => {
  if (loading) {
    return <div className="loading"></div>;
  }
  if (error) {
    return <p>{error.message}</p>;
  }

  return (
    <ul>
      {users.map(user => (
        <li key={user.id}>
          <Avatar image_url={user.avatar} />
          <span>{user.name}</span>
        </li>
      ))}
    </ul>
  );
};

const channelsListQuery = gql`
  query UserListQuery {
    users {
      id
      name
      avatar
    }
  }
`;

const UserListWithData = graphql(channelsListQuery)(UserList);

export default UserListWithData;
