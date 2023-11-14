import { useEffect, useState } from "react";
import { useCurrentUserTokens } from "../../context/authContext";
import { endLoginSession } from "../../utils/helpers";
import { useLogout } from "./useLogout";
import useRefreshToken from "./useRefreshToken";

import Modal from "../../ui/Modal";
import LoginExpirationModal from "../../ui/LoginExpirationModal";

const RefreshTokenWarrning = () => {
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
      if (!endLoginSession(expiresIn)) {
        logOutHandler();
      }
    }, 1000);

    return () => clearInterval(interval);
  }, [endLoginSession(expiresIn)]);

  console.log(counter);

  if (counter > 270) return;

  return (
    <>
      {/* auto logout warrning 120s before */}
      <Modal autoOpen="modalexp">
        <Modal.Window name="modalexp">
          <LoginExpirationModal
            counter={counter}
            logout={logOutHandler}
            extendSession={extendSessionHander}
          />
        </Modal.Window>
      </Modal>
    </>
  );
};

export default RefreshTokenWarrning;
