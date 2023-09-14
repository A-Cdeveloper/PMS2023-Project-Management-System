import styled from "styled-components";
const Sidebar = styled.div`
  flex-basis: 30rem;
  display: flex;
  flex-direction: column;
  gap: 4rem;
  background: white;
  border-right: 1px solid ${(props) => props.theme.baseColors.grey100};
  padding: 1rem 2rem;
`;

export default Sidebar;
