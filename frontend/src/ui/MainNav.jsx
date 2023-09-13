import styled from "styled-components";
import { NavLink } from "react-router-dom";
import {
  HiOutlineWrenchScrewdriver,
  HiOutlineUserGroup,
  HiOutlineHome,
  HiOutlineSquare3Stack3D,
  HiOutlineUsers,
} from "react-icons/hi2";

const NavList = styled.ul`
  display: flex;
  flex-direction: column;
`;

const StyledNavLink = styled(NavLink)`
  &:link,
  &:visited {
    display: flex;
    align-items: center;
    gap: 1.2rem;
    font-size: 1.6rem;
    font-weight: 500;
    padding: 1rem 2.4rem;
    transition: all 0.3s;
    color: ${(props) => props.theme.baseColors.grey600};
  }

  /* This works because react-router places the active class on the active NavLink */
  &:hover,
  &:active,
  &.active:link,
  &.active:visited {
    background-color: ${(props) => props.theme.baseColors.grey50};
  }

  & svg {
    width: 2.4rem;
    height: 2.4rem;
    color: var(--color-grey-400);
    transition: all 0.3s;
  }

  &:hover svg,
  &:active svg,
  &.active:link svg,
  &.active:visited svg {
    color: ${(props) => props.theme.colors.primary[100]};
  }
`;

function MainNav() {
  return (
    <nav>
      <NavList>
        <li>
          <StyledNavLink to="/">
            <HiOutlineHome />
            <span>Home</span>
          </StyledNavLink>
        </li>
        <li>
          <StyledNavLink to="/clients">
            <HiOutlineUserGroup />
            <span>Clients</span>
          </StyledNavLink>
        </li>

        <li>
          <StyledNavLink to="/projects">
            <HiOutlineSquare3Stack3D />
            <span>Projects</span>
          </StyledNavLink>
        </li>
        <li>
          <StyledNavLink to="/tasks">
            <HiOutlineWrenchScrewdriver />
            <span>Tasks</span>
          </StyledNavLink>
        </li>
        <li>
          <StyledNavLink to="/users">
            <HiOutlineUsers />
            <span>Users</span>
          </StyledNavLink>
        </li>
      </NavList>
    </nav>
  );
}

export default MainNav;
