import styled from "styled-components";
const Header = styled.div`
  width: 100%;
  background: white;
  border-bottom: 1px solid ${(props) => props.theme.baseColors.grey100};
  padding: 1.5rem 0;
`;
export default Header;
