import { createContext, useContext, useState } from "react";
import { createPortal } from "react-dom";
import { HiEllipsisVertical } from "react-icons/hi2";
import styled from "styled-components";
import useOutsideClick from "../hooks/useOutsideClick";
// import useOutsideClick from "../hooks/useOutsideClick";

const Menu = styled.div`
  display: flex;
  align-items: center;
  justify-content: flex-end;
`;

const StyledToggle = styled.button`
  background: none;
  border: none;
  padding: 0.4rem;
  border-radius: ${(props) => props.theme.border.borderRadius.sm};
  transform: translateX(0.8rem);
  transition: all 0.2s;

  &:active,
  &:focus {
    outline: none;
  }

  & svg {
    width: 2.4rem;
    height: 2.4rem;
    color: ${(props) => props.theme.baseColors.grey500};
    &:hover {
      color: ${(props) => props.theme.baseColors.grey800};
    }
  }
`;

const StyledList = styled.ul`
  position: fixed;

  background-color: #fff;
  box-shadow: ${(props) => props.theme.shadow.xs};
  border-radius: ${(props) => props.theme.border.borderRadius.sm};

  right: ${(props) => props.position.x}px;
  top: ${(props) => props.position.y}px;
`;

const StyledButton = styled.button`
  width: 100%;
  text-align: left;
  background: none;
  border: none;
  padding: 1rem 2.5rem;
  font-size: 1.4rem;
  color: ${(props) => props.theme.baseColors.grey600};
  transition: all 0.2s;

  display: flex;
  align-items: center;
  gap: 1rem;

  &:hover {
    background-color: ${(props) => props.theme.baseColors.grey50};
  }

  & svg {
    width: 1.6rem;
    height: 1.6rem;
    color: var(--color-grey-400);
    transition: all 0.3s;
  }
`;

/************************* */

const MenuContext = createContext();

const Menus = ({ children }) => {
  const [openId, setOpenId] = useState("");
  const [position, setPosition] = useState({ x: 0, y: 0 });

  const open = (id) => {
    setOpenId(id);
  };

  const close = () => {
    setOpenId("");
  };

  return (
    <MenuContext.Provider
      value={{ openId, open, close, position, setPosition }}
    >
      <Menu>{children}</Menu>
    </MenuContext.Provider>
  );
};

/*/******************/
const Toggle = ({ id }) => {
  const { openId, open, close, setPosition } = useContext(MenuContext);

  const handleClick = (e) => {
    // console.log("CLICK");
    e.stopPropagation();
    openId !== "" && openId === id ? close() : open(id);
    const cords = e.target.closest("button").getBoundingClientRect();

    setPosition({
      x: window.innerWidth - cords.width - cords.x + 10,
      y: cords.y + cords.height,
    });
  };

  return (
    <StyledToggle onClick={handleClick}>
      <HiEllipsisVertical />
    </StyledToggle>
  );
};
/*/******************/
const List = ({ id, children }) => {
  const { openId, close, position } = useContext(MenuContext);

  const { refEl } = useOutsideClick(() => {
    // console.log("CLICK OUTSIDE");
    close();
  }, true);

  if (openId !== id) return null;
  return createPortal(
    <StyledList position={position} ref={refEl}>
      {children}
    </StyledList>,
    document.body
  );
};
/*/******************/
const Button = ({ children, icon, onClick, onMouseOver }) => {
  const { close } = useContext(MenuContext);

  const handleClick = () => {
    onClick?.();
    close();
  };

  return (
    <li>
      <StyledButton onClick={handleClick} onMouseOver={onMouseOver}>
        {icon}
        {children}
      </StyledButton>
    </li>
  );
};

Menus.Menu = Menu;
Menus.Toggle = Toggle;
Menus.List = List;
Menus.Button = Button;

export default Menus;
