import SummarylStats from "./summary-stats/SummarylStats";
import Activities from "./activities/Activities";
import ChartStats from "./chart-stats/ChartStats";

const DashboardLayout = () => {
  return (
    <>
      <SummarylStats />
      <ChartStats />
      <Activities />
    </>
  );
};

export default DashboardLayout;
