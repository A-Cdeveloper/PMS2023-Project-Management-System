import ServicesTable from "../features/services/ServicesTable";
import ServicesTableOperations from "../features/services/ServicesTableOperations";
import Headline from "../ui/Headline";
import Row from "../ui/Row";

const Services = () => {
  return (
    <>
      <Row type="horizontal">
        <Headline as="h1">Services</Headline>
        <ServicesTableOperations />
      </Row>
      <ServicesTable />
    </>
  );
};

export default Services;
