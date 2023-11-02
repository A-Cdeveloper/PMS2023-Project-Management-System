import { View, Text } from "@react-pdf/renderer";
import { formatPrice } from "../../../utils/helpers";

export const OfferPDFDocumentServiceRow = ({
  service,
  styles,
  serviceList,
  rnb,
}) => {
  const currentService = serviceList
    ? serviceList.filter(
        (cservice) => cservice.service_id === service.service_id
      )[0]
    : {};

  const activeQuantity = service.qty_price_hour
    ? service.qty_price_hour
    : service.qty_price_total;
  const activePrice = currentService?.service_price_hour
    ? currentService?.service_price_hour
    : currentService?.service_price_total;

  const rowServiceStyle = (baseStyle) => {
    if (currentService?.service_type !== "optional") return baseStyle;
    return [baseStyle, styles.optional];
  };

  return (
    <View style={styles.body} key={service.service_id}>
      <Text style={rowServiceStyle(styles.rnumber)}>{rnb + 1}</Text>
      <View style={styles.item}>
        <Text style={rowServiceStyle(styles.names)}>
          {currentService.service_name}
        </Text>
        <Text style={rowServiceStyle(styles.description)}>
          {currentService?.service_description}
        </Text>
      </View>

      <Text style={rowServiceStyle(styles.price)}>
        {currentService?.service_price_hour
          ? formatPrice(currentService?.service_price_hour)
          : "-"}
      </Text>
      <Text style={rowServiceStyle(styles.price)}>
        {currentService?.service_price_total
          ? formatPrice(currentService?.service_price_total)
          : "-"}
      </Text>
      <Text style={rowServiceStyle(styles.std)}>
        {service.qty_price_hour
          ? service.qty_price_hour
          : service.qty_price_total}
      </Text>
      <Text style={rowServiceStyle(styles.gesamt)}>
        {formatPrice(activeQuantity * +activePrice)}
      </Text>
    </View>
  );
};
