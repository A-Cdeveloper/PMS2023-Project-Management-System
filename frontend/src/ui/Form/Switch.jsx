import { styled } from "styled-components";

const Label = styled.label`
  display: flex;
  align-items: center;
  gap: 10px;
  cursor: pointer;
`;
const StyledSwitch = styled.div`
  width: 50px;
  height: 24px;
  background: #b3b3b3;
  border-radius: 32px;
  position: relative;
  padding: 4px;
  transition: background 0.2s ease-in;

  &::before {
    content: "";
    width: 16px;
    height: 16px;
    position: absolute;
    background: #fff;
    border-radius: 50%;
    left: 4px;
    transition: transform 0.2s ease-in;
  }
`;

const Input = styled.input.attrs({ type: "checkbox" })`
  display: none;

  &:checked + ${StyledSwitch} {
    background: ${(props) => props.theme.colors.info[700]};
    &::before {
      transform: translate(26px, 0);
    }
  }
`;

const Switch = ({ checked, onChange }) => {
  return (
    <Label>
      <Input checked={checked} onChange={onChange} />
      <StyledSwitch />
    </Label>
  );
};

export default Switch;
