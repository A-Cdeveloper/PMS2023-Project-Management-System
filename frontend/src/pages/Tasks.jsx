import Headline from "../ui/Headline";
import Row from "../ui/Row";
import TasksTable from "../features/tasks/TasksTable";
import TasksTableOperations from "../features/tasks/TasksTableOperations";
import FilterByDateInterval from "../ui/FilterByDateInterval";

const Tasks = () => {
  return (
    <>
      <Row>
        <Headline as="h1">Tasks</Headline>
      </Row>
      <Row type="horizontal">
        <FilterByDateInterval />
        <TasksTableOperations />
      </Row>
      <TasksTable />
    </>
  );
};

export default Tasks;
