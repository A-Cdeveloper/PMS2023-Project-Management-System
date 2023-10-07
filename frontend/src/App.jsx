import GlobalStyle from "./styles/GlobalStyles";
import ThemeStyle from "./styles/ThemeStyle";
import {
  Navigate,
  RouterProvider,
  createBrowserRouter,
} from "react-router-dom";
import { QueryClientProvider, QueryClient } from "@tanstack/react-query";
import { ReactQueryDevtools } from "@tanstack/react-query-devtools";

import AppLayout from "./ui/AppLayout";
import Dashboard from "./pages/Dashboard";
import Users from "./pages/Users";
import User from "./pages/User";
import Projects from "./pages/Projects";
import Project from "./pages/Project";
import Tasks from "./pages/Tasks";
import Task from "./pages/Task";
import Clients from "./pages/Clients";
import Client from "./pages/Client";
import PageNotFound from "./pages/PageNotFound";
import Login from "./pages/Login";
import Settings from "./pages/Settings";

import { AuthContextProvider } from "./context/authContext";
import Notifications from "./ui/Notifications";
import ProtectedRoute from "./ui/ProtectedRoute";

const queryClient = new QueryClient({
  defaultOptions: {
    queries: {
      // staleTime: 60 * 1000,
      staleTime: 0,
    },
  },
});

const router = createBrowserRouter([
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
          { path: ":userId", element: <User /> },
        ],
      },
      { path: "/settings", element: <Settings /> },
    ],
  },
  { path: "/login", element: <Login /> },
]);

function App() {
  return (
    <AuthContextProvider>
      <ThemeStyle>
        <QueryClientProvider client={queryClient}>
          <ReactQueryDevtools />
          <GlobalStyle />
          <RouterProvider router={router} />
          <Notifications />
        </QueryClientProvider>
      </ThemeStyle>
    </AuthContextProvider>
  );
}

export default App;
