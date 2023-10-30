import Table from "../../ui/Data/Table";
import ProjectTaskRow from "./ProjectTaskRow";

export const ProjectTasks = ({ projectTasks }) => {
  return (
    <>
      <Table
        cols={[
          "#",
          "Task",
          "Add Date",
          "Start Date",
          "End Date",
          "Used time",
          "Status",
        ]}
        columns="4rem repeat(4, 1fr) 12rem 12rem"
      >
        <Table.Header />
        <Table.Body
          data={projectTasks}
          renderItem={(task, index) => (
            <ProjectTaskRow key={task.task_id} task={task} rnum={index} />
          )}
        />
      </Table>
    </>
  );
};
