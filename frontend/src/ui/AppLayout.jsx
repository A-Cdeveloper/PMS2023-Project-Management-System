import { Outlet } from "react-router-dom";
import styled from "styled-components";

import Logo from "./Logo";
import MainNav from "./MainNav";
import Sidebar from "./Sidebar";
import Header from "./Header";

import LoginExpirationModal from "./LoginExpirationModal";
import { useCurrentUserTokens } from "../context/authContext";
import { endLoginSession } from "../utils/helpers";
import { useEffect } from "react";
import { useLogout } from "../features/authentication/useLogout";
import Modal from "./Modal";

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
  const {
    user: { expiresIn, refreshToken },
  } = useCurrentUserTokens();

  const { logout } = useLogout();

  // useEffect(() => {
  //   let interval = setInterval(() => {
  //     console.log(endLoginSession(expiresIn));
  //     if (!endLoginSession(expiresIn)) {
  //       logout({ refreshToken: refreshToken });
  //     }
  //   }, 500);
  //   return () => clearInterval(interval);
  // }, [expiresIn]);

  //console.log(endLoginSession(expiresIn));

  return (
    <StyledAppLayout>
      <Sidebar>
        <Logo />
        <MainNav />
      </Sidebar>

      <Main>
        <Header />

        <Container>
          <Modal
          //autoOpen={endLoginSession(expiresIn) <= 10 ? "modalexp" : null}
          //autoOpen="modalexp"
          >
            <Modal.Window name="modalexp">
              <LoginExpirationModal />
            </Modal.Window>
          </Modal>

          <View>
            <Outlet />
          </View>
        </Container>
      </Main>
    </StyledAppLayout>
  );
};

export default AppLayout;
