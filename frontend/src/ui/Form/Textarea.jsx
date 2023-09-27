import styled from "styled-components";

const Textarea = styled.textarea`
  font-size: 1.4rem;
  padding: 0.8rem 1.2rem;
  border: 1px solid ${(props) => props.theme.baseColors.grey200};
  border-radius: 5px;
  background-color: #fff;
  box-shadow: ${(props) => props.theme.shadow.xs};
  width: 100%;
  height: 7rem;
  &:focus {
    outline: 1px solid ${(props) => props.theme.baseColors.grey300};
  }
`;

export default Textarea;
