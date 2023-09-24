import { styled } from "styled-components";

const Select = styled.select`
  border: 1px solid ${(props) => props.theme.baseColors.grey200};
  background-color: #fff;
  border-radius: ${(props) => props.theme.border.borderRadius.sm};
  box-shadow: ${(props) => props.theme.shadow.xs};
  padding: 0.5rem 1.2rem;
  &:focus {
    outline: 1px solid ${(props) => props.theme.baseColors.grey300};
  }
`;

export default Select;
