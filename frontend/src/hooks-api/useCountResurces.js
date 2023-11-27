import { useQueryClient } from "@tanstack/react-query";

const useCountResurces = () => {
  const queryClient = useQueryClient();

  const settings = queryClient.getQueryData(["settings"]) || {};

  const {
    number_of_clients: clientsCount,
    number_of_projects: projectsCount,
    number_of_services: servicesCount,
    number_of_tasks: tasksCount,
    number_of_users: usersCount,
  } = settings;

  return {
    clientsCount,
    projectsCount,
    tasksCount,
    servicesCount,
    usersCount,
  };
};

export default useCountResurces;
