import styled from "styled-components";
import Headline from "../../ui/Headline";

const FullArea = styled.div`
  display: flex;
  height: ${(props) => (props.size === "small" ? "25rem" : "50vh")};
  justify-content: center;
  align-items: center;
`;

function Empty({ resource, size }) {
  return (
    <FullArea size={size}>
      <Headline as="h3">No {resource} could be found. ⚠</Headline>
    </FullArea>
  );
}

export default Empty;
