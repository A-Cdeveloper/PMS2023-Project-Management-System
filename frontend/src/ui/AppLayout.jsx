import { Outlet } from "react-router-dom";
import styled from "styled-components";

import Logo from "./Logo";
import MainNav from "./MainNav";

const StyledAppLayout = styled.div`
  display: flex;
  height: 100vh;
  justify-content: space-between;
  gap: 0.3rem;
`;

const Sidebar = styled.div`
  flex-basis: 25rem;
  display: flex;
  flex-direction: column;
  gap: 4rem;
  background: white;
  border-right: 1px solid ${(props) => props.theme.baseColors.grey100};
  padding: 1rem 2rem;
`;

const Main = styled.div`
  flex: 1;
  display: flex;
  flex-direction: column;
`;

const Header = styled.div`
  width: 100%;
  background: white;
  border-bottom: 1px solid ${(props) => props.theme.baseColors.grey100};
  padding: 1.5rem 0;
`;

const Container = styled.div`
  //margin: 0 auto;
  display: flex;
  flex-direction: column;
  gap: 3.2rem;
  padding: 4rem;
  height: 100vh;
  overflow-y: scroll;
`;

const View = styled.div`
  max-width: 70vw;
  & h1 {
    margin-bottom: 2rem;
  }
`;

const AppLayout = () => {
  return (
    <StyledAppLayout>
      <Sidebar>
        <Logo />
        <MainNav />
      </Sidebar>

      <Main>
        <Header>#HEADER</Header>
        <Container>
          <View>
            <Outlet />
          </View>
        </Container>
      </Main>
    </StyledAppLayout>
  );
};

export default AppLayout;
