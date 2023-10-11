import TableOperations from "../../ui/Data/TableOperations";
import FilterText from "../../ui/FilterText";
import NewRecord from "../../ui/Buttons/NewRecord";

function UsersTableOperations() {
  return (
    <TableOperations>
      <FilterText placeholder="Search user..." />
      <NewRecord record="user">{/* <AddEditProject /> */} ADD</NewRecord>
    </TableOperations>
  );
}

export default UsersTableOperations;
