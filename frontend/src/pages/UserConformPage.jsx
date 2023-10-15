import styled from "styled-components";
import Logo from "../ui/Logo";
import UserConformation from "../features/authentication/UserConformation";

const LoginLayout = styled.main`
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: 4rem;
`;

function UserConformPage() {
  return (
    <LoginLayout>
      <Logo />
      <UserConformation />
    </LoginLayout>
  );
}

export default UserConformPage;
