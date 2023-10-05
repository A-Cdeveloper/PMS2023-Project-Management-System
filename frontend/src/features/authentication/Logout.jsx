import { HiArrowRightOnRectangle } from "react-icons/hi2";
// import { useLogout } from "./useLogout";

import ButtonIcon from "../../ui/Buttons/ButtonIcon";
// import SpinnerMini from "../../ui/SpinnerMini";

const Logout = () => {
  //const { isLoading, logout } = useLogout();

  return (
    <ButtonIcon disabled={true} onClick={() => {}}>
      <HiArrowRightOnRectangle />
      {/* {!isLoading ? <HiArrowRightOnRectangle /> : <SpinnerMini />} */}
    </ButtonIcon>
  );
};

export default Logout;
