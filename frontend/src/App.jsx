import GlobalStyle from "./styles/GlobalStyles";
import ThemeStyle from "./styles/ThemeStyle";
import { RouterProvider, createBrowserRouter } from "react-router-dom";
import { QueryClientProvider, QueryClient } from "@tanstack/react-query";
import { ReactQueryDevtools } from "@tanstack/react-query-devtools";

import AppLayout from "./ui/AppLayout";
import Dashboard from "./pages/Dashboard";
import Users from "./pages/Users";
import Projects from "./pages/Projects";
import Tasks from "./pages/Tasks";
import Clients from "./pages/Clients";
import Client from "./pages/Client";
import PageNotFound from "./pages/PageNotFound";

import Notifications from "./ui/Notifications";
import Settings from "./pages/Settings";

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
    element: <AppLayout />,
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
      { path: "/projects", element: <Projects /> },
      { path: "/tasks", element: <Tasks /> },
      { path: "/users", element: <Users /> },
      { path: "/settings", element: <Settings /> },
    ],
  },
]);

function App() {
  return (
    <ThemeStyle>
      <QueryClientProvider client={queryClient}>
        <ReactQueryDevtools />
        <GlobalStyle />
        <RouterProvider router={router} />
        <Notifications />
      </QueryClientProvider>
    </ThemeStyle>
  );
}

export default App;
