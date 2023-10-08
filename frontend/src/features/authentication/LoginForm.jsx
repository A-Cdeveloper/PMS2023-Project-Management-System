import { useState } from "react";
import Button from "../../ui/Buttons/Button";
import Form from "../../ui/Form/Form";
import Input from "../../ui/Form/Input";

import useLogin from "./useLogin";
import SpinnerMini from "../../ui/SpinnerMini";
import FormRowVertical from "../../ui/Form/FormRowVertical";

import { useNavigate } from "react-router-dom";

function LoginForm() {
  const navigate = useNavigate();

  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");

  const { isLoginLoading, login } = useLogin();

  function handleSubmit(e) {
    e.preventDefault();
    if (!username || !password) return;

    login(
      { username, password },
      {
        onSettled: () => {
          setUsername("");
          setPassword("");
          navigate("/", { replace: true });
        },
      }
    );
  }

  return (
    <Form onSubmit={handleSubmit}>
      <FormRowVertical type="vertical" label="Username">
        <Input
          type="text"
          value={username}
          onChange={(e) => setUsername(e.target.value)}
          disabled={isLoginLoading}
        />
      </FormRowVertical>
      <FormRowVertical type="vertical" label="Password">
        <Input
          type="password"
          value={password}
          onChange={(e) => setPassword(e.target.value)}
          disabled={isLoginLoading}
        />
      </FormRowVertical>
      <FormRowVertical>
        <Button
          size="large"
          variation={!isLoginLoading ? "primary" : "disabled"}
          active=""
        >
          {!isLoginLoading ? "Login" : <SpinnerMini />}
        </Button>
      </FormRowVertical>
    </Form>
  );
}

export default LoginForm;
