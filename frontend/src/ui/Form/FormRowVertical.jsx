import styled from "styled-components";

const StyledFormRow = styled.div`
  display: flex;
  flex-direction: column;
  width: 35rem;
  margin: 2rem auto;

  /* &:first-child {
    padding-top: 0;
  } */

  /* &:not(:last-child) {
  } */
`;

const Label = styled.label`
  font-weight: ${(props) => props.theme.fontWeight.bold};
  font-size: 1.5rem;
  margin-bottom: 0.7rem;
`;

const Error = styled.span`
  font-size: 1.2rem;
  color: ${(props) => props.theme.colors.danger[100]};
  position: absolute;
  right: 0rem;
  bottom: -0.5rem;
`;

const FormRowVertical = ({ label, error, children }) => {
  return (
    <StyledFormRow>
      {label && <Label htmlFor={children.props.id}>{label}</Label>}
      {children}
      {error && <Error>{error.message}</Error>}
    </StyledFormRow>
  );
};

export default FormRowVertical;
