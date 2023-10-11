import { useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { useCurrentUserTokens } from "../context/authContext";

import Spinner from "../ui/Spinner";
import { styled } from "styled-components";

const FullPage = styled.div`
  height: 100vh;
  background-color: var(--color-gray-50);
  display: flex;
  justify-content: center;
  align-items: center;
`;

const ProtectedRoute = ({ children }) => {
  const navigate = useNavigate();
  const { user, isAuthenticated } = useCurrentUserTokens();

  useEffect(() => {
    if (!isAuthenticated) {
      navigate("/login");
    }
  }, [user, isAuthenticated, navigate]);

  return <>{isAuthenticated ? children : null}</>;
};

export default ProtectedRoute;
