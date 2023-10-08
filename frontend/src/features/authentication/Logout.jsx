import { HiArrowRightOnRectangle } from "react-icons/hi2";
import { useLogout } from "./useLogout";

import ButtonIcon from "../../ui/Buttons/ButtonIcon";
import { useCurrentUser } from "../../context/authContext";

import { useNavigate } from "react-router-dom";
const Logout = () => {
  const { isLoading, logout } = useLogout();
  const {
    user: { refreshToken },
  } = useCurrentUser();
  const navigate = useNavigate();

  console.log(refreshToken);

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
