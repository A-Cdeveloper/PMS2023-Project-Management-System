import { useNavigate } from "react-router-dom";
import { useQueryClient } from "@tanstack/react-query";
import {
  formatDate,
  formatDateTime,
  formatDuration,
} from "../../utils/helpers";

import styled from "styled-components";
// import useCloneProject from "../projects/useCloneProject";
// import useDeleteProject from "../projects/useDeleteProject";

// import { singleProject } from "../../services/apiProjects";

import { taskStatus } from "./TaskParameters";

import Table from "../../ui/Data/Table";
import Tag from "../../ui/Data/Tag";
import Menus from "../../ui/Menus";
import Modal from "../../ui/Modal";
// import AddEditProject from "../projects/AddEditProject";
// import ConfirmModal from "../../ui/ConfirmModal";

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
  // const { isCloneLoading, cloneProject } = useCloneProject();
  // const { isDeleteLoading, deleteProject } = useDeleteProject();
  const queryClient = useQueryClient();

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

  // const prefetchProjectHandler = async (project_id) => {
  //   await queryClient.prefetchQuery({
  //     queryKey: ["project", project_id],
  //     queryFn: () => singleProject(project_id),
  //   });
  // };

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
      <div>-</div>
      {/*   <CellIcon>
        {project_update ? (
          <>
            {project_update}
            <br />
            {formatDate(project_last_update)}
          </>
        ) : (
          <HiOutlineMinus />
        )}
      </CellIcon>
      <CellIcon>
        {project_online === "Ja" ? <HiOutlineCheck /> : <HiOutlineMinus />}
      </CellIcon> */}

      {/* <div>
        <Modal>
          <Menus>
            <Menus.Toggle id={project_id} />

            <Menus.List id={project_id}>
              <Menus.Button
                icon={<HiEye />}
                onClick={() => {
                  navigate(`/projects/${project_id}`);
                }}
                onMouseOver={() => prefetchProjectHandler(project_id)}
              >
                See details
              </Menus.Button>

              <Modal.OpenButton opens="project-edit">
                <Menus.Button icon={<HiPencil />}>Edit</Menus.Button>
              </Modal.OpenButton>

              <Modal.OpenButton opens="project-clone">
                <Menus.Button icon={<HiOutlineDocumentDuplicate />}>
                  Duplicate
                </Menus.Button>
              </Modal.OpenButton>

              <Modal.OpenButton opens="project-delete">
                <Menus.Button icon={<HiTrash />}>Delete</Menus.Button>
              </Modal.OpenButton>
            </Menus.List>
          </Menus>
          <Modal.Window name="project-edit">
            <AddEditProject projectToEdit={project} />
          </Modal.Window>

          <Modal.Window name="project-clone">
            <ConfirmModal
              resourceName="project"
              operation="clone"
              onConfirm={() => cloneProject(project_id)}
              disabled={isCloneLoading}
            />
          </Modal.Window>
          <Modal.Window name="project-delete">
            <ConfirmModal
              resourceName="project"
              operation="delete"
              onConfirm={() => deleteProject(project_id)}
              disabled={isDeleteLoading}
            />
          </Modal.Window>
        </Modal>
      </div> */}
    </Table.Row>
  );
};

export default TaskRow;
