import { useParams } from "react-router-dom";
import { useQueryClient } from "@tanstack/react-query";

import { useOffer } from "../useOffer";
import { useServicesList } from "../../../hooks-api/useServicesList";
import { useSettings } from "../../settings/useSettings";

import Spinner from "../../../ui/Spinner";

import OfferPDFDocument from "./OfferPDFDocument";
import PDFPage from "../../../pdf/PDFPage";

// Create Document Component
const OfferPDF = () => {
  const { isLoading, error, offer: offerSingle = {} } = useOffer();
  const { serviceList } = useServicesList();
  const { offerId } = useParams();
  const { settings = {} } = useSettings();
  const { company_name, company_adresse, company_logo } = settings;

  console.log(company_logo);

  const queryClient = useQueryClient();
  const offer = queryClient.getQueryData(["offer", +offerId])
    ? queryClient.getQueryData(["offer", +offerId])
    : offerSingle;

  if (isLoading) return <Spinner />;

  return (
    <PDFPage
      document={
        <OfferPDFDocument
          offer={offer}
          serviceList={serviceList}
          owner={{ company_name, company_adresse }}
          logo={company_logo}
        />
      }
      fileName={`${offer.offer_number}.pdf`}
      error={error}
    >
      <PDFPage.Header />
      <PDFPage.Body>
        <OfferPDFDocument offer={offer} serviceList={serviceList} />
      </PDFPage.Body>
    </PDFPage>
  );
};

export default OfferPDF;
