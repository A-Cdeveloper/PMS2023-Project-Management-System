import styled from "styled-components";
import Button from "./Buttons/Button";
import Headline from "./Headline";

const StyledConfirmModal = styled.div`
  width: 40rem;
  display: flex;
  flex-direction: column;
  gap: 1.2rem;

  & p {
    color: var(--color-grey-500);
    margin-bottom: 1.2rem;
  }

  & div {
    display: flex;
    justify-content: flex-end;
    gap: 1.2rem;
  }
`;

function ConfirmModal({
  resourceName,
  operation,
  onConfirm,
  connectedResurces,
  disabled,
  onCloseModal,
}) {
  const conformActionHandler = () => {
    onConfirm();
    onCloseModal();
  };

  let message = (
    <p>
      {operation === "delete"
        ? `Are you sure you want to delete this ${resourceName} permanently? This
  action cannot be undone.`
        : `Are you sure you want to duplicate this ${resourceName}?`}
    </p>
  );

  if (resourceName === "account") {
    message = (
      <>
        <p>
          Are you sure you want to delete your account permanently? <br />
          This action cannot be undone.
        </p>
      </>
    );
  }

  if (resourceName === "system") {
    message = (
      <>
        <p>
          Are you sure you want to reset application? <br />
          All your data will be deleted! <br />
          This action cannot be undone.
        </p>
      </>
    );
  }

  if (connectedResurces) {
    message = (
      <>
        <p>
          {`This ${resourceName} has connected ${
            resourceName === "project" ? "tasks" : "projects"
          }.`}
          <br />
          You must remove them before delete!
        </p>
      </>
    );
  }

  return (
    <StyledConfirmModal>
      <Headline as="h3">
        {operation === "delete" && "Delete"}
        {operation === "duplicate" && "Duplicate"}
        {operation === "" && "Reset "}
        {resourceName}
      </Headline>
      {message}

      <div>
        <Button
          variation="secondary"
          size="medium"
          disabled={disabled}
          onClick={onCloseModal}
        >
          Cancel
        </Button>
        {!connectedResurces && (
          <Button
            variation={operation === "delete" ? "danger" : "info"}
            size="medium"
            disabled={disabled}
            onClick={conformActionHandler}
          >
            {operation === "delete" && "Delete"}
            {operation === "duplicate" && "Duplicate"}
            {operation === "" && "Reset all"}
          </Button>
        )}
      </div>
    </StyledConfirmModal>
  );
}

export default ConfirmModal;
