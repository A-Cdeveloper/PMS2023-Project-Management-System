import SummarylStats from "./summary-stats/SummarylStats";
import Activities from "./activities/Activities";
import ChartStats from "./chart-stats/ChartStats";

const DashboardLayout = () => {
  return (
    <>
      <SummarylStats />
      <Activities />
      <ChartStats />
    </>
  );
};

export default DashboardLayout;
