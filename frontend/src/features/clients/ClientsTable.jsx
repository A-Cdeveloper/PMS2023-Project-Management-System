import { useFilterClients } from "./useFilterClients";
import { useClients } from "./useClients";

import Spinner from "../../ui/Spinner";
import Table from "../../ui/Table";
import ClientRow from "./ClientRow";
import Pagination from "../../ui/Pagination";
import Empty from "../../ui/Empty";
import { useSearchParams } from "react-router-dom";

// import { filteredRecords } from "../../utils/helpers";

const clientCols = [
  "Client",
  "Adresse",
  "Contact Person",
  "Phone/Fax",
  "Email",
  "URL",
];

const ClientsTable = () => {
  const [searchParams] = useSearchParams();
  const { isLoading, error, clients } = useFilterClients();
  const { clients: allClients } = useClients();

  //filter results
  const filteredTextValue = searchParams.get("filterByText");

  const shownClients = filteredTextValue
    ? allClients.filter(
        (client) =>
          client.client_name.trim().toLowerCase().includes(filteredTextValue) ||
          client.client_adresse
            .trim()
            .toLowerCase()
            .includes(filteredTextValue) ||
          client.client_contact.trim().toLowerCase().includes(filteredTextValue)
      )
    : clients;

  if (isLoading) return <Spinner />;
  if (error) return <p>{error.message}</p>;
  if (shownClients.length === 0) return <Empty resource="clients" />;

  return (
    <>
      <Table cols={clientCols} columns="repeat(3, 1fr) 12rem 10rem 10rem 4rem">
        <Table.Header />

        <Table.Body
          data={shownClients}
          renderItem={(client) => (
            <ClientRow key={client.client_id} client={client} />
          )}
        />
      </Table>
      <Table.Footer>
        <Pagination
          count={filteredTextValue ? shownClients.length : allClients.length}
          filter={!!filteredTextValue}
          resource="clients_per_page"
        />
      </Table.Footer>
    </>
  );
};

export default ClientsTable;
