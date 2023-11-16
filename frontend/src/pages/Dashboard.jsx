import Headline from "../ui/Headline";
import Row from "../ui/Row";
import DashboardLayout from "../features/dashboard/DashboardLayout";

const Dashboard = () => {
  return (
    <>
      <Row type="horizontal">
        <Headline as="h1">Dashboard</Headline>
        {/* <UsersTableOperations /> */}
      </Row>
      <DashboardLayout />
    </>
  );
};

export default Dashboard;
