import styled from "styled-components";
import Logout from "../features/authentication/Logout";
import { HiOutlineUser } from "react-icons/hi2";
import ButtonIcon from "./Buttons/ButtonIcon";
import { useNavigate } from "react-router-dom";

// import DarkModeToggle from "./DarkModeToggle";

const StyledHeaderMenu = styled.ul`
  display: flex;
  gap: 0.4rem;
`;

const StyledLinkIcon = styled.button`
  background: transparent;
  border: none;
  padding: 0.8rem 0rem;
  transition: all 0.2s;
  display: flex;
  justify-content: space-between;
  font-weight: ${(props) => props.theme.fontWeight.semibold};

  color: ${(props) => props.theme.colors.info[700]};
  font-size: 2rem;
`;

const HeaderMenu = () => {
  const navigate = useNavigate();

  return (
    <StyledHeaderMenu>
      <li>
        <StyledLinkIcon onClick={() => navigate("/account")}>
          <HiOutlineUser />
        </StyledLinkIcon>
      </li>
      <li>{/* <DarkModeToggle /> */}</li>
      <li>
        <Logout />
      </li>
    </StyledHeaderMenu>
  );
};

export default HeaderMenu;
