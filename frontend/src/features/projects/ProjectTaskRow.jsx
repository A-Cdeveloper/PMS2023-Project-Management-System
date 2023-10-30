import { useNavigate } from "react-router-dom";
import {
  formatDate,
  formatDateTime,
  formatDuration,
} from "../../utils/helpers";
import styled from "styled-components";

import { taskStatus } from "../tasks//TaskParameters";

import Table from "../../ui/Data/Table";
import Tag from "../../ui/Data/Tag";

const Task = styled.div`
  font-weight: 500;
  padding-right: 1rem;
`;

const Link = styled.div`
  cursor: pointer;
  &:hover {
    color: ${(props) => props.theme.colors.primary[700]};
  }
`;

const StatusDiv = styled.div`
  & > span {
    width: 80%;
  }
`;

const ProjectTaskRow = ({ task, rnum }) => {
  const navigate = useNavigate();
  const {
    task_id,
    task_project_id,
    task_name,
    client_name,
    project_name,
    task_add_date,
    task_start_time,
    task_end_time,
    task_status,
    client_id,
  } = task;

  return (
    <Table.Row>
      <div>{rnum + 1}</div>
      <Task>
        <Link onClick={() => navigate(`/tasks/${task_id}`)}>{task_name}</Link>
      </Task>
      <div>{formatDate(task_add_date)}</div>
      <div>{formatDateTime(task_start_time)}</div>
      <div>{formatDateTime(task_end_time)}</div>
      <div>{formatDuration(task_start_time, task_end_time)}</div>
      <StatusDiv>
        {taskStatus.map((status) => {
          return (
            status.value === task_status && (
              <Tag key={task_status} type={status.value}>
                {status.label}
              </Tag>
            )
          );
        })}
      </StatusDiv>
    </Table.Row>
  );
};

export default ProjectTaskRow;
