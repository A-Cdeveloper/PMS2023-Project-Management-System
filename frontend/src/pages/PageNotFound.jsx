import styled from "styled-components";
import Headline from "../ui/Headline";
import Button from "../ui/Buttons/Button";

import { useMoveBack } from "../hooks/useMoveBack";

const StyledPageNotFound = styled.main`
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 4.8rem;
`;

const Box = styled.div`
  /* box */
  text-align: center;

  & h1 {
    margin-bottom: 3.2rem;
  }
`;

const PageNotFound = () => {
  const moveBack = useMoveBack();

  return (
    <StyledPageNotFound>
      <Box>
        <Headline as="h1">
          The page you are looking for could not be found 😢
        </Headline>
        <Button variation="danger" size="large" onClick={moveBack}>
          &larr; Go back
        </Button>
      </Box>
    </StyledPageNotFound>
  );
};

export default PageNotFound;
