import { useUsers } from "./useUsers";

import Spinner from "../../ui/Spinner";
import Table from "../../ui/Data/Table";
import Error from "../../ui/Data/Error";
import Empty from "../../ui/Data/Empty";
import UserRow from "./UserRow";

import { userCols } from "./UserParameters";
import { useSearchParams } from "react-router-dom";

const filteredUsers = (allUsers, filteredTextValue) => {
  if (filteredTextValue) {
    return allUsers.filter(
      (user) =>
        user.first_name.trim().toLowerCase().includes(filteredTextValue) ||
        user.last_name.trim().toLowerCase().includes(filteredTextValue) ||
        user.username.trim().toLowerCase().includes(filteredTextValue)
    );
  }

  return allUsers;
};

const UsersTable = () => {
  const [searchParams] = useSearchParams();
  const { isLoading, error, users: allUsers } = useUsers();

  //filter results
  const filteredTextValue = searchParams.get("filterByText");

  const shownUsers = filteredUsers(allUsers, filteredTextValue);

  if (isLoading) return <Spinner />;
  if (error) return <Error message={error.message} />;
  if (shownUsers.length === 0) return <Empty resource="users" />;

  return (
    <>
      <Table cols={userCols} columns="repeat(6, 1fr) 10rem 10rem  4rem">
        <Table.Header />
        <Table.Body
          data={shownUsers}
          renderItem={(user) => <UserRow key={user.uid} user={user} />}
        />
      </Table>
      {/* <Table.Footer>
        <Pagination
          count={
            !!filteredTextValue || !!filteredStatus
              ? shownTasks.length
              : allTasks.length
          }
          resource="tasks_per_page"
          filter={!!filteredTextValue || !!filteredStatus}
        />
      </Table.Footer> */}
    </>
  );
};

export default UsersTable;
