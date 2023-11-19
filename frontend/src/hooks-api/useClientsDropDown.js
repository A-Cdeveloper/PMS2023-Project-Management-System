import { useClients } from "../features/clients/useClients";

export const useClientsDropDown = () => {
  const { clients } = useClients();

  const clientsList = clients.map((client) => {
    return { value: client.client_id, label: client.client_name };
  });

  return { fullClientsList: [{ value: "", label: "" }, ...clientsList] };
};
