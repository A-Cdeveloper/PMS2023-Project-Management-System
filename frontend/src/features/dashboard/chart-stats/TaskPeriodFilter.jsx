import Filter from "../../../ui/Filter";

function TaskPeriodFilter() {
  return (
    <Filter
      filterField="last"
      options={[
        { value: "6", label: "Last 6 months" },
        { value: "13", label: "Last 12 months" },
        { value: "61", label: "Last 5 years" },
      ]}
    />
  );
}

export default TaskPeriodFilter;
