import { createPortal } from "react-dom";
import styled from "styled-components";
import Headline from "./Headline";
import Button from "./Buttons/Button";
import ReactRouterPrompt from "react-router-prompt";

const StyledModal = styled.div`
  position: fixed;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background-color: #fff;
  border-radius: ${(props) => props.theme.border.borderRadius.md};
  box-shadow: ${(props) => props.theme.shadow.sm};
  padding: 2.5rem;
  display: flex;
  flex-direction: column;
  gap: 2rem;
  transition: all 0.5s;

  & div {
    display: flex;
    justify-content: flex-end;
    gap: 1.2rem;
  }
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

const PromptModal = ({ formStatus }) => {
  return createPortal(
    <ReactRouterPrompt when={formStatus}>
      {({ isActive, onConfirm, onCancel }) =>
        isActive && (
          <Overlay>
            <StyledModal>
              <Headline as="h3">Do you really want to leave?</Headline>
              All your data will be lost!!!
              <div>
                <Button variation="secondary" size="medium" onClick={onCancel}>
                  Cancel
                </Button>
                <Button variation="danger" size="medium" onClick={onConfirm}>
                  Confirm
                </Button>
              </div>
            </StyledModal>
          </Overlay>
        )
      }
    </ReactRouterPrompt>,
    document.body
  );
};

export default PromptModal;
