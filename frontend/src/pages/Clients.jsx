import Headline from "../ui/Headline";

import ClientsTable from "../features/clients/ClientsTable";

const Clients = () => {
  return (
    <>
      <Headline as="h1">Clients</Headline>
      <ClientsTable />
    </>
  );
};

export default Clients;
