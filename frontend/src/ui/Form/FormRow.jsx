import styled from "styled-components";

const StyledFormRow = styled.div`
  display: grid;
  align-items: center;
  grid-template-columns: 15rem 1fr;
  gap: 4rem;
  padding: 1rem 0 1.5rem 0;
  position: relative;

  /* &:first-child {
    padding-top: 0;
  } */

  &:last-child {
    padding-top: 2rem;
    display: flex;
    justify-content: end;
  }

  /* &:not(:last-child) {
  } */
`;

const Label = styled.label`
  font-weight: 500;
  font-size: 1.5rem;
`;

const Error = styled.span`
  font-size: 1.2rem;
  color: ${(props) => props.theme.colors.danger[100]};
  position: absolute;
  right: 0rem;
  bottom: -0.5rem;
`;

const FormRow = ({ label, error, children }) => {
  return (
    <StyledFormRow>
      {label && <Label htmlFor={children.props.id}>{label}</Label>}
      {children}
      {error && <Error>{error.message}</Error>}
    </StyledFormRow>
  );
};

export default FormRow;
