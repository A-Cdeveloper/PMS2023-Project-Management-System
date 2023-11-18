import styled from "styled-components";
import Headline from "../../ui/Headline";

const FullArea = styled.div`
  display: flex;
  height: 50vh;
  justify-content: center;
  align-items: center;
`;

function Error({ message }) {
  return (
    <FullArea>
      <Headline as="h3">{message} ⚠</Headline>
    </FullArea>
  );
}

export default Error;
