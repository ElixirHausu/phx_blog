import React from "react";

const Avatar = ({ image_url }) => (
  <figure className="avatar avatar-lg">
    <img src={image_url} alt="avatar" />
  </figure>
);

export default Avatar;
