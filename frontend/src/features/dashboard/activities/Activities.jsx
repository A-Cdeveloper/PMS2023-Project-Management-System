import styled from "styled-components";
import Headline from "../../../ui/Headline";

import { useTasksByStatus } from "../../../hooks-api/useTasksByStatus";
import { formatDateTime } from "../../../utils/helpers";
import Tag from "../../../ui/Data/Tag";
import ButtonGroup from "../../../ui/Buttons/ButtonGroup";
import Button from "../../../ui/Buttons/Button";
import Row from "../../../ui/Row";
import { useEffect, useState } from "react";
import { useQueryClient } from "@tanstack/react-query";
import { useProjects } from "../../projects/useProjects";

const Sections = styled.div`
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  gap: 2rem;
  padding: 2rem 0;
`;
const Section = styled.div`
  background: white;
  flex: 1;
  padding: 1.5rem 1rem 1.5rem 2rem;
  border: 1px solid ${(props) => props.theme.baseColors.grey100};
  border-radius: ${(props) => props.theme.border.borderRadius.md};
`;

const ActivityList = styled.ul`
  list-style: none;
  padding: 1.5rem 0;
`;

const ActivityBody = styled.div`
  height: 20rem;
  overflow: hidden;
  overflow-y: auto;
  padding-right: 1rem;
`;

const ActivityItem = styled.li`
  display: grid;
  gap: 1.2rem;
  grid-template-columns: 7.5rem 6rem 11rem 6rem;
  border-bottom: 1px solid ${(props) => props.theme.baseColors.grey200};
  align-items: center;
  padding: 0.8rem 0.6rem;
  font-size: 1.25rem;
`;

const ActivityHeader = styled(ActivityItem)`
  border-top: 1px solid ${(props) => props.theme.baseColors.grey200};
  background: ${(props) => props.theme.baseColors.grey100};
  text-transform: uppercase;
  padding: 0.4rem 0.6rem;
  color: ${(props) => props.theme.baseColors.grey700};
  font-size: 1.1rem;
`;

const Activities = () => {
  // const [taskStatus, setTaskStatus] = useState("open");
  // const [projectStatus, setProjectStatus] = useState("working");

  // const { tasks } = useTasksByStatus(taskStatus);
  // const { projects } = useProjects();

  // const queryClient = useQueryClient();

  // // const projects =
  // //   queryClient.getQueryData(["projects"], { exact: false }) || [];

  // const filteredProjects =
  //   projects &&
  //   projects.filter((proj) => proj.project_status === projectStatus);

  // const users = queryClient.getQueryData(["users"], { exact: false }) || [];

  // //console.log("RENDER");
  // console.log(projects);
  // console.log(users);

  // const changeTaskStatusHandler = (status) => {
  //   setTaskStatus(status);
  // };
  // const changeProjectStatusHandler = (status) => {
  //   setProjectStatus(status);
  // };

  // const onlineUsers = users?.filter((user) =>
  //   user.refreshToken ? user : null
  // );

  return (
    <Sections>
      {/* <Section>
        <Headline as="h3">Users status</Headline>
        <ActivityList>
          <ActivityHeader>
            <span>Username</span>
            <span>Role</span>
            <span>Last login</span>
            <span>Status</span>
          </ActivityHeader>
          <ActivityBody>
            {users.map((user) => {
              return (
                <ActivityItem key={user.uid}>
                  <span>
                    <strong>{user.username}</strong>
                  </span>
                  <span>{user.role}</span>
                  <span>{formatDateTime(user.last_login)}</span>
                  <Tag type={user.refreshToken ? "online" : null}>
                    {user.refreshToken ? "online" : null}
                  </Tag>
                </ActivityItem>
              );
            })}
          </ActivityBody>
        </ActivityList>
      </Section>
      <Section>
        <Row type="horizontal" style={{ padding: 0 }}>
          <Headline as="h3">Tasks {tasks.length}</Headline>
          <ButtonGroup>
            <Button
              size="small"
              onClick={() => changeTaskStatusHandler("open")}
            >
              open
            </Button>
            <Button
              size="small"
              onClick={() => changeTaskStatusHandler("working")}
            >
              working
            </Button>
            <Button
              size="small"
              onClick={() => changeTaskStatusHandler("closed")}
            >
              closed
            </Button>
          </ButtonGroup>
        </Row>
        <ActivityList>
          <ActivityHeader>
            <span>Task</span>
            <span>Add date</span>
          </ActivityHeader>
          <ActivityBody>
            {tasks.map((task) => {
              return (
                <ActivityItem key={task.task_id}>
                  <span>
                    <strong>{task.task_name}</strong>
                  </span>
                  <span>{formatDateTime(task.task_add_date)}</span>
                </ActivityItem>
              );
            })}
          </ActivityBody>
        </ActivityList>
      </Section>
      <Section>
        <Row type="horizontal" style={{ padding: 0 }}>
          <Headline as="h3">Projects{filteredProjects.length}</Headline>
          <ButtonGroup>
            <Button
              size="small"
              onClick={() => changeProjectStatusHandler("working")}
            >
              working
            </Button>
            <Button
              size="small"
              onClick={() => changeProjectStatusHandler("future")}
            >
              planed
            </Button>
          </ButtonGroup>
        </Row>
        <ActivityList>
          <ActivityHeader>
            <span>Project</span>
            <span>Client</span>
            <span>Add date</span>
            <span>Start date</span>
          </ActivityHeader>
          <ActivityBody>
            {filteredProjects.map((project) => {
              return (
                <ActivityItem key={project.project_id}>
                  <span>
                    <strong>{project.project_name}</strong>
                  </span>
                  <span>{project.client_name}</span>
                  <span>{formatDateTime(project.project_start_date)}</span>
                </ActivityItem>
              );
            })}
          </ActivityBody>
        </ActivityList>
      </Section> */}
    </Sections>
  );
};

export default Activities;
