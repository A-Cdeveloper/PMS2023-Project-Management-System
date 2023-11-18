import TableOperations from "../../ui/Data/TableOperations";
import SortBy from "../../ui/SortBy";
import FilterText from "../../ui/FilterText";
import NewRecord from "../../ui/Buttons/NewRecord";
import AddEditClient from "./AddEditClient";
import { useQueryClient } from "@tanstack/react-query";

function ClientsTableOperations() {
  const queryClient = useQueryClient();
  const clients = queryClient.getQueryData(["clients"]) || [];

  return (
    <TableOperations>
      {clients.length !== 0 && (
        <>
          <FilterText placeholder="Search clients..." />
          <SortBy
            options={[
              { value: "client_name-asc", label: "Sort by name (asc)" },
              { value: "client_name-desc", label: "Sort by name (desc)" },
              {
                value: "project_per_client-asc",
                label: "Sort by projects num (asc)",
              },
              {
                value: "project_per_client-desc",
                label: "Sort by projects num (desc)",
              },
            ]}
            defaultOptionIndex={0}
          />
        </>
      )}
      <NewRecord record="client">
        <AddEditClient />
      </NewRecord>
    </TableOperations>
  );
}

export default ClientsTableOperations;
