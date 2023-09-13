import GlobalStyle from "./styles/GlobalStyles";
import ThemeStyle from "./styles/ThemeStyle";
import { RouterProvider, createBrowserRouter } from "react-router-dom";

import AppLayout from "./ui/AppLayout";
import Dashboard from "./pages/Dashboard";
import Users from "./pages/Users";
import Projects from "./pages/Projects";
import Tasks from "./pages/Tasks";
import Clients from "./pages/Clients";
import PageNotFound from "./pages/PageNotFound";

import Notifications from "./ui/Notifications";

const router = createBrowserRouter([
  {
    element: <AppLayout />,
    errorElement: <PageNotFound />,
    children: [
      { path: "/", element: <Dashboard /> },
      { path: "/clients", element: <Clients /> },
      { path: "/projects", element: <Projects /> },
      { path: "/tasks", element: <Tasks /> },
      { path: "/users", element: <Users /> },
    ],
  },
]);

function App() {
  return (
    <ThemeStyle>
      <GlobalStyle />
      <RouterProvider router={router} />
      <Notifications />
    </ThemeStyle>
  );
}

export default App;
