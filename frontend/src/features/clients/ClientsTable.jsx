import { useClients } from "./useClients";

import Spinner from "../../ui/Spinner";
import Table from "../../ui/Table";
import ClientRow from "./ClientRow";
import Pagination from "../../ui/Pagination";
import { useSearchParams } from "react-router-dom";
import Empty from "../../ui/Empty";

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
  const { isLoading, error, clients, count } = useClients();

  if (isLoading) return <Spinner />;
  if (error) return <p>{error.message}</p>;

  // FILTER
  const filteredValue = searchParams.get("filter");

  const filteredClients = filteredValue
    ? clients.filter((client) => {
        return (
          client.client_name.trim().toLowerCase().includes(filteredValue) ||
          client.client_adresse.trim().toLowerCase().includes(filteredValue) ||
          client.client_contact.trim().toLowerCase().includes(filteredValue)
        );
      })
    : clients;

  if (filteredClients.length === 0) return <Empty resource="clients" />;

  return (
    <>
      <Table cols={clientCols} columns="repeat(3, 1fr) 12rem 10rem 10rem 4rem">
        <Table.Header />

        <Table.Body
          data={filteredClients}
          render={(client) => (
            <ClientRow key={client.client_id} client={client} />
          )}
        />
      </Table>
      <Table.Footer>
        <Pagination count={count} />
      </Table.Footer>
    </>
  );
};

export default ClientsTable;
