import Table from "../../ui/Data/Table";
import ClientProjectRow from "./ClientProjectRow";

export const ClientProjects = ({ clientProjects }) => {
  return (
    <>
      <Table
        cols={[
          "#",
          "Project",
          "Url",
          "Tech",
          "Hosting",
          "Start Date",
          "End Date",
          "Status",
        ]}
        columns="4rem 40rem 6rem 6rem 10rem repeat(2, 1fr) 12rem"
      >
        <Table.Header />
        <Table.Body
          data={clientProjects}
          renderItem={(project, index) => (
            <ClientProjectRow
              key={project.project_id}
              project={project}
              rnum={index}
            />
          )}
        />
      </Table>
    </>
  );
};
