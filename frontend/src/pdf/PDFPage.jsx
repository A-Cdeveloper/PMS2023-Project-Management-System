import { PDFViewer, PDFDownloadLink, StyleSheet } from "@react-pdf/renderer";
import { useParams } from "react-router-dom";
import { useMoveBack } from "../hooks/useMoveBack";
import { useQueryClient } from "@tanstack/react-query";
import { HiDocumentArrowDown } from "react-icons/hi2";

import Row from "../ui/Row";
import ButtonText from "../ui/Buttons/ButtonText";
import ButtonIconText from "../ui/Buttons/ButtonIconText";
import { createContext, useContext } from "react";
import Headline from "../ui/Headline";
import Error from "../ui/Data/Error";

// Create styles
const styles = StyleSheet.create({
  viewer: {
    width: "100%",
    height: "100vh",
    border: "none",
  },
});

const PdfPageContext = createContext();

const PDFPage = ({ children, document, fileName, error }) => {
  const value = {
    document,
    fileName,
    error,
  };
  return (
    <PdfPageContext.Provider value={value}>{children}</PdfPageContext.Provider>
  );
};

const Header = () => {
  const moveBack = useMoveBack(2);
  const { document, fileName, error } = useContext(PdfPageContext);

  if (error) {
    return (
      <>
        <Row type="horizontal">
          <ButtonText onClick={moveBack}> ← Back</ButtonText>
        </Row>
        <Error message={error.message} />
      </>
    );
  }

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
  const { document, error } = useContext(PdfPageContext);
  if (error) return;
  return (
    <PDFViewer style={styles.viewer} showToolbar={false}>
      {document}
    </PDFViewer>
  );
};

PDFPage.Header = Header;
PDFPage.Body = Body;

export default PDFPage;
