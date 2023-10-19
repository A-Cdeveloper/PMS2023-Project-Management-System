import OffersTable from "../features/offers/OffersTable";

import OffersTableOperations from "../features/offers/OffersTableOperations";
import Headline from "../ui/Headline";
import Row from "../ui/Row";

const Offers = () => {
  return (
    <>
      <Row type="horizontal">
        <Headline as="h1">Offers</Headline>
        <OffersTableOperations />
      </Row>
      <OffersTable />
    </>
  );
};

export default Offers;
