import PDFDocument from "../../../pdf/PDFDocument";

export const OfferPDFDocumentServiceRow = ({
  service,
  serviceList = {},
  rnb,
}) => {
  const currentService = serviceList
    ? serviceList.filter(
        (cservice) => cservice.service_id === service.service_id
      )[0]
    : null;

  const activeQuantity = service.qty_price_hour
    ? service.qty_price_hour
    : service.qty_price_total;
  const activePrice = currentService?.service_price_hour
    ? currentService?.service_price_hour
    : currentService?.service_price_total;

  return (
    <PDFDocument.TableServiceRow
      key={rnb}
      currentItem={currentService}
      item={service}
      activeQuantity={activeQuantity}
      activePrice={activePrice}
      rnb={rnb}
    />
  );
};
