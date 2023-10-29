import styled from "styled-components";

const StyledButtonIconText = styled.button`
  background: #ccc;
  border: none;
  padding: 0.8rem 1rem;
  border-radius: ${(props) => props.theme.border.borderRadius.sm};
  transition: all 0.2s;
  display: flex;
  justify-content: space-between;
  align-items: center;
  font-weight: ${(props) => props.theme.fontWeight.semibold};
  background: ${(props) =>
    props.type ? props.theme.colors[props.type][100] : "none"};
  color: ${(props) => (props.type ? "#fff" : props.theme.colors.grey900)};
  font-size: 1.4rem;

  &:hover {
    background: ${(props) =>
      props.type ? props.theme.colors[props.type][700] : "none"};
  }

  &:focus {
    outline: none;
  }

  & svg {
    width: 2.2rem;
    height: 2.2rem;
    margin-right: 0.6rem;
  }
`;

const ButtonIconText = ({ icon, type, children, onClick }) => {
  return (
    <StyledButtonIconText type={type} onClick={onClick}>
      {icon}
      {children}
    </StyledButtonIconText>
  );
};

export default ButtonIconText;
