import TableOperations from "../../ui/TableOperations";
import SortBy from "../../ui/SortBy";
import Filter from "../../ui/Filter";
import FilterText from "../../ui/FilterText";

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
    </TableOperations>
  );
}

export default ClientsTableOperations;
