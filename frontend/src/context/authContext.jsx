import { createContext, useContext, useState } from "react";

export const AuthContext = createContext({
  user: null,
  isAuthenticated: false,
  setUser: () => {},
});

export const AuthContextProvider = ({ children }) => {
  const storedValue = JSON.parse(sessionStorage.getItem("currentUser")) || null;
  const [user, setUser] = useState(storedValue);

  const setSessionStorageHandler = (key, value) => {
    sessionStorage.setItem(key, value);
    setUser(JSON.parse(sessionStorage.getItem(key)));
  };

  const value = {
    user,
    setSessionStorageHandler,
    isAuthenticated: !!user,
  };

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
};

export const useCurrentUserTokens = () => {
  const context = useContext(AuthContext);
  if (context === undefined)
    throw new Error("Context was used outside provider");
  return context;
};

export const useAccessToken = () => {
  const {
    user: { accessToken },
  } = useContext(AuthContext);
  return accessToken;
};
