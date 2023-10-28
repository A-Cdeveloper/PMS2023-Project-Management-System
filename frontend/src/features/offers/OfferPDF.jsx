import {
  Document,
  Page,
  Text,
  View,
  StyleSheet,
  Image,
  Font,
} from "@react-pdf/renderer";
import { PDFViewer } from "@react-pdf/renderer";
import logo from "../../../public/logo.png";
import { useParams } from "react-router-dom";
import Row from "../../ui/Row";
import ButtonText from "../../ui/Buttons/ButtonText";
import { useMoveBack } from "../../hooks/useMoveBack";

// Register font
Font.register({ family: "Helvetica" });

// Create styles
const styles = StyleSheet.create({
  viewer: {
    width: "100%",
    height: "100vh",
    border: "none",
  },
  page: {
    flexDirection: "row",
    flexWrap: "wrap",
    backgroundColor: "#fff",
    fontSize: "10px",
    padding: "10px 45px",
    fontSize: "9px",
    lineHeight: 1.3,
    fontFamily: "Helvetica",
  },
  mainSection: {
    margin: "10px 0px",
    padding: 0,
    //flexGrow: 1,
    width: "100%",
  },

  logoSection: {
    width: "100vw",
    flexDirection: "row",
    justifyContent: "flex-end",
    padding: "10px 0px",
  },

  datumSection: {
    width: "100vw",
    flexDirection: "row",
    justifyContent: "flex-end",
    padding: 0,
  },

  logo: {
    width: "120",
  },

  table: {},
  head: {
    flexDirection: "row",
    justifyContent: "space-between",
    padding: "5px",
    gap: "10px",
    borderBottom: "1px",
    borderTop: "1px",
    borderBottomColor: "#ddd",
    borderTopColor: "#ddd",
  },
  body: {
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
    padding: "10px 5px",
    gap: "10px",
    borderBottom: "1px",
    borderBottomColor: "#ddd",
  },

  bold: {
    fontFamily: "Helvetica-Bold",
  },
  author: {
    fontSize: "7px",
    marginBottom: "15px",
    textDecoration: "underline",
    opacity: 0.6,
  },
  client: {
    width: "33%",
  },
  title: {
    fontSize: "10px",
    display: "flex",
    flexDirection: "column",
  },
  rnumber: {
    width: "20px",
    textAlign: "center",
    fontWeight: "bold",
  },
  item: {
    flex: 1,
    paddingRight: "10px",
  },
  std: {
    width: "20px",
    textAlign: "center",
  },
  price: {
    width: "40px",
    textAlign: "right",
  },
  gesamt: {
    width: "50px",
    textAlign: "right",
  },
  summe: {
    textAlign: "right",
    fontFamily: "Helvetica-Bold",
  },
});

// Create Document Component
const OfferPDF = () => {
  const { offerId } = useParams();
  const moveBack = useMoveBack();

  return (
    <>
      <Row type="horizontal">
        <ButtonText onClick={moveBack}> ← Back</ButtonText>
      </Row>

      <PDFViewer style={styles.viewer} showToolbar={false}>
        <Document>
          <Page size="A4" style={styles.page}>
            {/*  */}
            <View style={styles.logoSection}>
              <Image src={logo} style={styles.logo} />
            </View>

            <View style={styles.mainSection}>
              <Text style={styles.author}>
                Norbert Rixner Webdesign Grillparzerstr. 5 79102 Freiburg
              </Text>
              <Text style={styles.client}>
                Anette Weiss-Hakenjos Hebammenpraxis Hebelstr. 11 79400 Kandern
              </Text>
            </View>

            <View style={styles.datumSection}>
              <Text>Datum: 15.06.2021</Text>
            </View>

            <View style={styles.mainSection}>
              <View style={styles.title}>
                <Text style={styles.bold}>Angebot für Interflex</Text>
                <Text>- Wordpress Multi-Sites</Text>
              </View>
            </View>

            <View style={styles.mainSection}>
              <View style={styles.table}>
                <View style={styles.head}>
                  <Text style={[styles.rnumber, styles.bold]}>Pos. </Text>
                  <Text style={[styles.item, styles.bold]}>Bezeichnung</Text>
                  <Text style={[styles.std, styles.bold]}>STD</Text>
                  <Text style={[styles.price, styles.bold]}>Preis</Text>
                  <Text style={[styles.gesamt, styles.bold]}>Gesamt</Text>
                </View>

                <View style={styles.body}>
                  <Text style={styles.rnumber}>1</Text>
                  <Text style={styles.item}>
                    Wordpress Multi-Sites Installation 1.Installieren und
                    Konfigurations-Plugin WPML 2.Vorbereiten des
                    Hauptstandortelements für die Übersetzung (Fußtext,
                    Kontaktformular, acf filds...) 3.Duplizieren/übersetzen Sie
                    alle Seiteninhalte. 4.Konfiguration des Menüs 5.Endprüfung
                  </Text>
                  <Text style={styles.std}>14</Text>
                  <Text style={styles.price}>75.00 € </Text>
                  <Text style={styles.gesamt}>1,050.00 €</Text>
                </View>

                <View style={styles.body}>
                  <Text style={styles.rnumber}>2</Text>
                  <Text style={styles.item}>
                    Wordpress Multi-Sites Installation 1.Installieren und
                    Konfigurations-Plugin 4.Konfiguration des Menüs 5.Endprüfung
                  </Text>
                  <Text style={styles.std}>14</Text>
                  <Text style={styles.price}>75.00 € </Text>
                  <Text style={styles.gesamt}>1,050.00 €</Text>
                </View>
              </View>

              <View style={styles.body}>
                <Text style={styles.rnumber}></Text>
                <Text style={[styles.item, styles.summe]}>Summe:</Text>
                <Text style={[styles.std, styles.bold]}>14</Text>
                <Text style={styles.price}></Text>
                <Text style={[styles.gesamt, styles.bold]}>1,050.00 €</Text>
              </View>
            </View>

            <View style={styles.mainSection}>
              <Text>Preise in EUR ohne MwSt.</Text>
            </View>

            {/*  */}
          </Page>
        </Document>
      </PDFViewer>
    </>
  );
};

export default OfferPDF;
