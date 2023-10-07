import styled from "styled-components";
import LoginForm from "../features/authentication/LoginForm";
import Logo from "../ui/Logo";
import Headline from "../ui/Headline";

const LoginLayout = styled.main`
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: 4rem;
`;

function Login() {
  return (
    <LoginLayout>
      <Logo />
      <Headline as="h2">Log in to your account</Headline>
      <LoginForm />
    </LoginLayout>
  );
}

export default Login;
