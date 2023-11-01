import { PDFViewer, PDFDownloadLink, StyleSheet } from "@react-pdf/renderer";
import { useParams, useNavigate } from "react-router-dom";
import { useQueryClient } from "@tanstack/react-query";
import { HiDocumentArrowDown } from "react-icons/hi2";

import { useOffer } from "../useOffer";
import { allServices } from "../OffersParameters";

import Row from "../../../ui/Row";
import ButtonText from "../../../ui/Buttons/ButtonText";
import ButtonIconText from "../../../ui/Buttons/ButtonIconText";
import Spinner from "../../../ui/Spinner";

import OfferPDFDocument from "./OfferPDFDocument";

// Create styles
const styles = StyleSheet.create({
  viewer: {
    width: "100%",
    height: "100vh",
    border: "none",
  },
});

// Create Document Component
const OfferPDF = () => {
  const navigate = useNavigate();
  const { isLoading, offer: offerSingle = {} } = useOffer();
  const { offerId } = useParams();

  const queryClient = useQueryClient();
  const offer = queryClient.getQueryData(["offer", +offerId])
    ? queryClient.getQueryData(["offer", +offerId])
    : offerSingle;

  const serviceList = allServices();

  if (isLoading) return <Spinner />;

  return (
    <>
      <Row type="horizontal">
        <ButtonText onClick={() => navigate("/offers")}> ← Back</ButtonText>

        {/* download pdf */}
        <PDFDownloadLink
          document={
            <OfferPDFDocument offer={offer} serviceList={serviceList} />
          }
          fileName={`${offer.offer_number}.pdf`}
        >
          <ButtonIconText icon={<HiDocumentArrowDown />} type="info">
            Download
          </ButtonIconText>
        </PDFDownloadLink>
      </Row>

      {/* shoe pdf */}
      <PDFViewer style={styles.viewer} showToolbar={false}>
        <OfferPDFDocument offer={offer} serviceList={serviceList} />
      </PDFViewer>
    </>
  );
};

export default OfferPDF;
