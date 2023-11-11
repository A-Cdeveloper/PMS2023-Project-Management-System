import { createContext } from "react";
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
import { formatDate, formatPrice, formatDuration } from "../utils/helpers";

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
    flex: 1,
  },
  notice: {
    fontSize: "8px",
    opacity: 0.8,
  },
});

const PdfContext = createContext();

const PDFDocument = ({ children }) => {
  return (
    <PdfContext.Provider>
      <Document>
        <Page size="A4" style={styles.page}>
          {children}
        </Page>
      </Document>
    </PdfContext.Provider>
  );
};

const Logo = () => {
  return (
    <View style={styles.logoSection}>
      <Image src={logo} style={styles.logo} />
    </View>
  );
};

const OwnerClientAdresse = ({ children }) => {
  return (
    <View style={styles.mainSection}>
      <Text style={styles.author}>
        Norbert Rixner Webdesign Grillparzerstr. 5 79102 Freiburg
      </Text>
      <Text style={styles.client}>{children}</Text>
    </View>
  );
};

const DatumAndNumber = ({ number, date }) => {
  return (
    <View style={styles.datumSection}>
      {number && <Text>Angebotsnummer: {number}</Text>}
      <Text>Datum: {formatDate(date)}</Text>
    </View>
  );
};

const Caption = ({ children, subcaption }) => {
  return (
    <View style={styles.mainSection}>
      <View style={styles.title}>
        <Text style={styles.bold}>{children}</Text>
        <Text>- {subcaption}</Text>
      </View>
    </View>
  );
};

const Body = ({ children }) => {
  return (
    <View style={styles.mainSection}>
      <View style={styles.table}>{children}</View>
    </View>
  );
};

const Table = ({ children, cols }) => {
  return (
    <View style={styles.table}>
      {cols.length !== 0 && (
        <View style={styles.head}>
          {cols.map((item) => {
            const itemClassName = Object.keys(item)[0];
            const itemStyle = [styles[itemClassName], styles.bold];
            const itemValue = Object.values(item)[0];
            return (
              <Text key={{ itemValue }} style={itemStyle}>
                {itemValue}
              </Text>
            );
          })}
        </View>
      )}

      {children}
    </View>
  );
};

const TableServiceRow = ({
  rnb,
  currentItem,
  item,
  activeQuantity,
  activePrice,
}) => {
  const rowServiceStyle = (baseStyle) => {
    if (currentItem?.service_type !== "optional") return baseStyle;
    return [baseStyle, styles.optional];
  };

  return (
    <View style={styles.body} key={item.service_id}>
      <Text style={rowServiceStyle(styles.rnumber)}>{rnb + 1}</Text>
      <View style={styles.item}>
        <Text style={rowServiceStyle(styles.names)}>
          {currentItem?.service_name}
        </Text>
        <Text style={rowServiceStyle(styles.description)}>
          {currentItem?.service_description}
        </Text>
      </View>

      <Text style={rowServiceStyle(styles.price)}>
        {currentItem?.service_price_hour
          ? formatPrice(currentItem?.service_price_hour)
          : "-"}
      </Text>
      <Text style={rowServiceStyle(styles.price)}>
        {currentItem?.service_price_total
          ? formatPrice(currentItem?.service_price_total)
          : "-"}
      </Text>
      <Text style={rowServiceStyle(styles.std)}>
        {item.qty_price_hour ? item.qty_price_hour : item.qty_price_total}
      </Text>
      <Text style={rowServiceStyle(styles.gesamt)}>
        {formatPrice(activeQuantity * +activePrice)}
      </Text>
    </View>
  );
};

const TableTaskRow = ({ item, pricePerhour }) => {
  const duration = formatDuration(item.task_start_time, item.task_end_time);
  return (
    <View style={styles.body}>
      <View style={styles.item}>
        <Text style={styles.names}>{item.task_name}</Text>
        <Text style={styles.description}>{item.task_description}</Text>
      </View>

      <Text style={styles.price}>{formatPrice(pricePerhour)}</Text>
      <Text style={styles.std}>{duration}</Text>
      <Text style={styles.gesamt}>{formatPrice(item.task_price)}</Text>
    </View>
  );
};

const Total = ({ sum }) => {
  return (
    <View style={styles.body}>
      <Text style={[styles.summe, styles.bold]}>Summe: {formatPrice(sum)}</Text>
    </View>
  );
};

const Footer = ({ notice }) => {
  return (
    <>
      <View style={styles.body}>
        <View style={[styles.title, styles.notice]}>
          <Text>Notice:</Text>
          <Text>{notice}</Text>
        </View>
      </View>
      <View style={styles.mainSection}>
        <Text>Preise in EUR ohne MwSt.</Text>
      </View>
    </>
  );
};

PDFDocument.Logo = Logo;
PDFDocument.OwnerClientAdresse = OwnerClientAdresse;
PDFDocument.DatumAndNumber = DatumAndNumber;
PDFDocument.Caption = Caption;
PDFDocument.Body = Body;
PDFDocument.Table = Table;
PDFDocument.TableServiceRow = TableServiceRow;
PDFDocument.TableTaskRow = TableTaskRow;
PDFDocument.Total = Total;
PDFDocument.Footer = Footer;

export default PDFDocument;
