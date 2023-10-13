import { Beforeunload } from "react-beforeunload";
import { useCurrentUserTokens } from "../../context/authContext";

const ClearOnExit = () => {
  const { context } = useCurrentUserTokens();
  console.log(context);

  return (
    <h1>test</h1>
    // <Beforeunload
    //   onBeforeunload={() => logout({ refreshToken: refreshToken })}
    // />
  );
};

export default ClearOnExit;
