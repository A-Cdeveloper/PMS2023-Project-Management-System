import { useClients } from "../features/clients/useClients";
import { useProjects } from "../features/projects/useProjects";
import { useTasks } from "../features/tasks/useTasks";
import { useServices } from "../features/services/useServices";
import { useOffers } from "../features/offers/useOffers";
import { useUsers } from "../features/users/useUsers";

const useCountResurces = () => {
  const { clients } = useClients();
  // const { projects } = useProjects();
  // const { tasks } = useTasks();
  // const { services } = useServices();
  // const { offers } = useOffers();
  // const { users } = useUsers();

  return {
    clientsCount: clients.length,
    // projectsCount: projects.length,
    // tasksCount: tasks.length,
    // servicesCount: services.length,
    // offersCount: offers.length,
    // usersCount: users.length,
  };
};

export default useCountResurces;
