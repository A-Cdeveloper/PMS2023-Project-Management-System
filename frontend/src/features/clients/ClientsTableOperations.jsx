import SortBy from "../../ui/SortBy";
// import Filter from "../../ui/Filter"
import TableOperations from "../../ui/TableOperations";
import FilterText from "../../ui/FilterText";
function ClientsTableOperations() {
  return (
    <TableOperations>
      {/* <Filter
        filterField="status"
        options={[
          { value: "all", label: "All" },
          { value: "checked-out", label: "Checked out" },
          { value: "checked-in", label: "Checked in" },
          { value: "unconfirmed", label: "Unconfirmed" },
        ]}
      /> */}
      <FilterText />
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
