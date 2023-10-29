import { useProjects } from "../projects/useProjects";
import { useClients } from "../clients/useClients";
import { useServices } from "../services/useServices";

///////////////////////////////////////////////////////////////
export const offerAllClients = () => {
  const { clients } = useClients();

  const clientsList = clients.map((client) => {
    return { value: client.client_id, label: client.client_name };
  });

  return [{ value: "", label: "" }, ...clientsList];
};

///////////////////////////////////////////////////////////////
export const offerAllProjects = () => {
  const { projects } = useProjects();

  const projectsList = projects.map((project) => {
    return { value: project.project_id, label: project.project_name };
  });

  return [{ value: "", label: "" }, ...projectsList];
};

///////////////////////////////////////////////////////////////
export const offerAllServices = () => {
  const { services } = useServices();

  const servicesList = services.map((service) => {
    return {
      value: service.service_id,
      label: service.service_name,
      service_price_hour: service.service_price_hour,
      service_price_total: service.service_price_total,
    };
  });

  return [{ value: "", label: "" }, ...servicesList];
};

///////////////////////////////////////////////////////////////
export const allServices = () => {
  const { services } = useServices();

  console.log(services);

  const servicesFormated = services.map((service) => {
    return {
      service_id: service.service_id,
      service_name: service.service_name,
      service_description: service.service_description,
      service_price_hour: service.service_price_hour,
      service_price_total: service.service_price_total,
    };
  });

  return servicesFormated;
};

export const offersCols = ["Date", "Num", "Client", "Project", "Type", "PDF"];

export const offerType = [
  { value: "all", label: "All" },
  { value: "angebot", label: "angebot" },
  { value: "kostenschätzung", label: "kostenschätzung" },
];
