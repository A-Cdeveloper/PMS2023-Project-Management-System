import { createContext, useContext, useEffect, useState } from "react";

export const AuthContext = createContext({
  user: {},
  isAuthenticated: false,
});

export const AuthContextProvider = ({ children }) => {
  const storedvalue = localStorage.getItem("currentUser") || null;

  const [user, setUser] = useState(JSON.parse(storedvalue));

  useEffect(() => {
    localStorage.setItem("currentUser", JSON.stringify(user));
  }, [user]);

  console.log(user);

  return (
    <AuthContext.Provider value={{ user, isAuthenticated: user !== null }}>
      {children}
    </AuthContext.Provider>
  );
};

export const useCurrentUser = () => {
  const context = useContext(AuthContext);
  if (context === undefined)
    throw new Error("Context was used outdise provider");
  return context;
};
