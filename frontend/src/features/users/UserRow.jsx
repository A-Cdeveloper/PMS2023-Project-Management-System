import { useNavigate } from "react-router-dom";
import { useQueryClient } from "@tanstack/react-query";
import {
  formatDate,
  formatDateTime,
  formatDuration,
} from "../../utils/helpers";

import styled from "styled-components";
// import useCloneTask from "./useCloneTask";
// import useDeleteTask from "./useDeleteTask";

// import { singleTask } from "../../services/apiTasks";

// import { taskStatus } from "./TaskParameters";

import {
  HiEye,
  HiOutlineCheck,
  HiOutlineMinus,
  HiTrash,
} from "react-icons/hi2";

import Table from "../../ui/Data/Table";
// import Tag from "../../ui/Data/Tag";
import Menus from "../../ui/Menus";
import Modal from "../../ui/Modal";
// import AddEditTask from "./AddEditTask";
import ConfirmModal from "../../ui/ConfirmModal";

const User = styled.div`
  font-weight: 500;
  padding-right: 1rem;
`;

const CellIcon = styled.div`
  display: flex;

  & svg {
    width: 2rem;
    height: 2rem;
    margin: auto;
    // margin: 0 0.5rem;
  }
`;

const TaskRow = ({ user }) => {
  const navigate = useNavigate();
  //   const { isCloneLoading, cloneTask } = useCloneTask();
  //   const { isDeleteLoading, deleteTask } = useDeleteTask();
  const queryClient = useQueryClient();

  const {
    uid,
    first_name,
    last_name,
    username,
    email,
    created_date,
    last_login,
    role,
    verified,
  } = user;

  //   const prefetchTaskHandler = async (task_id) => {
  //     await queryClient.prefetchQuery({
  //       queryKey: ["task", task_id],
  //       queryFn: () => singleTask(task_id),
  //     });
  //   };

  return (
    <Table.Row>
      <User>{first_name}</User>
      <div>{last_name}</div>
      <div>{username}</div>
      <div>{email}</div>
      <div>{formatDateTime(created_date)}</div>
      <div>{formatDateTime(last_login)}</div>
      <div>{role}</div>
      <CellIcon>
        {verified === "1" ? <HiOutlineCheck /> : <HiOutlineMinus />}
      </CellIcon>

      <div>
        <Modal>
          <Menus>
            <Menus.Toggle id={uid} />

            <Menus.List id={uid}>
              <Modal.OpenButton opens="task-delete">
                <Menus.Button icon={<HiTrash />}>Delete</Menus.Button>
              </Modal.OpenButton>
            </Menus.List>
          </Menus>

          <Modal.Window name="task-delete">
            <ConfirmModal
              resourceName="task"
              operation="delete"
              // onConfirm={() => deleteTask(uid)}
              // disabled={isDeleteLoading}
            />
          </Modal.Window>
        </Modal>
      </div>
    </Table.Row>
  );
};

export default TaskRow;
