import TableOperations from "../../ui/TableOperations";
import SortBy from "../../ui/SortBy";
import Filter from "../../ui/Filter";
import FilterText from "../../ui/FilterText";
import NewRecord from "../../ui/Buttons/NewRecord";
import AddEditClient from "./AddEditClient";

function ClientsTableOperations() {
  return (
    <TableOperations>
      {/* <FilterText placeholder="Search clients..." /> */}
      <SortBy
        options={[
          { value: "client_name-asc", label: "Sort by name (asc)" },
          { value: "client_name-desc", label: "Sort by name (desc)" },
        ]}
      />
      <NewRecord record="client">
        <AddEditClient />
      </NewRecord>
    </TableOperations>
  );
}

export default ClientsTableOperations;
