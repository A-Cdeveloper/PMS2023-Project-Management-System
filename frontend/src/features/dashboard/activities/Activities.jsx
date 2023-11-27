import styled from "styled-components";
import Headline from "../../../ui/Headline";

import { useTasksByStatus } from "../../../hooks-api/useTasksByStatus";
import ButtonGroup from "../../../ui/Buttons/ButtonGroup";
import Button from "../../../ui/Buttons/Button";
import Row from "../../../ui/Row";
import { useEffect, useState } from "react";

import { useProjects } from "../../projects/useProjects";
import { useUsers } from "../../users/useUsers";
import ActivitiesList from "./ActivitiesList";

import UsersList from "./UsersList";
import TasksList from "./TasksList";
import ProjectsList from "./ProjectsList";

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

const Activities = () => {
  const [taskStatus, setTaskStatus] = useState("open");
  const [projectStatus, setProjectStatus] = useState("working");

  const { tasks } = useTasksByStatus(taskStatus);
  const { projects } = useProjects(projectStatus);
  const { users } = useUsers();

  const filteredProjects =
    projects &&
    projects.filter((proj) => proj.project_status === projectStatus);

  const changeTaskStatusHandler = (status) => {
    setTaskStatus(status);
  };
  const changeProjectStatusHandler = (status) => {
    setProjectStatus(status);
  };

  const filteredUsers =
    users &&
    users.sort((a, b) => new Date(b.last_login) - new Date(a.last_login));

  console.log(filteredUsers);

  return (
    <Sections>
      <Section>
        <ActivitiesList
          cols={["Username", "Role", "Last login", "Status"]}
          columns="7.5rem 6rem 11rem 7rem"
          status={null}
        >
          <ActivitiesList.Caption caption="Users status" />
          <ActivitiesList.Header />
          <ActivitiesList.Body
            data={filteredUsers}
            renderItem={(user) => <UsersList user={user} key={user.uid} />}
          />
        </ActivitiesList>
      </Section>

      <Section>
        <ActivitiesList
          cols={["Task", "Add date"]}
          columns="25rem 15rem"
          status={null}
        >
          <ActivitiesList.Caption caption="Tasks" />
          <ActivitiesList.Header />
          <ActivitiesList.Body
            data={tasks}
            renderItem={(task) => <TasksList task={task} key={task.task_id} />}
          />
        </ActivitiesList>
      </Section>

      <Section>
        <ActivitiesList
          cols={["Project", "Client", "Add date", "Start date"]}
          columns="11rem 9rem 7rem 7rem"
          status={null}
        >
          <ActivitiesList.Caption caption="Projects" />
          <ActivitiesList.Header />
          <ActivitiesList.Body
            data={filteredProjects}
            renderItem={(project) => (
              <ProjectsList project={project} key={project.project_id} />
            )}
          />
        </ActivitiesList>
      </Section>

      {/* <Section>
        <ActivityList>
          <ActivityCaption>
            <Headline as="h3">Users status</Headline>
          </ActivityCaption>
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
        <ActivityList>
          <ActivityCaption>
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
          </ActivityCaption>
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
        <ActivityList>
          <ActivityCaption>
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
          </ActivityCaption>

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
