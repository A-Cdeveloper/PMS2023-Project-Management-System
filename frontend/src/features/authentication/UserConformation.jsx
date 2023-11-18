import { useNavigate } from "react-router-dom";
import { useConformUser } from "./useConformUser";

import Headline from "../../ui/Headline";
import Button from "../../ui/Buttons/Button";
import Spinner from "../../ui/Spinner";
import Error from "../../ui/Data/Error";

const UserConformation = () => {
  const navigate = useNavigate();
  const { isLoading, error, data } = useConformUser();

  console.log(data);
  let content;

  if (isLoading) return <Spinner />;
  if (error) content = <Error message={error.message} />;
  if (data) content = data.message;

  const conformed = !!data;
  //if (shownUsers.length === 0) return <Empty resource="users" />;

  // if (!data) {
  //   content = error.message;
  // }
  // console.log(error.message);

  return (
    <>
      <Headline as="h2">{content}</Headline>
      {conformed && (
        <Button
          variation="primary"
          size="large"
          onClick={() => navigate("/login")}
        >
          Go to login page
        </Button>
      )}
    </>
  );
};

export default UserConformation;
