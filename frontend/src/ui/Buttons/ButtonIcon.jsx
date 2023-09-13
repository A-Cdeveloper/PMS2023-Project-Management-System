import styled from "styled-components";

const StyledButtonIcon = styled.button`
  background: #ccc;
  border: none;
  padding: 0.8rem 1rem;
  border-radius: ${(props) => props.theme.border.borderRadius.sm};
  transition: all 0.2s;
  display: flex;
  justify-content: space-between;
  font-weight: ${(props) => props.theme.fontWeight.semibold};
  background: ${(props) =>
    props.type ? props.theme.colors[props.type][100] : "none"};
  color: ${(props) => (props.type ? "#fff" : props.theme.colors.grey900)};

  &:hover {
    background: ${(props) =>
      props.type ? props.theme.colors[props.type][700] : "none"};
  }

  & svg {
    width: 2.2rem;
    height: 2.2rem;
    margin-right: 0.6rem;
  }
`;

const ButtonIcon = ({ icon, type, children, onClick }) => {
  return (
    <StyledButtonIcon type={type} onClick={onClick}>
      {icon}
      {children}
    </StyledButtonIcon>
  );
};

export default ButtonIcon;
