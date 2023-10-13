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
      padding: 0.5rem 1rem;
    `}

  ${(props) =>
    props.type === "datetime-local" &&
    css`
      box-shadow: none;
      font-size: 1.4rem;
      padding: 0.5rem 0.5rem;
    `}

    ${(props) =>
    props.type === "file" &&
    css`
      box-shadow: none;
      border: none;
      padding: 0;
      &::file-selector-button {
        font-weight: bold;
        color: white;
        background: ${(props) => props.theme.baseColors.grey600};
        padding: 0.5rem 1rem;
        border: none;
        border-radius: 5px;
        margin-right: 2rem;
        font-size: 1.3rem;
        cursor: pointer;
      }
    `}
`;

export default Input;
