import { useQueryClient } from "@tanstack/react-query";

import { useParams } from "react-router-dom";
import { useMoveBack } from "../../hooks/useMoveBack";
import { useUser } from "./useUser";
// import { formatDate, formatDateTime } from "../../utils/helpers";

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
// import { taskStatus } from "./TaskParameters";

// import useEditTask from "./useEditTask";

import ButtonGroup from "../../ui/Buttons/ButtonGroup";
// import { HiOutlineArrowTopRightOnSquare } from "react-icons/hi2";
import { formatDuration } from "../../utils/helpers";
import Input from "../../ui/Form/Input";

const UserDetail = () => {
  const moveBack = useMoveBack();
  const { user: userSingle = {} } = useUser();
  //   const { isEditLoading, editTask } = useEditTask();
  const { userId } = useParams();

  const queryClient = useQueryClient();
  const user = queryClient.getQueryData(["user", +userId])
    ? queryClient.getQueryData(["user", +userId])
    : userSingle;

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

  console.log(user);

  return (
    <>
      <Row type="horizontal">
        <Row type="horizontal">
          <Headline as="h3">
            {first_name} {last_name}
          </Headline>
          &nbsp;&nbsp;
        </Row>
        <ButtonText onClick={moveBack}> ← Back</ButtonText>
      </Row>

      {/* <Row type="horizontal">
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
                      taskId: task_id,
                      updatedTask: {
                        ...task,
                        task_start_time: e.target.value,
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
                      taskId: task_id,
                      updatedTask: {
                        ...task,
                        task_end_time: e.target.value,
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
              />
            </DataBoxContent>
          </DataBox>
        </DataDetailsContainer>

        <DataDetailsContainer>
          <DataBox>
            <DataBoxContent style={{ justifyContent: "end", border: "none" }}>
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
      </Row> */}
    </>
  );
};

export default UserDetail;
