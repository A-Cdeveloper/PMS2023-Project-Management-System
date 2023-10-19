import OffersTable from "../features/offers/OffersTable";

//import ServicesTableOperations from "../features/services/ServicesTableOperations";
import Headline from "../ui/Headline";
import Row from "../ui/Row";

const Offers = () => {
  return (
    <>
      <Row type="horizontal">
        <Headline as="h1">Offers</Headline>
        {/* <ServicesTableOperations /> */}
      </Row>
      <OffersTable />
    </>
  );
};

export default Offers;
