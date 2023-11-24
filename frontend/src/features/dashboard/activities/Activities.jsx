import styled from "styled-components";
import Headline from "../../../ui/Headline";
import { useUsers } from "../../users/useUsers";
import { useTasks } from "../../tasks/useTasks";
import { formatDateTime } from "../../../utils/helpers";
import Tag from "../../../ui/Data/Tag";

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
  const { users } = useUsers();
  const { tasks } = useTasks();

  // const onlineUsers = users?.filter((user) =>
  //   user.refreshToken ? user : null
  // );

  console.log(tasks);

  return (
    <Sections>
      <Section>
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
                <>
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
                </>
              );
            })}
          </ActivityBody>
        </ActivityList>
      </Section>
      <Section>
        <Headline as="h3">Open tasks</Headline>
        <ActivityList>
          <ActivityHeader>
            <span>Task</span>
            <span>Add date</span>
          </ActivityHeader>
          <ActivityBody>
            {users.map((user) => {
              return (
                <>
                  <ActivityItem key={user.uid}>
                    <span>
                      <strong>{user.username}</strong>
                    </span>
                    <span>{formatDateTime(user.last_login)}</span>
                  </ActivityItem>
                </>
              );
            })}
          </ActivityBody>
        </ActivityList>
      </Section>
      <Section>
        <Headline as="h3">Working/Planed projects</Headline>
      </Section>
    </Sections>
  );
};

export default Activities;
