import { Beforeunload } from "react-beforeunload";
import { useCurrentUserTokens } from "../../context/authContext";
import { useLogout } from "./useLogout";

const ClearOnExit = () => {
  const { context } = useCurrentUserTokens();
  const { logout } = useLogout();
  console.log(context);

  return <Beforeunload onBeforeunload={() => "test"} />;
};

export default ClearOnExit;
