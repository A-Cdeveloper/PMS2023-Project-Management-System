export const useSplitServices = (services) => {
  const basicServices =
    services &&
    services.filter((bservice) => bservice.service_type === "basic");

  const optionalServices =
    services &&
    services.filter((bservice) => bservice.service_type === "optional");

  return { basicServices, optionalServices };
};
