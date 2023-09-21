import { useFilterProjects } from "./useFilterProjects";
import { useProjects } from "./useProjects";

import Spinner from "../../ui/Spinner";
import Table from "../../ui/Table";
// import ClientRow from "./ClientRow";
import Pagination from "../../ui/Pagination";
import Empty from "../../ui/Empty";
import { useSearchParams } from "react-router-dom";
import ProjectRow from "./ProjectRow";

const projectCols = [
  "Project",
  "Client",
  "Url",
  "Tech",
  "Hosting",
  "Start Date",
  "End Date",
  "Status",
  "Update",
  "Protfolio",
];

const ProjectsTable = () => {
  const [searchParams] = useSearchParams();
  const { isLoading, error, projects } = useFilterProjects();
  const { projects: allProjects } = useProjects();

  console.log(projects);

  //filter results
  const filteredTextValue = searchParams.get("filterByText");
  const filteredStatus = searchParams?.get("status")
    ? searchParams.get("status")
    : "all";

  let shownProjects =
    filteredTextValue || filteredStatus
      ? allProjects.filter(
          (project) =>
            project.project_name
              .trim()
              .toLowerCase()
              .includes(filteredTextValue) &&
            project.project_status === filteredStatus
        )
      : projects;

  //filter by status

  // const filteredStatus = searchParams?.get("status")
  //   ? searchParams.get("status")
  //   : "all";

  // console.log(filteredStatus);

  // shownProjects =
  //   filteredStatus !== "all"
  //     ? allProjects.filter(
  //         (project) => project.project_status === filteredStatus
  //       )
  //     : projects;

  if (isLoading) return <Spinner />;
  if (error) return <p>{error.message}</p>;
  if (shownProjects.length === 0) return <Empty resource="projects" />;

  return (
    <>
      <Table
        cols={projectCols}
        columns="23rem 23rem 7rem 8rem 10rem repeat(2, 1fr) 10rem 10rem 10rem"
      >
        <Table.Header />

        <Table.Body
          data={shownProjects}
          renderItem={(project) => (
            <ProjectRow key={project.project_id} project={project} />
          )}
        />
      </Table>
      <Table.Footer>
        <Pagination
          count={
            filteredTextValue || filteredStatus !== "all"
              ? shownProjects.length
              : allProjects.length
          }
          resource="projects_per_page"
        />
      </Table.Footer>
    </>
  );
};

export default ProjectsTable;
