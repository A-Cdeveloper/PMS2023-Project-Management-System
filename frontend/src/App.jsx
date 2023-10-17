import { QueryClientProvider, QueryClient } from "@tanstack/react-query";
import { ReactQueryDevtools } from "@tanstack/react-query-devtools";

import GlobalStyle from "./styles/GlobalStyles";
import ThemeStyle from "./styles/ThemeStyle";
import {
  Navigate,
  RouterProvider,
  createBrowserRouter,
} from "react-router-dom";

import AppLayout from "./ui/AppLayout";
import Dashboard from "./pages/Dashboard";
import Users from "./pages/Users";
import Account from "./pages/Account";
import Projects from "./pages/Projects";
import Project from "./pages/Project";
import Tasks from "./pages/Tasks";
import Task from "./pages/Task";
import Clients from "./pages/Clients";
import Client from "./pages/Client";
import PageNotFound from "./pages/PageNotFound";
import Login from "./pages/Login";
import UserConformPage from "./pages/UserConformPage";
import Settings from "./pages/Settings";

import { AuthContextProvider } from "./context/authContext";
import Notifications from "./ui/Notifications";
import ProtectedRoute from "./ui/ProtectedRoute";
import ForgotPassword from "./pages/ForgotPassword";

const queryClient = new QueryClient({
  defaultOptions: {
    queries: {
      // staleTime: 60 * 1000,
      staleTime: 0,
    },
  },
});

const router = createBrowserRouter([
  { path: "/login", element: <Login /> },
  {
    path: "/user-verify/:userId/:verifikationToken",
    element: <UserConformPage />,
  },
  {
    path: "/forgot-password",
    element: <ForgotPassword />,
  },

  {
    element: (
      <ProtectedRoute>
        <AppLayout />
      </ProtectedRoute>
    ),
    errorElement: <PageNotFound />,
    children: [
      { path: "/", element: <Dashboard /> },
      {
        path: "/clients",
        children: [
          { index: true, element: <Clients /> },
          { path: ":clientId", element: <Client /> },
        ],
      },
      {
        path: "/projects",
        children: [
          { index: true, element: <Projects /> },
          { path: ":projectId", element: <Project /> },
        ],
      },
      {
        path: "/tasks",
        children: [
          { index: true, element: <Tasks /> },
          { path: ":taskId", element: <Task /> },
        ],
      },
      {
        path: "/users",
        children: [
          { index: true, element: <Users /> },
          // { path: ":userId", element: <User /> },
        ],
      },
      { path: "/settings", element: <Settings /> },
      { path: "/account", element: <Account /> },
    ],
  },
]);

function App() {
  return (
    <ThemeStyle>
      <QueryClientProvider client={queryClient}>
        <AuthContextProvider>
          <ReactQueryDevtools />
          <GlobalStyle />
          <RouterProvider router={router} />
          <Notifications />
        </AuthContextProvider>
      </QueryClientProvider>
    </ThemeStyle>
  );
}

export default App;
