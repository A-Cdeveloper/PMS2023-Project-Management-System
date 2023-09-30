import Headline from "../ui/Headline";
import Row from "../ui/Row";
import TasksTable from "../features/tasks/TasksTable";
// import ProjectsTableOperations from "../features/projects/ProjectsTableOperations";

const Tasks = () => {
  return (
    <>
      <Row type="horizontal">
        <Headline as="h1">Tasks</Headline>
        {/* <ProjectsTableOperations /> */}
      </Row>
      <TasksTable />
    </>
  );
};

export default Tasks;
