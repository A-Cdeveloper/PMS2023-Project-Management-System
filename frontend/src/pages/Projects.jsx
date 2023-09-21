import Headline from "../ui/Headline";
import Row from "../ui/Row";
import ProjectsTable from "../features/projects/ProjectsTable";
import ProjectsTableOperations from "../features/projects/ProjectsTableOperations";

const Projects = () => {
  return (
    <>
      <Row type="horizontal">
        <Headline as="h1">Projects</Headline>
        <ProjectsTableOperations />
      </Row>
      <ProjectsTable />
    </>
  );
};

export default Projects;
