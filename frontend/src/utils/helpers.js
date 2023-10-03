import { format, differenceInMinutes } from "date-fns";
import eoLocale from "date-fns/locale/de";

export const sortingArray = (array, field, order = "asc") => {
  if (order !== "asc")
    return array.sort((a, b) =>
      a[field].toLowerCase() < b[field].toLowerCase() ? 1 : -1
    );
  return array.sort((a, b) =>
    a[field].toLowerCase() < b[field].toLowerCase() ? -1 : 1
  );
};

export const formatDate = (date) => {
  if (!date) return "-";
  return format(new Date(date), "dd.MM.yyyy");
};

export const formatSqlDate = (date) => {
  if (!date) return "-";
  return format(new Date(date), "yyyy-MM-dd");
};

export const formatDateTime = (date) => {
  if (!date) return "-";
  return format(new Date(date), "dd.MM.yyyy HH:mm", {
    locale: eoLocale,
  });
};

export const formatDuration = (startDate, endDate) => {
  if (!startDate || !endDate) return "-";
  const duration = differenceInMinutes(new Date(endDate), new Date(startDate));
  if (duration < 1) return `less then minut`;
  if (duration >= 1 && duration <= 60) return `${duration} min`;
  if (duration > 60)
    return `${Math.floor(duration / 60)}h ${
      duration % 60 !== 0 ? `${duration % 60}min` : ""
    }`;
  return duration;
};

export const lastThirtyDays = () => {
  const date = new Date();
  date.setDate(date.getDate() - 30 + 1);
  return date.toISOString().split("T")[0];
};

////////////////////////////////////////////////////////////////////////////////
