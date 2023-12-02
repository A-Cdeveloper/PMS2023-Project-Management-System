import styled from "styled-components";

import { useProjects } from "../../projects/useProjects";
import { useUsers } from "../../users/useUsers";
import { useAllTasks } from "../../../hooks-api/useAllTasks";

import ActivitiesList from "./ActivitiesList";

import UserListItem from "./UserListItem";
import TaskListItem from "./TaskListItem";
import ProjectListItem from "./ProjectListItem";
import Empty from "../../../ui/Data/Empty";

const Sections = styled.div`
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;

  padding: 2rem 0;
  margin: 3rem 0;
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

  // const tasks = [];
  // const projects = [];

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
        {tasks.length !== 0 ? (
          <ActivitiesList
            data={tasks}
            cols={["Task", "Add date"]}
            columns="20rem 15rem"
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
        ) : (
          <Empty resource="Tasks" size="small" />
        )}
      </Section>

      <Section>
        {projects.length !== 0 ? (
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
        ) : (
          <Empty resource="Projects" size="small" />
        )}
      </Section>
    </Sections>
  );
};

export default Activities;
