import { styled } from "styled-components";

const StyledSwitch = styled.input.attrs({ type: "checkbox" })`
  height: 0;
  width: 0;
  visibility: hidden;
  &:checked + label {
    background: #bada55;
  }
  &:checked + label:after {
    left: calc(100% - 5px);
    transform: translateX(-100%);
  }
`;

const Label = styled.label`
  cursor: pointer;
  text-indent: -9999px;
  width: 60px;
  height: 30px;
  background: grey;
  display: block;
  border-radius: 100px;
  position: relative;
  &:after {
    content: "";
    position: absolute;
    top: 5px;
    left: 5px;
    width: 20px;
    height: 20px;
    background: #fff;
    border-radius: 90px;
    transition: 0.3s;
  }
  &:active:after {
    width: 130px;
  }
`;

const Switch = () => {
  return (
    <>
      <StyledSwitch />
      <Label>Toggle</Label>
    </>
  );
};

export default Switch;
