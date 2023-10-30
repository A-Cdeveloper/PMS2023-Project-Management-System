import Table from "../../ui/Data/Table";
import ClientTaskRow from "./ClientTaskRow";

export const ClientTasks = ({ clientTasks }) => {
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
          data={clientTasks}
          renderItem={(task, index) => (
            <ClientTaskRow key={task.task_id} task={task} rnum={index} />
          )}
        />
      </Table>
    </>
  );
};
