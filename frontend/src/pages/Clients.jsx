import Headline from "../ui/Headline";
import Row from "../ui/Row";
import ClientsTable from "../features/clients/ClientsTable";
import ClientsTableOperations from "../features/clients/ClientsTableOperations";

const Clients = () => {
  return (
    <>
      <Row type="horizontal">
        <Headline as="h1">Clients</Headline>
        <ClientsTableOperations />
      </Row>
      <ClientsTable />
    </>
  );
};

export default Clients;
