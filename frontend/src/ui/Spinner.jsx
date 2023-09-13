import styled, { keyframes } from "styled-components";

const rotate = keyframes`
  to {
    transform: rotate(1turn)
  }
`;

const Spinner = styled.div`
  margin: 4.8rem auto;

  width: 6rem;
  aspect-ratio: 1;
  border-radius: 50%;
  background: radial-gradient(
        farthest-side,
        ${(props) => props.theme.colors.primary[700]} 94%,
        #0000
      )
      top/10px 10px no-repeat,
    conic-gradient(#0000 30%, ${(props) => props.theme.colors.primary[100]});
  -webkit-mask: radial-gradient(farthest-side, #0000 calc(100% - 10px), #000 0);
  animation: ${rotate} 1.5s infinite linear;
`;

export default Spinner;
