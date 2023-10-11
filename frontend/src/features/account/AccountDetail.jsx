import { useQueryClient } from "@tanstack/react-query";
import styled from "styled-components";

import { useMoveBack } from "../../hooks/useMoveBack";
import { useCurrentUserTokens } from "../../context/authContext";
import { useSingleUser } from "./useSingleUser";
import { formatDateTime } from "../../utils/helpers";

import Headline from "../../ui/Headline";
import ButtonText from "../../ui/Buttons/ButtonText";
import Row from "../../ui/Row";
import Tag from "../../ui/Data/Tag";
import {
  DataDetailsContainer,
  DataBox,
  DataBoxTitle,
  DataBoxContent,
} from "../../ui/Data/DataDetails";

import ChangePassword from "./ChangePassword";
import ChangeProfileImage from "./ChangeProfileImage";

const ProfileImage = styled.img`
  display: block;
  width: 13rem;
  height: 13rem;
  aspect-ratio: 1;
  object-fit: cover;
  object-position: center;
  margin-bottom: 2rem;
`;

const AccountDetail = () => {
  const moveBack = useMoveBack();

  const {
    user: { uid: user_id },
  } = useCurrentUserTokens();
  const { user: userSingle = {} } = useSingleUser();

  const queryClient = useQueryClient();
  const userCurrent = queryClient.getQueryData(["user", user_id])
    ? queryClient.getQueryData(["user", user_id])
    : userSingle;

  const {
    uid,
    user_avatar,
    first_name,
    last_name,
    username,
    email,
    created_date,
    last_login,
    role,
    verified,
  } = userCurrent;

  return (
    <>
      <Row type="horizontal">
        <Row type="horizontal" style={{ paddingBottom: 0 }}>
          <Headline as="h2">
            {first_name} {last_name}
          </Headline>
          &nbsp;&nbsp;
          <Tag type="online">{role}</Tag>
        </Row>
        <ButtonText onClick={moveBack}> ← Back</ButtonText>
      </Row>
      <Row type="horizontal">
        <Row type="horizontal">
          <DataDetailsContainer>
            <DataBox>
              <DataBoxContent
                style={{ flexDirection: "column", alignItems: "start" }}
              >
                <ProfileImage
                  src={
                    user_avatar
                      ? `user-images/${user_avatar}`
                      : "default-user.jpg"
                  }
                  alt={`profile image for ${first_name}`}
                />
                <ChangeProfileImage />
              </DataBoxContent>
            </DataBox>
          </DataDetailsContainer>
          <DataDetailsContainer>
            <DataBox>
              <DataBoxTitle>Username</DataBoxTitle>
              <DataBoxContent>{username}</DataBoxContent>
            </DataBox>
            <DataBox>
              <DataBoxTitle>Email</DataBoxTitle>
              <DataBoxContent>{email}</DataBoxContent>
            </DataBox>
          </DataDetailsContainer>

          <DataDetailsContainer>
            <DataBox>
              <DataBoxTitle>Created date:</DataBoxTitle>
              <DataBoxContent>{formatDateTime(created_date)}</DataBoxContent>
            </DataBox>
            <DataBox>
              <DataBoxTitle>Last login:</DataBoxTitle>
              <DataBoxContent>{formatDateTime(last_login)}</DataBoxContent>
            </DataBox>
          </DataDetailsContainer>
        </Row>

        <Row type="horizontal">
          <DataDetailsContainer>
            <ChangePassword />
          </DataDetailsContainer>
        </Row>
      </Row>
    </>
  );
};

export default AccountDetail;
