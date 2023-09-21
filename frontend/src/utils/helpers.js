import { format } from "date-fns";

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
