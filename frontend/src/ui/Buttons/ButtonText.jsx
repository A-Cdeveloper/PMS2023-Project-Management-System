import styled from "styled-components";

const ButtonText = styled.button`
  color: ${(props) => props.theme.baseColors.grey700};
  font-weight: ${(props) => props.theme.fontWeight.semibold};
  text-align: center;
  transition: all 0.3s;
  background: none;
  border: none;

  &:hover,
  &:active,
  &:focus {
    color: ${(props) => props.theme.colors.primary[700]};
    outline: none;
  }
`;

export default ButtonText;
