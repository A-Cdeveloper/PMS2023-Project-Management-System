import { HiArrowRightOnRectangle } from "react-icons/hi2";
import { useLogout } from "./useLogout";

import ButtonIconText from "../../ui/Buttons/ButtonIconText";
import { useCurrentUserTokens } from "../../context/authContext";

const Logout = () => {
  const { logout } = useLogout();
  const {
    user: { refreshToken },
  } = useCurrentUserTokens();

  return (
    <ButtonIconText
      // disabled={true}
      onClick={() => {
        logout({ refreshToken: refreshToken });
      }}
    >
      <HiArrowRightOnRectangle />
      {/* {!isLoading ? <HiArrowRightOnRectangle /> : <SpinnerMini />} */}
    </ButtonIconText>
  );
};

export default Logout;
