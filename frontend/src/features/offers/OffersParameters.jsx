import { useProjects } from "../projects/useProjects";
import { useClients } from "../clients/useClients";

export const offerAllClients = () => {
  const { clients } = useClients();

  const clientsList = clients.map((client) => {
    return { value: client.client_id, label: client.client_name };
  });

  return [{ value: "", label: "" }, ...clientsList];
};

export const offerAllProjects = () => {
  const { projects } = useProjects();

  const projectsList = projects.map((project) => {
    return { value: project.project_id, label: project.project_name };
  });

  return [{ value: "", label: "" }, ...projectsList];
};

export const offersCols = ["Date", "Num", "Client", "Project", "Type", "PDF"];

export const offerType = [
  { value: "all", label: "All" },
  { value: "angebot", label: "angebot" },
  { value: "kostenschätzung", label: "kostenschätzung" },
];
