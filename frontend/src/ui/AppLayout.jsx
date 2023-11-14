import { Outlet } from "react-router-dom";
import styled from "styled-components";

import Logo from "./Logo";
import MainNav from "./MainNav";
import Sidebar from "./Sidebar";
import Header from "./Header";

import RefreshTokenWarrning from "../features/authentication/RefreshTokenWarrning";

const StyledAppLayout = styled.div`
  display: flex;
  height: 100vh;
  justify-content: space-between;
  gap: 0.3rem;
`;

const Main = styled.div`
  flex: 1;
  display: flex;
  flex-direction: column;
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
`;

const AppLayout = () => {
  return (
    <StyledAppLayout>
      <Sidebar>
        <Logo />
        <MainNav />
      </Sidebar>

      <Main>
        <Header />

        <Container>
          <RefreshTokenWarrning />
          <View>
            <Outlet />
          </View>
        </Container>
      </Main>
    </StyledAppLayout>
  );
};

export default AppLayout;
