import { styled } from "styled-components";
import HeaderMenu from "./HeaderMenu";
import UserAvatar from "../features/account/UserAvatar";

const StyledHeader = styled.header`
  width: 100%;
  background: white;
  border-bottom: 1px solid ${(props) => props.theme.baseColors.grey100};
  padding: 1.5rem 1rem;
  display: flex;
  justify-content: flex-end;
  align-items: center;
  gap: 2rem;
`;

const Header = () => {
  return (
    <StyledHeader>
      <UserAvatar />
      <HeaderMenu />
    </StyledHeader>
  );
};

export default Header;
