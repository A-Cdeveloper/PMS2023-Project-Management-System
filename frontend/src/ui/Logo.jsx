import styled from "styled-components";
import { useSettings } from "../features/settings/useSettings";

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
  const { settings = {} } = useSettings();
  console.log(settings);
  return (
    <>
      <StyledLogo>
        <Img src="/logo.png" alt="Logo" />
      </StyledLogo>
    </>
  );
}

export default Logo;
