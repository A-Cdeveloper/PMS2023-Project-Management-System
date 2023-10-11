import { HiArrowRightOnRectangle } from "react-icons/hi2";
import { useLogout } from "./useLogout";

import ButtonIcon from "../../ui/Buttons/ButtonIcon";
import { useCurrentUserTokens } from "../../context/authContext";

const Logout = () => {
  const { logout } = useLogout();
  const {
    user: { refreshToken },
  } = useCurrentUserTokens();

  return (
    <ButtonIcon
      // disabled={true}
      onClick={() => {
        logout({ refreshToken: refreshToken });
      }}
    >
      <HiArrowRightOnRectangle />
      {/* {!isLoading ? <HiArrowRightOnRectangle /> : <SpinnerMini />} */}
    </ButtonIcon>
  );
};

export default Logout;
