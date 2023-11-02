import { useServices } from "../features/services/useServices";

export const useServicesDropDown = () => {
  const { services } = useServices();

  const servicesList = services.map((service) => {
    return {
      value: service.service_id,
      label: service.service_name,
      service_price_hour: service.service_price_hour,
      service_price_total: service.service_price_total,
      service_type: service.service_type,
    };
  });

  return { fullServicesList: [{ value: "", label: "" }, ...servicesList] };
};
