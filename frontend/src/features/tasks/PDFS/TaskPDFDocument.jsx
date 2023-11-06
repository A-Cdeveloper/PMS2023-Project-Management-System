import {
  Document,
  Page,
  Text,
  View,
  StyleSheet,
  Image,
  Font,
} from "@react-pdf/renderer";

import logo from "./logo.png";
import {
  formatDate,
  formatPrice,
  formatDuration,
} from "../../../utils/helpers";

// Register font
Font.register({ family: "Helvetica" });

// Create styles
const styles = StyleSheet.create({
  page: {
    flexDirection: "row",
    flexWrap: "wrap",
    backgroundColor: "#fff",
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
    flexDirection: "columns",
    alignItems: "flex-end",
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
  optional: {
    opacity: 0.7,
  },
  name: {
    fontFamily: "Helvetica-Bold",
    opacity: 0.85,
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
    flexDirection: "column",
  },
  description: {
    fontSize: "8px",
    opacity: 0.8,
    whiteSpace: "pre-wrap",
  },

  std: {
    width: "50px",
    textAlign: "center",
  },
  price: {
    width: "70px",
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
  notice: {
    fontSize: "8px",
    opacity: 0.8,
  },
});

// Create Document Component
const TaskPDFDocument = ({ task, pricePerhour }) => {
  const {
    task_id,
    task_project_id,
    task_name,
    client_name,
    project_name,
    task_description,
    task_notice,
    task_add_date,
    task_start_time,
    task_end_time,
    task_status,
    client_id,
    task_price,
    task_client_adresse,
    task_invoice_date,
  } = task;

  const duration = formatDuration(task_start_time, task_end_time);

  return (
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
          <Text style={styles.client}>{task_client_adresse}</Text>
        </View>
        <View style={styles.datumSection}>
          <Text>Datum: {formatDate(task_invoice_date)}</Text>
        </View>

        <View style={styles.mainSection}>
          <View style={styles.title}>
            <Text>Project:</Text>
            <Text style={styles.bold}>{project_name}</Text>
          </View>
        </View>

        <View style={styles.mainSection}>
          <View style={styles.table}>
            <View style={styles.head}>
              <Text style={[styles.item, styles.bold]}>Bezeichnung</Text>
              <Text style={[styles.price, styles.bold]}>Preis/Std</Text>
              <Text style={[styles.std, styles.bold]}>Menge</Text>
              <Text style={[styles.gesamt, styles.bold]}>Gesamt</Text>
            </View>
          </View>
          <View style={styles.body}>
            <View style={styles.item}>
              <Text style={styles.names}>{task_name}</Text>
              <Text style={styles.description}>{task_description}</Text>
            </View>

            <Text style={styles.price}>{formatPrice(pricePerhour)}</Text>
            <Text style={styles.std}>{duration}</Text>
            <Text style={styles.gesamt}>{formatPrice(task_price)}</Text>
          </View>

          {/* table footer */}
          <View style={styles.body}>
            <Text style={[styles.item, styles.summe]}>Summe:</Text>
            <Text style={[styles.gesamt, styles.bold]}>
              {formatPrice(task_price)}
            </Text>
          </View>

          <View style={styles.mainSection}>
            <Text>Preise in EUR ohne MwSt.</Text>
          </View>
        </View>
      </Page>
    </Document>
  );
};

export default TaskPDFDocument;
