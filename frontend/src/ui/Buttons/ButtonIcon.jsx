import styled from "styled-components";

const StyledButtonIcon = styled.button`
  background: none;
  border: none;
  border-radius: ${(props) => props.theme.border.borderRadius.sm};
  transition: all 0.2s;
  display: flex;

  &:focus {
    outline: none;
  }

  & svg {
    width: 1.7rem;
    height: 1.7rem;
  }
`;

const ButtonIcon = ({ icon, onClick }) => {
  return <StyledButtonIcon onClick={onClick}>{icon}</StyledButtonIcon>;
};

export default ButtonIcon;
