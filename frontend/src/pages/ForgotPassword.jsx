import styled from "styled-components";
import { Logo } from "../ui/Logo";
import Headline from "../ui/Headline";
import ForgotPasswordForm from "../features/authentication/ForgotPasswordForm";

const LoginLayout = styled.main`
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: 4rem;
`;

function ForgotPassword() {
  return (
    <LoginLayout>
      <Logo />
      <Headline as="h2">Please send request to retrive your password</Headline>
      <ForgotPasswordForm />
    </LoginLayout>
  );
}

export default ForgotPassword;
