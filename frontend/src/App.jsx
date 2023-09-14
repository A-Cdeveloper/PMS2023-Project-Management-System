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
import PageNotFound from "./pages/PageNotFound";

import Notifications from "./ui/Notifications";

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
