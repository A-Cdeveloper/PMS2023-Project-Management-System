import { Suspense, lazy } from "react";
import { QueryClientProvider, QueryClient } from "@tanstack/react-query";
import { ReactQueryDevtools } from "@tanstack/react-query-devtools";

import GlobalStyle from "./styles/GlobalStyles";
import ThemeStyle from "./styles/ThemeStyle";
import { RouterProvider, createBrowserRouter } from "react-router-dom";

import { AuthContextProvider } from "./context/authContext";

import Project from "./pages/Project";
import Task from "./pages/Task";
import Client from "./pages/Client";
import PageNotFound from "./pages/PageNotFound";
import Login from "./pages/Login";
import UserConformPage from "./pages/UserConformPage";
import Notifications from "./ui/Notifications";
import ProtectedRoute from "./ui/ProtectedRoute";
import ForgotPassword from "./pages/ForgotPassword";
import NewOffer from "./pages/NewOffer";
import Offer from "./pages/Offer";
import EditOffer from "./pages/EditOffer";

import Spinner from "./ui/Spinner.jsx";

const AppLayout = lazy(() => import("./ui/AppLayout.jsx"));
const Dashboard = lazy(() => import("./pages/Dashboard.jsx"));
const Users = lazy(() => import("./pages/Users.jsx"));
const Account = lazy(() => import("./pages/Account.jsx"));
const Projects = lazy(() => import("./pages/Projects.jsx"));
const Tasks = lazy(() => import("./pages/Tasks.jsx"));
const Clients = lazy(() => import("./pages/Clients.jsx"));
const Settings = lazy(() => import("./pages/Settings.jsx"));
const Services = lazy(() => import("./pages/Services.jsx"));
const Offers = lazy(() => import("./pages/Offers.jsx"));
const PdfOffer = lazy(() => import("./pages/PdfOffer.jsx"));
const PdfTask = lazy(() => import("./pages/PdfTask.jsx"));

import { useConnectionStatus } from "./hooks/useConnectionStatus";

const queryClient = new QueryClient({
  defaultOptions: {
    queries: {
      // staleTime: 60 * 1000,
      staleTime: 0,
      retry: false,
      refetchOnWindowFocus: false,
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
    errorElement: <PageNotFound onlineStatus={true} />,
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
          { path: "pdf/:taskId", element: <PdfTask /> },
        ],
      },
      { path: "/users", element: <Users /> },
      { path: "/services", element: <Services /> },
      {
        path: "/offers",
        children: [
          { index: true, element: <Offers /> },
          { path: ":offerId", element: <Offer /> },
          { path: "new", element: <NewOffer /> },
          { path: "edit/:offerId", element: <EditOffer /> },
          { path: "pdf/:offerId", element: <PdfOffer /> },
        ],
      },

      { path: "/settings", element: <Settings /> },
      { path: "/account", element: <Account /> },
    ],
  },
]);

function App() {
  const isOnline = useConnectionStatus();

  return (
    <ThemeStyle>
      <QueryClientProvider client={queryClient}>
        <AuthContextProvider>
          <ReactQueryDevtools />
          <GlobalStyle />
          <Suspense fallback={<Spinner />}>
            {isOnline ? (
              <RouterProvider router={router} />
            ) : (
              <PageNotFound onlineStatus={isOnline} />
            )}
          </Suspense>
          <Notifications />
        </AuthContextProvider>
      </QueryClientProvider>
    </ThemeStyle>
  );
}

export default App;
