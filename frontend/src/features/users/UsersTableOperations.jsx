import TableOperations from "../../ui/Data/TableOperations";
import FilterText from "../../ui/FilterText";
import NewRecord from "../../ui/Buttons/NewRecord";
import AddUser from "./AddUser";

function UsersTableOperations() {
  return (
    <TableOperations>
      <FilterText placeholder="Search user..." />
      <NewRecord record="user">
        <AddUser />
      </NewRecord>
    </TableOperations>
  );
}

export default UsersTableOperations;
