import { useServices } from "../features/services/useServices";

export const useServicesList = () => {
  const { services } = useServices();

  //console.log(services);

  const servicesFormated = services.map((service) => {
    return {
      service_id: service.service_id,
      service_name: service.service_name,
      service_description: service.service_description,
      service_price_hour: service.service_price_hour,
      service_price_total: service.service_price_total,
      service_type: service.service_type,
    };
  });

  return { serviceList: servicesFormated };
};
