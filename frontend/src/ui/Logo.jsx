import styled from "styled-components";
import { useSettings } from "../features/settings/useSettings";
import demoLogo from "../assets/demo-logo.png";

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
  const { company_logo, company_name } = settings;
  return (
    <>
      <StyledLogo>
        <Img
          src={company_logo || demoLogo}
          alt={company_name || "Demo company"}
        />
      </StyledLogo>
    </>
  );
}

export default Logo;
