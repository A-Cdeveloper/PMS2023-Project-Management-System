import styled from "styled-components";

import { useProjectsChart } from "../../../hooks-api/useProjectsChart";
import { useTasksChart } from "../../../hooks-api/useTasksChart";
import useCountResurces from "../../../hooks-api/useCountResurces";

import PieChartComponent from "./PieChart";
import BarChartComponent from "./BarChart";
import AreaChartComponent from "./AreaChart";

const Sections = styled.div`
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  gap: 2rem;
  padding: 2rem 0;
  margin: 3rem 0;
`;
const Section = styled.div`
  background: white;
  flex: 1;
  padding: 1.5rem 1rem 1.5rem 2rem;
  border: 1px solid ${(props) => props.theme.baseColors.grey100};
  border-radius: ${(props) => props.theme.border.borderRadius.md};
  height: 50vh;

  &:last-child {
    flex: auto;
  }
`;

const ChartStats = () => {
  const { dataProjectByStatus, dataProjectByClient } = useProjectsChart();
  const {
    dataTasks,
    filteredPeriod: period,
    dateFrom,
    dateTo,
    haveTasks,
  } = useTasksChart();
  const { projectsCount } = useCountResurces();

  return (
    <Sections>
      <Section>
        <PieChartComponent
          data={dataProjectByStatus}
          dataCount={projectsCount}
          title="Projects status"
        />
      </Section>
      <Section>
        <BarChartComponent
          data={dataProjectByClient}
          title="Top clients"
          tooltipTitle="Number of projects"
        />
      </Section>

      <Section style={{ width: "100%" }}>
        <AreaChartComponent
          data={dataTasks}
          title={`Invoiced Tasks (${dateFrom} - ${dateTo})`}
          tooltipTitle="Tasks"
          haveTasks={haveTasks}
        />
      </Section>
    </Sections>
  );
};

export default ChartStats;
