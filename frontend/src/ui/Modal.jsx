import { cloneElement, createContext, useContext, useState } from "react";
import { createPortal } from "react-dom";

import { HiXMark } from "react-icons/hi2";
import styled from "styled-components";

const StyledModal = styled.div`
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background-color: #fff;
  border-radius: ${(props) => props.theme.border.borderRadius.md};
  box-shadow: ${(props) => props.theme.shadow.sm};
  padding: 3.2rem 6rem 3.2rem 3rem;
  transition: all 0.5s;
`;

const Overlay = styled.div`
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100vh;
  background-color: rgba(${(props) => props.theme.backdrop}, 0.1);
  backdrop-filter: blur(4px);
  z-index: 1000;
  transition: all 0.5s;
`;

const Button = styled.button`
  background: none;
  border: none;
  padding: 0.4rem;
  border-radius: ${(props) => props.theme.border.borderRadius.sm};
  transform: translateX(0.8rem);
  transition: all 0.2s;
  position: absolute;
  top: 1rem;
  right: 2rem;
  background-color: ${(props) => props.theme.baseColors.grey100};
  height: 3.2rem;

  &:hover {
    background-color: ${(props) => props.theme.baseColors.grey200};
    & > svg {
      fill: ${(props) => props.theme.baseColors.grey500};
    }
  }

  & svg {
    width: 2.4rem;
    height: 2.4rem;
    /* Sometimes we need both */
    fill: ${(props) => props.theme.baseColors.grey400};
    stroke: ${(props) => props.theme.baseColors.grey400};
    color: ${(props) => props.theme.baseColors.grey400};
  }
`;

const ModalContext = createContext();

const Modal = ({ children }) => {
  const [openWindow, setOpenWindow] = useState(null);

  const openModal = (name) => {
    setOpenWindow(name);
  };

  const closeModal = () => {
    setOpenWindow(null);
  };

  return (
    <ModalContext.Provider
      value={{ openWindow, setOpenWindow, openModal, closeModal }}
    >
      {children}
    </ModalContext.Provider>
  );
};

const OpenButton = ({ children, opens }) => {
  const { openModal } = useContext(ModalContext);
  return cloneElement(children, { onClick: () => openModal(opens) });
};

const Window = ({ children, name }) => {
  const { closeModal, openWindow } = useContext(ModalContext);
  //const { refEl } = useOutsideClick(closeModal);

  if (openWindow !== name) return;
  return createPortal(
    <Overlay>
      <StyledModal>
        {cloneElement(children, { onCloseModal: closeModal })}
        <Button onClick={closeModal}>
          <HiXMark />
        </Button>
      </StyledModal>
    </Overlay>,
    document.body
  );
};

Modal.OpenButton = OpenButton;
Modal.Window = Window;

export default Modal;
