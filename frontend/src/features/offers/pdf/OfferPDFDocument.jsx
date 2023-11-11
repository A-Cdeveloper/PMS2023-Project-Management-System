import { OfferPDFDocumentServiceRow } from "./OfferPDFDocumentServiceRow";
import { useSplitServices } from "../../../hooks/useSplitServices";

import PDFDocument from "../../../pdf/PDFDocument";

// Create Document Component
const OfferPDFDocument = ({ offer, serviceList }) => {
  const {
    offer_id,
    offer_number,
    client_adresse: default_client_addresse,
    offer_client_adresse,
    project_name,
    offer_type,
    offer_caption,
    offer_date,
    offer_price,
    offer_notice,
    services,
  } = offer;

  const includedServices = services && JSON.parse(services);

  const { basicServices, optionalServices } =
    useSplitServices(includedServices);

  return (
    <PDFDocument>
      <PDFDocument.Logo />

      <PDFDocument.OwnerClientAdresse>
        {offer_client_adresse ? offer_client_adresse : default_client_addresse}
      </PDFDocument.OwnerClientAdresse>

      <PDFDocument.DatumAndNumber number={offer_number} date={offer_date} />

      <PDFDocument.Caption subcaption={offer_caption}>
        {offer_type && offer_type.charAt(0).toUpperCase() + offer_type.slice(1)}{" "}
        für {project_name}
      </PDFDocument.Caption>

      <PDFDocument.Body>
        <PDFDocument.Table
          cols={[
            { rnumber: "Pos." },
            { item: "Bezeichnung" },
            { price: "Preis/Std" },
            { price: "Preis/Artikel" },
            { std: "Menge" },
            { gesamt: "Gesamt" },
          ]}
        >
          {basicServices &&
            basicServices.map((item, index) => {
              return (
                <OfferPDFDocumentServiceRow
                  key={item.service_id}
                  service={item}
                  serviceList={serviceList}
                  rnb={index}
                />
              );
            })}
        </PDFDocument.Table>
        <PDFDocument.Total sum={offer_price}></PDFDocument.Total>
        <PDFDocument.Table cols={[]}>
          {optionalServices &&
            optionalServices.map((item, index) => {
              return (
                <OfferPDFDocumentServiceRow
                  key={item.service_id}
                  service={item}
                  serviceList={serviceList}
                  rnb={index}
                />
              );
            })}
        </PDFDocument.Table>
      </PDFDocument.Body>

      <PDFDocument.Footer notice={offer_notice} />
    </PDFDocument>
  );
};

export default OfferPDFDocument;
