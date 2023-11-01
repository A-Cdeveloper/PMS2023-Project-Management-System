import { useProjects } from "../projects/useProjects";

export const clientByProject = ({ project_id }) => {
  if (!project_id) return;
  const { projects } = useProjects();
  const { client_name: clientName, project_client_id: clientId } =
    projects?.filter((proj) => proj?.project_id === project_id)[0];
  //console.log(clientName, clientId);
  return { clientName, clientId };
  //return projects;
};

export const offersCols = ["Date", "Num", "Client", "Project", "Type", "PDF"];

export const offerType = [
  { value: "all", label: "All" },
  { value: "angebot", label: "angebot" },
  { value: "kostenschätzung", label: "kostenschätzung" },
];
