import TableOperations from "../../ui/Data/TableOperations";
import FilterText from "../../ui/FilterText";

function UsersTableOperations() {
  return (
    <TableOperations>
      <FilterText placeholder="Search user..." />
    </TableOperations>
  );
}

export default UsersTableOperations;
