import {
  format,
  differenceInMinutes,
  differenceInSeconds,
  differenceInHours,
} from "date-fns";

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
  const convertDate = new Date(date).toLocaleString("de-DE", {
    day: "2-digit",
    month: "2-digit",
    year: "numeric",
  });
  return convertDate;
};

export const formatSqlDate = (date) => {
  if (!date) return "-";
  return format(new Date(date), "yyyy-MM-dd");
};

export const formatDateTime = (date) => {
  if (!date) return "-";
  const convertDate = new Date(date).toLocaleString("de-DE", {
    day: "2-digit",
    month: "2-digit",
    year: "numeric",
    hour: "2-digit",
    minute: "2-digit",
    timeZone: "UTC",
  });
  return convertDate;
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

export const durationHours = (startDate, endDate) => {
  const duration = differenceInMinutes(new Date(endDate), new Date(startDate));
  return duration / 60;
};

export const lastThirtyDays = () => {
  const date = new Date();
  date.setDate(date.getDate() - 30 + 1);
  return date.toISOString().split("T")[0];
};

export const endLoginSession = (expireTime) => {
  const now = new Date();
  const expirationTime = new Date(expireTime);
  if (differenceInSeconds(expirationTime, now) < 0) return;
  return differenceInSeconds(expirationTime, now);
};

//////////////////////////////////////////////////////////////////////////////////////

export const formatPrice = (price) => {
  return Intl.NumberFormat("de-DE", {
    style: "currency",
    currency: "EUR",
  }).format(price);
};

////////////////////////////// API //////////////////////////////////////////////////

export const wait = (duration) => {
  return new Promise((resolve) => setTimeout(resolve, duration));
};

export const headerApiFn = (accessToken) => {
  return {
    "Content-Type": "application/json",
    Authorization: `token ${accessToken}`,
  };
};

export const responseApiFn = async (res, sysmsg) => {
  if (res.status === 404) {
    throw new Error(sysmsg);
  }
  const data = await res.json();
  if (res.status === 400 || res.status === 401) {
    throw new Error(data.message);
  }
  return data;
};
