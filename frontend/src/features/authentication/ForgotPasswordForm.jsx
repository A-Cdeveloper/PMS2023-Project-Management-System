import { useState } from "react";
import Button from "../../ui/Buttons/Button";
import Form from "../../ui/Form/Form";
import Input from "../../ui/Form/Input";

import FormRowVertical from "../../ui/Form/FormRowVertical";

import { useNavigate } from "react-router-dom";
import useForgotPassword from "./useForgotPassword";

function ForgotPasswordForm() {
  const navigate = useNavigate();

  const [userEntry, setUserEntry] = useState("");

  const { isLoading, forgotPassword } = useForgotPassword();

  function handleSubmit(e) {
    e.preventDefault();
    if (!userEntry) return;

    forgotPassword(
      { entry: userEntry },
      {
        onSettled: () => {
          setUserEntry("");
        },
        onSuccess: () => {
          navigate("/login", { replace: true });
        },
      }
    );
  }

  return (
    <>
      <Form onSubmit={handleSubmit}>
        <FormRowVertical type="vertical" label="Username or email">
          <Input
            type="text"
            value={userEntry}
            onChange={(e) => setUserEntry(e.target.value)}
            disabled={isLoading}
          />
        </FormRowVertical>
        <FormRowVertical>
          <Button
            size="large"
            variation={!isLoading ? "primary" : "disabled"}
            active=""
          >
            Send request
          </Button>
        </FormRowVertical>
      </Form>
    </>
  );
}

export default ForgotPasswordForm;
