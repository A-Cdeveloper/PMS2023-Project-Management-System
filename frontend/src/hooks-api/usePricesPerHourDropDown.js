import { useSettings } from "../features/settings/useSettings";
import { formatPrice } from "../utils/helpers";

export const usePricesPerHourDropDown = () => {
  const {
    settings: { regular_whour_price, special_whour_price },
  } = useSettings();

  return {
    pricePerHourList: [
      {
        value: "regular",
        label: `Regular price ${formatPrice(regular_whour_price)}`,
      },
      {
        value: "special",
        label: `Special price ${formatPrice(special_whour_price)}`,
      },
    ],
  };
};
