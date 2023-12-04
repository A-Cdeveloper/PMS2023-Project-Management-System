import styled from "styled-components";
import { useSettings } from "../features/settings/useSettings";
import demoLogo from "../assets/demo-logo.png";

const StyledLogo = styled.div`
  text-align: ${(props) => (props.align ? props.align : "center")};
  object-fit: cover;

  & h2 {
    font-size: 1.8rem;
  }
`;

const Img = styled.img`
  height: auto;
  max-height: 6rem;
  width: auto;
  /* width: auto; */
`;

export const Logo = ({ align }) => {
  const { settings = {} } = useSettings();
  const { company_logo, company_name } = settings;
  return (
    <>
      <StyledLogo align={align}>
        <Img
          src={company_logo || demoLogo}
          alt={company_name || "Demo company"}
        />
      </StyledLogo>
    </>
  );
};
