import { useQueryClient } from "@tanstack/react-query";

import { useParams } from "react-router-dom";
import { useMoveBack } from "../../hooks/useMoveBack";
import { useTask } from "./useTask";
import { formatDate, formatDuration } from "../../utils/helpers";
import { useAccessToken } from "../../context/authContext";

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

import Input from "../../ui/Form/Input";

const TaskDetail = () => {
  const moveBack = useMoveBack();
  const { task: taskSingle = {} } = useTask();
  const { isEditLoading, editTask } = useEditTask();
  const { taskId } = useParams();
  const accessToken = useAccessToken();

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

  // console.log(task);

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
            <DataBoxContent>
              <Input
                type="datetime-local"
                defaultValue={
                  task_start_time ? task_start_time.slice(0, -8) : null
                }
                onBlur={(e) =>
                  editTask(
                    {
                      task_id: task_id,
                      updatedTask: {
                        ...task,
                        task_start_time: e.target.value,
                      },
                      accessToken,
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
              />
            </DataBoxContent>
          </DataBox>

          <DataBox>
            <DataBoxTitle>End date</DataBoxTitle>
            <DataBoxContent>
              <Input
                type="datetime-local"
                defaultValue={task_end_time ? task_end_time.slice(0, -8) : null}
                onBlur={(e) =>
                  editTask(
                    {
                      task_id: task_id,
                      updatedTask: {
                        ...task,
                        task_end_time: e.target.value,
                      },
                      accessToken,
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
              />
            </DataBoxContent>
          </DataBox>
          <DataBox>
            <DataBoxTitle>Duration</DataBoxTitle>
            <DataBoxContent>
              {formatDuration(task_start_time, task_end_time)}
            </DataBoxContent>
          </DataBox>

          <DataBox>
            <DataBoxTitle>Status</DataBoxTitle>
            <DataBoxContent>
              <ButtonGroup>
                {taskStatus.map((status, index) => {
                  return index !== 0 ? (
                    <Button
                      size="small"
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
                            task_id: task_id,
                            updatedTask: {
                              ...task,
                              task_status: status.value,
                            },
                            accessToken,
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
    </>
  );
};

export default TaskDetail;
