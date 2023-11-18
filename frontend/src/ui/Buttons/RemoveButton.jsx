import styled from "styled-components";
import { HiXMark } from "react-icons/hi2";

const StyledRemoveButton = styled.button`
  background-color: ${(props) => props.theme.colors.danger[100]};
  border: none;
  padding: 0.3rem;
  border-radius: 50%;
  text-align: center;
  transform: translateX(0.8rem);
  position: absolute;
  top: 0.5rem;
  left: -0.5rem;
  width: 2.3rem;
  height: 2.3rem;

  &:focus,
  &:active {
    outline: none;
  }

  &:hover {
    background-color: ${(props) => props.theme.colors.danger[700]};
  }

  & svg {
    width: 1.6rem;
    height: 1.6rem;
    /* Sometimes we need both */
    fill: white;
    stroke: white;
    color: white;
  }
`;

const RemoveButton = ({ onClick }) => {
  return (
    <StyledRemoveButton
      onClick={(e) => {
        e.preventDefault();
        onClick();
      }}
    >
      <HiXMark />
    </StyledRemoveButton>
  );
};

export default RemoveButton;
