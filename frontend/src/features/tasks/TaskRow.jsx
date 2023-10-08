import { useNavigate } from "react-router-dom";
import { useQueryClient } from "@tanstack/react-query";
import {
  formatDate,
  formatDateTime,
  formatDuration,
} from "../../utils/helpers";

import styled from "styled-components";
import useCloneTask from "./useCloneTask";
import useDeleteTask from "./useDeleteTask";

import { singleTask } from "../../services/apiTasks";
import { taskStatus } from "./TaskParameters";
import { useAccessToken } from "../../context/authContext";

import {
  HiOutlineGlobeAlt,
  HiOutlineDocumentDuplicate,
  HiPencil,
  HiTrash,
  HiEye,
  HiOutlineCheck,
  HiOutlineMinus,
} from "react-icons/hi2";

import Table from "../../ui/Data/Table";
import Tag from "../../ui/Data/Tag";
import Menus from "../../ui/Menus";
import Modal from "../../ui/Modal";
import AddEditTask from "./AddEditTask";
import ConfirmModal from "../../ui/ConfirmModal";

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

const Project = styled.div`
  & > span {
    display: block;
    font-size: 1.2rem;
  }
`;

const StatusDiv = styled.div`
  & > span {
    width: 90%;
  }
`;

const TaskRow = ({ task }) => {
  const navigate = useNavigate();
  const { isCloneLoading, cloneTask } = useCloneTask();
  const { isDeleteLoading, deleteTask } = useDeleteTask();
  const queryClient = useQueryClient();
  const accessToken = useAccessToken();

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

  const prefetchTaskHandler = async (task_id) => {
    await queryClient.prefetchQuery({
      queryKey: ["task", task_id],
      queryFn: () => singleTask({ task_id, accessToken }),
    });
  };

  return (
    <Table.Row>
      <Task>{task_name}</Task>
      <Project>
        <Link onClick={() => navigate(`/projects/${task_project_id}`)}>
          {project_name}
        </Link>

        <span>
          <Link onClick={() => navigate(`/clients/${client_id}`)}>
            - {client_name}
          </Link>
        </span>
      </Project>
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
      <div>
        <Modal>
          <Menus>
            <Menus.Toggle id={task_id} />

            <Menus.List id={task_id}>
              <Menus.Button
                icon={<HiEye />}
                onClick={() => {
                  navigate(`/tasks/${task_id}`);
                }}
                onMouseOver={() => prefetchTaskHandler(task_id)}
              >
                See details
              </Menus.Button>

              <Modal.OpenButton opens="task-edit">
                <Menus.Button icon={<HiPencil />}>Edit</Menus.Button>
              </Modal.OpenButton>

              <Modal.OpenButton opens="task-clone">
                <Menus.Button icon={<HiOutlineDocumentDuplicate />}>
                  Duplicate
                </Menus.Button>
              </Modal.OpenButton>

              <Modal.OpenButton opens="task-delete">
                <Menus.Button icon={<HiTrash />}>Delete</Menus.Button>
              </Modal.OpenButton>
            </Menus.List>
          </Menus>
          <Modal.Window name="task-edit">
            <AddEditTask taskToEdit={task} />
          </Modal.Window>

          <Modal.Window name="task-clone">
            <ConfirmModal
              resourceName="task"
              operation="clone"
              onConfirm={() => cloneTask({ task_id, accessToken })}
              disabled={isCloneLoading}
            />
          </Modal.Window>
          <Modal.Window name="task-delete">
            <ConfirmModal
              resourceName="task"
              operation="delete"
              onConfirm={() => deleteTask({ task_id, accessToken })}
              disabled={isDeleteLoading}
            />
          </Modal.Window>
        </Modal>
      </div>
    </Table.Row>
  );
};

export default TaskRow;
