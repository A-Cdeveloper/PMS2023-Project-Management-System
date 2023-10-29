import { View, Text } from "@react-pdf/renderer";
import { formatPrice } from "../../../utils/helpers";

export const OfferPDFServiceRow = ({ service, styles, serviceList, rnb }) => {
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

  return (
    <View style={styles.body} key={service.service_id}>
      <Text style={styles.rnumber}>{rnb + 1}</Text>
      <Text style={styles.item}>
        <>{currentService.service_name}</>
      </Text>

      <Text style={styles.price}>
        {currentService?.service_price_hour
          ? formatPrice(currentService?.service_price_hour)
          : "-"}
      </Text>
      <Text style={styles.price}>
        {currentService?.service_price_total
          ? formatPrice(currentService?.service_price_total)
          : "-"}
      </Text>
      <Text style={styles.std}>
        {service.qty_price_hour
          ? service.qty_price_hour
          : service.qty_price_total}
      </Text>
      <Text style={styles.gesamt}>
        {formatPrice(activeQuantity * +activePrice)}
      </Text>
    </View>
  );
};
