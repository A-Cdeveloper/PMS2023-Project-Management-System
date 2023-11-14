import { Outlet } from "react-router-dom";
import styled from "styled-components";

import Logo from "./Logo";
import MainNav from "./MainNav";
import Sidebar from "./Sidebar";
import Header from "./Header";

import LoginExpirationModal from "./LoginExpirationModal";
import { useCurrentUserTokens } from "../context/authContext";
import { endLoginSession } from "../utils/helpers";
import { useEffect, useState } from "react";
import { useLogout } from "../features/authentication/useLogout";
import Modal from "./Modal";
import useRefreshToken from "../features/authentication/useRefreshToken";

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
    user: { expiresIn, refreshToken, accessToken },
  } = useCurrentUserTokens();

  const { logout } = useLogout();
  const { refreshToken: extendSessionFn } = useRefreshToken();
  const [counter, setCounter] = useState(endLoginSession(expiresIn));

  const logOutHandler = () => {
    logout({ refreshToken });
  };

  const extendSessionHander = () => {
    extendSessionFn({ refreshToken, accessToken });
  };

  useEffect(() => {
    let interval = setInterval(() => {
      setCounter(endLoginSession(expiresIn));

      // console.log(endLoginSession(expiresIn));
      if (!endLoginSession(expiresIn)) {
        logOutHandler();
      }
    }, 1000);

    return () => clearInterval(interval);
  }, [endLoginSession(expiresIn)]);

  console.log(counter);

  return (
    <StyledAppLayout>
      <Sidebar>
        <Logo />
        <MainNav />
      </Sidebar>

      <Main>
        <Header />

        <Container>
          {/* auto logout warrning 120s before */}
          {counter < 121 && (
            <Modal autoOpen="modalexp">
              <Modal.Window name="modalexp">
                <LoginExpirationModal
                  counter={counter}
                  logout={logOutHandler}
                  extendSession={extendSessionHander}
                />
              </Modal.Window>
            </Modal>
          )}

          <View>
            <Outlet />
          </View>
        </Container>
      </Main>
    </StyledAppLayout>
  );
};

export default AppLayout;
