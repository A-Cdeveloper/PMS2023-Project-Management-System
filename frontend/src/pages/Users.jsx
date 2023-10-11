import UsersTable from "../features/users/UsersTable";
import Headline from "../ui/Headline";
import Row from "../ui/Row";

import UsersTableOperations from "../features/users/UsersTableOperations";
// import FilterByDateInterval from "../ui/FilterByDateInterval";

const Users = () => {
  return (
    <>
      <Row type="horizontal">
        <Headline as="h1">Users</Headline>
        <UsersTableOperations />
      </Row>
      <UsersTable />
    </>
  );
};

export default Users;
