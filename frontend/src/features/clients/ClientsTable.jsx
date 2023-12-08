import { useFilterClients } from "./useFilterClients";
import { useClients } from "./useClients";
import { useSearchParams } from "react-router-dom";

import Spinner from "../../ui/Spinner";
import Table from "../../ui/Data/Table";
import ClientRow from "./ClientRow";
import Pagination from "../../ui/Pagination";
import Empty from "../../ui/Data/Empty";

import { clientCols } from "./ClientParameters";
import Error from "../../ui/Data/Error";
import ClientsTableOperations from "./ClientsTableOperations";
import Row from "../../ui/Row";
import Headline from "../../ui/Headline";
import AddEditClient from "./AddEditClient";

const ClientsTable = () => {
  const [searchParams] = useSearchParams();
  const { isLoading, error, clients } = useFilterClients();
  const { clients: allClients } = useClients();

  // console.log(clients);

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
  if (error)
    return (
      <Error
        message={error.message}
        record="client"
        firstRecord={true}
        addeditForm={<AddEditClient />}
      />
    );
  if (shownClients.length === 0) return <Empty resource="clients" />;

  return (
    <>
      <Row type="horizontal">
        <Headline as="h1">Clients</Headline>
        <ClientsTableOperations />
      </Row>
      <Table
        cols={clientCols}
        columns="repeat(3, 1fr) 8rem 8rem 8rem 8rem 10rem 4rem"
      >
        <Table.Header />
        <Table.Body
          data={shownClients}
          renderItem={(client) => (
            <ClientRow key={client.client_id} client={client} />
          )}
        />
        <Table.Footer>
          <Pagination
            count={filteredTextValue ? shownClients.length : allClients.length}
            filter={!!filteredTextValue}
            resource="clients_per_page"
          />
        </Table.Footer>{" "}
      </Table>
    </>
  );
};

export default ClientsTable;
