import { useFilterServices } from "./useFilterServices";
import { useServices } from "./useServices";
import { useSearchParams } from "react-router-dom";

import Spinner from "../../ui/Spinner";
import Table from "../../ui/Data/Table";
import ServiceRow from "./ServiceRow";
import Pagination from "../../ui/Pagination";
import Empty from "../../ui/Data/Empty";
import Error from "../../ui/Data/Error";

import { servicesCols } from "./ServiceParameters";
import Row from "../../ui/Row";
import Headline from "../../ui/Headline";
import ServicesTableOperations from "./ServicesTableOperations";
import AddEditService from "./AddEditService";

const ServicesTable = () => {
  const [searchParams] = useSearchParams();
  const { isLoading, error, services = {} } = useFilterServices();
  const { services: allServices } = useServices();

  //filter results
  const filteredTextValue = searchParams.get("filterByText");

  const shownServices = filteredTextValue
    ? allServices.filter((service) =>
        service.service_name.trim().toLowerCase().includes(filteredTextValue)
      )
    : services;

  if (isLoading) return <Spinner />;
  if (error)
    return (
      <Error
        message={error.message}
        record="services"
        firstRecord={true}
        addeditForm={<AddEditService />}
      />
    );
  if (allServices.length === 0) return <Empty resource="services" />;

  return (
    <>
      <Row type="horizontal">
        <Headline as="h1">Services</Headline>
        <ServicesTableOperations />
      </Row>
      <Table cols={servicesCols} columns="1fr 20rem 20rem 20rem 4rem">
        <Table.Header />

        {shownServices.length === 0 ? (
          <Empty resource="services" />
        ) : (
          <Table.Body
            data={shownServices}
            renderItem={(service) => (
              <ServiceRow key={service.service_id} service={service} />
            )}
          />
        )}

        <Table.Footer>
          <Pagination
            count={
              filteredTextValue ? shownServices.length : allServices.length
            }
            filter={!!filteredTextValue}
            resource="services_per_page"
          />
        </Table.Footer>
      </Table>
    </>
  );
};

export default ServicesTable;
