import { useClients } from "./useClients";

import Spinner from "../../ui/Spinner";
import Table from "../../ui/Table";
import ClientRow from "./ClientRow";
import Pagination from "../../ui/Pagination";
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
  const { isLoading, error, clients, count } = useClients();

  if (isLoading) return <Spinner />;
  if (error) return <p>{error.message}</p>;
  if (clients.length === 0) return <Empty resource="clients" />;

  return (
    <>
      <Table cols={clientCols} columns="repeat(3, 1fr) 12rem 10rem 10rem 4rem">
        <Table.Header />

        <Table.Body
          data={clients}
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
