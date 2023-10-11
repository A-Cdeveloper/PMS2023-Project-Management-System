import styled from "styled-components";

const StyledForm = styled.form`
  //padding: 1rem 1rem 0 1rem;
  // background-color: #fff;
  border: 1px solid var(--color-grey-100);
  border-radius: var(--border-radius-md);
  font-size: 1.4rem;
`;

const Form = ({ children, onSubmit }) => {
  return <StyledForm onSubmit={onSubmit}>{children}</StyledForm>;
};

export default Form;
