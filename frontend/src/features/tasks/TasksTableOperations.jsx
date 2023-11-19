import TableOperations from "../../ui/Data/TableOperations";
import FilterText from "../../ui/FilterText";
import Filter from "../../ui/Filter";
import NewRecord from "../../ui/Buttons/NewRecord";
import AddEditTask from "./AddEditTask";
import { taskStatus } from "./TaskParameters";
import useCountResurces from "../../hooks-api/useCountResurces";

function TasksTableOperations() {
  const { tasksCount } = useCountResurces();
  return (
    <TableOperations>
      {tasksCount > 1 && (
        <>
          <FilterText placeholder="Search tasks..." />
          <Filter
            filterField="status"
            options={taskStatus.map((status) => {
              return { value: status.value, label: status.label };
            })}
          />
        </>
      )}
      <NewRecord record="task">
        <AddEditTask />
      </NewRecord>
    </TableOperations>
  );
}

export default TasksTableOperations;
