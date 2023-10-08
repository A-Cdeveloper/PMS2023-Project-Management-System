import styled from "styled-components";
import defaultAvatar from "/default-user.jpg";
import { useCurrentUser } from "../../context/authContext";
// import { useUser } from "./useUser";

const StyledUserAvatar = styled.div`
  display: flex;
  gap: 1.2rem;
  align-items: center;
  font-weight: 500;
  font-size: 1.4rem;
  color: var(--color-grey-600);
`;

const Avatar = styled.img`
  display: block;
  width: 4rem;
  width: 3.6rem;
  aspect-ratio: 1;
  object-fit: cover;
  object-position: center;
  border-radius: 50%;
  outline: 2px solid var(--color-grey-100);
`;

const UserAvatar = () => {
  const { user } = useCurrentUser();

  // current user
  // const {
  //   user: {
  //     user_metadata: { avatar, fullName },
  //   },
  // } = useUser();

  let uAvatar = (
    <>
      <Avatar src={defaultAvatar} alt={`Avatar for`} />
      <span>
        {user.first_name} {user.last_name}
      </span>
    </>
  );

  // if (userAavatar || userFullName) {
  //   uAvatar = (
  //     <Avatar
  //       src={userAavatar || "default-user.jpg"}
  //       alt={`Avatar for ${userFullName}`}
  //     />
  //   );
  // }

  return <StyledUserAvatar>{uAvatar}</StyledUserAvatar>;
};

export default UserAvatar;
