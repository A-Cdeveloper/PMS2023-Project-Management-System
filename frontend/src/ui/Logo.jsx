import styled from "styled-components";
import Headline from "./Headline";

const StyledLogo = styled.div`
  text-align: center;

  object-fit: cover;

  & h2 {
    font-size: 1.8rem;
  }
`;

const Img = styled.img`
  height: auto;
  width: 70%;
  /* width: auto; */
`;

function Logo() {
  return (
    <>
      <StyledLogo>
        <Img src="/logo.png" alt="Logo" />
      </StyledLogo>
    </>
  );
}

export default Logo;
