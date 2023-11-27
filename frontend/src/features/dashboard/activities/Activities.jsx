import styled from "styled-components";

import { useProjects } from "../../projects/useProjects";
import { useUsers } from "../../users/useUsers";
import { useAllTasks } from "../../../hooks-api/useAllTasks";

import ActivitiesList from "./ActivitiesList";

import UserListItem from "./UserListItem";
import TaskListItem from "./TaskListItem";
import ProjectListItem from "./ProjectListItem";

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
  const { tasks } = useAllTasks();
  const { projects } = useProjects();
  const { users } = useUsers();

  return (
    <Sections>
      <Section>
        <ActivitiesList
          data={users}
          cols={["Username", "Role", "Last login", "Status"]}
          columns="7.5rem 6rem 11rem 7rem"
          statusList={[]}
          keyField="last_login"
          sorting="desc"
        >
          <ActivitiesList.Caption caption="Users" />
          <ActivitiesList.Header />
          <ActivitiesList.Body
            renderItem={(user) => <UserListItem user={user} key={user.uid} />}
          />
        </ActivitiesList>
      </Section>

      <Section>
        <ActivitiesList
          data={tasks}
          cols={["Task", "Add date"]}
          columns="25rem 15rem"
          statusList={["open", "working", "closed"]}
          keyField="task_status"
        >
          <ActivitiesList.Caption caption="Tasks" />
          <ActivitiesList.Header />
          <ActivitiesList.Body
            renderItem={(task) => (
              <TaskListItem task={task} key={task.task_id} />
            )}
          />
        </ActivitiesList>
      </Section>

      <Section>
        <ActivitiesList
          data={projects}
          cols={["Project", "Client", "Start date"]}
          columns="15rem 9rem 9rem"
          statusList={["working", "future"]}
          keyField="project_status"
        >
          <ActivitiesList.Caption caption="Projects" />
          <ActivitiesList.Header />
          <ActivitiesList.Body
            renderItem={(project) => (
              <ProjectListItem project={project} key={project.project_id} />
            )}
          />
        </ActivitiesList>
      </Section>

      {/* 
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
