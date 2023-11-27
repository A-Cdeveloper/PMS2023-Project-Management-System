import { NavLink } from "react-router-dom";
import ActivitiesList from "./ActivitiesList";
import { formatDateTime } from "../../../utils/helpers";

const TaskListItem = ({ task }) => {
  return (
    <ActivitiesList.Item key={task.task_id}>
      <span>
        <strong>
          <NavLink to={`/tasks/${task.task_id}`}>{task.task_name}</NavLink>
        </strong>
      </span>
      <span>{formatDateTime(task.task_add_date)}</span>
    </ActivitiesList.Item>
  );
};

export default TaskListItem;
