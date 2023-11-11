import { PDFViewer, PDFDownloadLink, StyleSheet } from "@react-pdf/renderer";
import { useParams } from "react-router-dom";
import { useMoveBack } from "../hooks/useMoveBack";
import { useQueryClient } from "@tanstack/react-query";
import { HiDocumentArrowDown } from "react-icons/hi2";

import Row from "../ui/Row";
import ButtonText from "../ui/Buttons/ButtonText";
import ButtonIconText from "../ui/Buttons/ButtonIconText";
import { createContext, useContext } from "react";

// Create styles
const styles = StyleSheet.create({
  viewer: {
    width: "100%",
    height: "100vh",
    border: "none",
  },
});

const PdfPageContext = createContext();

const PDFPage = ({ children, document, fileName }) => {
  const value = {
    document,
    fileName,
  };
  return (
    <PdfPageContext.Provider value={value}>{children}</PdfPageContext.Provider>
  );
};

const Header = () => {
  const moveBack = useMoveBack(2);
  const { document, fileName } = useContext(PdfPageContext);
  return (
    <Row type="horizontal">
      <ButtonText onClick={moveBack}> ← Back</ButtonText>

      <PDFDownloadLink document={document} fileName={fileName}>
        <ButtonIconText icon={<HiDocumentArrowDown />} type="info">
          Download
        </ButtonIconText>
      </PDFDownloadLink>
    </Row>
  );
};

const Body = () => {
  const { document } = useContext(PdfPageContext);
  return (
    <PDFViewer style={styles.viewer} showToolbar={false}>
      {document}
    </PDFViewer>
  );
};

PDFPage.Header = Header;
PDFPage.Body = Body;

export default PDFPage;
