import TableOperations from "../../ui/Data/TableOperations";
import SortBy from "../../ui/SortBy";
import FilterText from "../../ui/FilterText";
import Filter from "../../ui/Filter";
// import NewRecord from "../../ui/Buttons/NewRecord";
// import AddEditProject from "./AddEditProject";
import { taskStatus } from "./TaskParameters";

function TasksTableOperations() {
  return (
    <TableOperations>
      <FilterText placeholder="Search tasks..." />
      <Filter
        filterField="status"
        options={taskStatus.map((status) => {
          return { value: status.value, label: status.label };
        })}
      />
      {/* <NewRecord record="project">
        <AddEditProject />
      </NewRecord> */}
    </TableOperations>
  );
}

export default TasksTableOperations;
