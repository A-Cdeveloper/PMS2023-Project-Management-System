import { useSearchParams } from "react-router-dom";
import { useFilterProjects } from "./useFilterProjects";
import { useProjects } from "./useProjects";

import Spinner from "../../ui/Spinner";
import Table from "../../ui/Data/Table";
import Pagination from "../../ui/Pagination";
import Empty from "../../ui/Data/Empty";
import Error from "../../ui/Data/Error";
import ProjectRow from "./ProjectRow";

import { projectCols } from "./ProjectParameters";
import Row from "../../ui/Row";
import Headline from "../../ui/Headline";
import AddEditProject from "./AddEditProject";
import ProjectsTableOperations from "./ProjectsTableOperations";
const filteredProjects = (
  allProjects,
  projects,
  filteredTextValue,
  filteredStatus
) => {
  if (!filteredTextValue && filteredStatus) {
    return allProjects.filter(
      (project) => project.project_status === filteredStatus
    );
  }
  if (filteredTextValue && !filteredStatus) {
    return allProjects.filter((project) =>
      project.project_name.trim().toLowerCase().includes(filteredTextValue)
    );
  }

  if (filteredTextValue && filteredStatus) {
    return allProjects
      .filter((project) => project.project_status === filteredStatus)
      .filter((project) =>
        project.project_name.trim().toLowerCase().includes(filteredTextValue)
      );
  }

  return projects;
};

const ProjectsTable = () => {
  const [searchParams] = useSearchParams();
  const { isLoading, error, projects } = useFilterProjects();
  const { projects: allProjects } = useProjects();

  //filter results
  const filteredTextValue = searchParams.get("filterByText");
  // //filter by status
  const filteredStatus = searchParams.get("status");

  const shownProjects = filteredProjects(
    allProjects,
    projects,
    filteredTextValue,
    filteredStatus
  );

  if (isLoading) return <Spinner />;
  if (error)
    return (
      <Error
        message={error.message}
        record="project"
        firstRecord={true}
        addeditForm={<AddEditProject />}
      />
    );
  if (shownProjects.length === 0) return <Empty resource="projects" />;

  return (
    <>
      <Row type="horizontal">
        <Headline as="h1">Projects</Headline>
        <ProjectsTableOperations />
      </Row>
      <Table
        cols={projectCols}
        columns="23rem 23rem 6rem 6rem 10rem repeat(2, 1fr) 12rem 10rem 10rem 4rem 4rem"
      >
        <Table.Header />
        <Table.Body
          data={shownProjects}
          renderItem={(project) => (
            <ProjectRow key={project.project_id} project={project} />
          )}
        />
        <Table.Footer>
          <Pagination
            count={
              !!filteredTextValue || !!filteredStatus
                ? shownProjects.length
                : allProjects.length
            }
            resource="projects_per_page"
            filter={!!filteredTextValue || !!filteredStatus}
          />
        </Table.Footer>
      </Table>
    </>
  );
};

export default ProjectsTable;
