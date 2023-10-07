import { styled, css } from "styled-components";

const Input = styled.input`
  border: 1px solid ${(props) => props.theme.baseColors.grey200};
  background-color: #fff;
  border-radius: ${(props) => props.theme.border.borderRadius.sm};
  box-shadow: ${(props) => props.theme.shadow.xs};
  padding: 0.7rem 1.2rem;
  &:focus {
    outline: 1px solid ${(props) => props.theme.baseColors.grey300};
  }

  ${(props) =>
    props.type === "date" &&
    css`
      box-shadow: none;
      font-size: 1.4rem;
      padding: 0rem 0.5rem;
    `}

  ${(props) =>
    props.type === "datetime-local" &&
    css`
      box-shadow: none;
      font-size: 1.4rem;
      padding: 0rem 0.5rem;
    `}
`;

export default Input;
