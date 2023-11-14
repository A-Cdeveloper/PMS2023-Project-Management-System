import styled from "styled-components";
import Button from "./Buttons/Button";
import Headline from "./Headline";
import ButtonGroup from "./Buttons/ButtonGroup";

const StyledExpirationModal = styled.div`
  width: 40rem;
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 1.7rem;

  & p {
    color: var(--color-grey-500);
    margin-bottom: 1.2rem;
  }
  & h3 {
    text-align: center;
    line-height: 1.4;
  }

  & h3 > span {
    display: block;
    font-size: 3rem;
  }
`;

function LoginExpirationModal({
  onCloseModal,
  counter,
  logout,
  extendSession,
}) {
  const conformActionHandler = () => {
    onCloseModal();
    extendSession();
  };

  return (
    <StyledExpirationModal>
      <Headline as="h3">
        You will be automatically logout<span>{counter}</span>
      </Headline>

      <ButtonGroup>
        <Button variation="secondary" size="medium" onClick={logout}>
          Logout
        </Button>

        <Button variation="info" size="medium" onClick={conformActionHandler}>
          Stay login
        </Button>
      </ButtonGroup>
    </StyledExpirationModal>
  );
}

export default LoginExpirationModal;
