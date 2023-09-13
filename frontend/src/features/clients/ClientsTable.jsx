import React, { useEffect, useState } from "react";
import { getClients } from "../../services/apiClients";

import Spinner from "../../ui/Spinner";
import Table from "../../ui/Table";
import ClientRow from "./ClientRow";

const clientCols = [
  "Client",
  "Adresse",
  "Contact Person",
  "Phone/Fax",
  "Email",
  "URL",
];

const ClientsTable = () => {
  const [clients, setClients] = useState();

  useEffect(() => {
    const fetchClients = async () => {
      try {
        const data = await getClients();
        console.log(data);
        setClients(data);
      } catch (error) {
        console.log(error.message);
      }
    };

    fetchClients();
  }, []);

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
      {/* <Table.Footer>
        <Pagination count={count} />
      </Table.Footer>
      <Spinner /> */}
    </>
  );
};

export default ClientsTable;
