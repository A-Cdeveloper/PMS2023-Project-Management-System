import { useQueryClient } from "@tanstack/react-query";

import { useParams } from "react-router-dom";
import { useMoveBack } from "../../hooks/useMoveBack";
import { useTask } from "./useTask";
import { formatDate, formatDateTime } from "../../utils/helpers";

import Headline from "../../ui/Headline";
import ButtonText from "../../ui/Buttons/ButtonText";
import Button from "../../ui/Buttons/Button";
import Row from "../../ui/Row";
import Tag from "../../ui/Data/Tag";
import {
  DataDetailsContainer,
  DataBox,
  DataBoxTitle,
  DataBoxContent,
} from "../../ui/Data/DataDetails";
import { taskStatus } from "./TaskParameters";

import useEditTask from "./useEditTask";

import ButtonGroup from "../../ui/Buttons/ButtonGroup";
// import { HiOutlineArrowTopRightOnSquare } from "react-icons/hi2";
import { formatDuration } from "../../utils/helpers";

const TaskDetail = () => {
  const moveBack = useMoveBack();
  const { task: taskSingle = {} } = useTask();
  const { isEditLoading, editTask } = useEditTask();
  const { taskId } = useParams();

  const queryClient = useQueryClient();
  const task = queryClient.getQueryData(["task", +taskId])
    ? queryClient.getQueryData(["task", +taskId])
    : taskSingle;

  const {
    task_id,
    task_project_id,
    task_name,
    client_name,
    project_name,
    task_description,
    task_notice,
    task_add_date,
    task_start_time,
    task_end_time,
    task_status,
    client_id,
  } = task;

  console.log(task);

  return (
    <>
      <Row type="horizontal">
        <Row type="horizontal">
          <Headline as="h3">{task_name}</Headline>&nbsp;&nbsp;
          <Tag key={task_status} type={task_status}>
            {task_status}
          </Tag>
          &nbsp;&nbsp;
          {formatDuration(task_start_time, task_end_time)}
        </Row>
        <ButtonText onClick={moveBack}> ← Back</ButtonText>
      </Row>

      <Row type="horizontal">
        <DataDetailsContainer>
          <DataBox>
            <DataBoxTitle>Project</DataBoxTitle>
            <DataBoxContent>{project_name}</DataBoxContent>
          </DataBox>

          <DataBox>
            <DataBoxTitle>Client</DataBoxTitle>
            <DataBoxContent>{client_name}</DataBoxContent>
          </DataBox>

          <DataBox>
            <DataBoxTitle>Description</DataBoxTitle>
            <DataBoxContent>{task_description}</DataBoxContent>
          </DataBox>

          <DataBox>
            <DataBoxTitle>Notice</DataBoxTitle>
            <DataBoxContent>{task_notice}</DataBoxContent>
          </DataBox>
        </DataDetailsContainer>
        <DataDetailsContainer>
          <DataBox>
            <DataBoxTitle>Add date</DataBoxTitle>
            <DataBoxContent>{formatDate(task_add_date)}</DataBoxContent>
          </DataBox>
        </DataDetailsContainer>

        <DataDetailsContainer>
          <DataBox>
            <DataBoxTitle>Start date</DataBoxTitle>
            <DataBoxContent>{formatDateTime(task_start_time)}</DataBoxContent>
          </DataBox>

          <DataBox>
            <DataBoxTitle>End date</DataBoxTitle>
            <DataBoxContent>{formatDateTime(task_end_time)}</DataBoxContent>
          </DataBox>
          {/*<DataBox>
            <DataBoxTitle>End date</DataBoxTitle>
            <DataBoxContent>{formatDate(project_end_date)}</DataBoxContent>
          </DataBox>
          <DataBox>
            <DataBoxTitle>Tasks</DataBoxTitle>
            <DataBoxContent>{task_per_project}</DataBoxContent>
          </DataBox> */}
        </DataDetailsContainer>

        <DataDetailsContainer>
          <DataBox>
            <DataBoxContent style={{ justifyContent: "end", border: "none" }}>
              <ButtonGroup>
                {taskStatus.map((status, index) => {
                  return index !== 0 ? (
                    <Button
                      size="medium"
                      variation={
                        status.value === task_status ? "disabled" : null
                      }
                      active={
                        status.value === task_status ? status.value : null
                      }
                      key={status.value}
                      onClick={(e) =>
                        editTask(
                          {
                            taskId: task_id,
                            updatedTask: {
                              ...task,
                              task_status: status.value,
                            },
                          },
                          {
                            onSettled: () => {
                              queryClient.invalidateQueries({
                                queryKey: ["task", task_id],
                              });
                            },
                          }
                        )
                      }
                    >
                      {status.value}
                    </Button>
                  ) : null;
                })}
              </ButtonGroup>
            </DataBoxContent>
          </DataBox>
        </DataDetailsContainer>
      </Row>

      {/*  

        {project_status === "online" && (
          <DataDetailsContainer>
            <DataBox>
              <DataBoxTitle>Portfolio</DataBoxTitle>
              <DataBoxContent>
                <>
                  <Switch
                    checked={project_online === "Ja"}
                    onChange={(e) =>
                      editProject(
                        {
                          projectId: project_id,
                          updatedProject: {
                            ...project,
                            project_online: e.target.checked ? "Ja" : "",
                          },
                        },
                        {
                          onSettled: () => {
                            queryClient.invalidateQueries({
                              queryKey: ["project", project_id],
                            });
                          },
                        }
                      )
                    }
                  />
                </>
              </DataBoxContent>
            </DataBox>
          </DataDetailsContainer>
        )}

        {project_status === "online" && (
          <DataDetailsContainer>
            <DataBox>
              <DataBoxTitle>Update period</DataBoxTitle>
              <DataBoxContent>
                <>
                  <Select
                    defaultValue={project_update}
                    onChange={(e) =>
                      editProject(
                        {
                          projectId: project_id,
                          updatedProject: {
                            ...project,
                            project_update: e.target.value,
                          },
                        },
                        {
                          onSettled: () => {
                            queryClient.invalidateQueries({
                              queryKey: ["project", project_id],
                            });
                          },
                        }
                      )
                    }
                    disabled={isEditLoading}
                  >
                    {projectUpdateStatus.map((status) => (
                      <option key={status.label} value={status.value}>
                        {status.label}
                      </option>
                    ))}
                  </Select>
                </>
              </DataBoxContent>
            </DataBox>
            <DataBox>
              <DataBoxTitle>Last update</DataBoxTitle>
              <DataBoxContent>
                <Input
                  type="date"
                  defaultValue={
                    project_last_update
                      ? project_last_update.slice(0, -14)
                      : null
                  }
                  onChange={(e) =>
                    editProject(
                      {
                        projectId: project_id,
                        updatedProject: {
                          ...project,
                          project_last_update: e.target.value,
                        },
                      },
                      {
                        onSettled: () => {
                          queryClient.invalidateQueries({
                            queryKey: ["project", project_id],
                          });
                        },
                      }
                    )
                  }
                />
              </DataBoxContent>
            </DataBox>
          </DataDetailsContainer>
        )}


      

      {/* <Headline as="h2">Tasks</Headline> */}
    </>
  );
};

export default TaskDetail;
