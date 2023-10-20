import styled, { css } from "styled-components";

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

  ${(props) =>
    props.errorposition === "start" &&
    css`
      left: 0rem;
    `}
`;

const StyledFormRow = styled.div`
  display: grid;
  align-items: center;
  grid-template-columns: 15rem 1fr;
  gap: 4rem;
  padding: 1rem 0 1.5rem 0;
  position: relative;

  &:last-child {
    padding-top: 2rem;
    display: flex;
    justify-content: end;
  }

  ${(props) =>
    props.type === "flex" &&
    css`
      display: flex;
      flex-direction: column;
      gap: 0.5rem;
      align-items: flex-start;
    `}

  ${(props) =>
    props.type === "nospace" &&
    css`
      padding: 0;

      &:last-child {
        padding-top: 0rem;
      }

      ${Error} {
        position: relative;
      }
    `}
`;

const FormRow = ({ label, error, children, type, errorposition }) => {
  return (
    <StyledFormRow type={type}>
      {label && <Label htmlFor={children.props.id}>{label}</Label>}
      {children}
      {error && <Error errorposition={errorposition}>{error.message}</Error>}
    </StyledFormRow>
  );
};

export default FormRow;
