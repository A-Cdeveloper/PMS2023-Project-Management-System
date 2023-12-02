import Filter from "../../../ui/Filter";

function DashboardFilter() {
  return (
    <Filter
      filterField="last"
      options={[
        { value: "6", label: "Last 6 months" },
        { value: "11", label: "Last year" },
        { value: "360", label: "All time" },
      ]}
    />
  );
}

export default DashboardFilter;
