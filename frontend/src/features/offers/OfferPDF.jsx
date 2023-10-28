import {
  Document,
  Page,
  Text,
  View,
  StyleSheet,
  Image,
} from "@react-pdf/renderer";
import { PDFViewer } from "@react-pdf/renderer";

import logo from "../../../public/logo.png";

import { useParams } from "react-router-dom";

// Create styles
const styles = StyleSheet.create({
  viewer: {
    width: "100vw",
    height: "100vh",
  },
  page: {
    flexDirection: "row",
    flexWrap: "wrap",
    backgroundColor: "#fff",
    fontSize: "10px",
  },
  logoSection: {
    width: "100vw",
    flexDirection: "row",
    justifyContent: "flex-end",
    padding: 10,
  },
  logo: {
    width: "150",
  },
  section: {
    margin: 10,
    padding: 10,
    //flexGrow: 1,
    width: "50%",
  },
});

// Create Document Component
const OfferPDF = () => {
  const { offerId } = useParams();

  return (
    <PDFViewer style={styles.viewer} showToolbar={false}>
      <Document>
        <Page size="A4" style={styles.page}>
          <View style={styles.logoSection}>
            <Image src={logo} style={styles.logo} />
          </View>

          <View style={styles.section}>
            <Text>
              Norbert Rixner Webdesign Grillparzerstr. 5 79102 Freiburg
            </Text>
            <Text>
              Anette Weiss-Hakenjos Hebammenpraxis Hebelstr. 11 79400 Kandern
            </Text>
          </View>
        </Page>
      </Document>
    </PDFViewer>
  );
};

export default OfferPDF;
