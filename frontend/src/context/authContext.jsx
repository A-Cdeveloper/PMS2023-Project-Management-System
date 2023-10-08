import { createContext, useContext, useEffect, useState } from "react";

export const AuthContext = createContext({
  user: null,
  isAuthenticated: false,
  setUser: () => {},
});

export const AuthContextProvider = ({ children }) => {
  const storedValue = JSON.parse(localStorage.getItem("currentUser")) || null;
  const [user, setUser] = useState(storedValue);

  const setLocalStorageHandler = (key, value) => {
    localStorage.setItem(key, value);
    setUser(JSON.parse(localStorage.getItem(key)));
  };

  useEffect(() => {
    console.log("TEST");
  }, [storedValue]);

  const value = {
    user,
    setLocalStorageHandler,
    isAuthenticated: !!user,
  };

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
};

export const useCurrentUser = () => {
  const context = useContext(AuthContext);
  if (context === undefined)
    throw new Error("Context was used outdise provider");
  return context;
};
