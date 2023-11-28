import styled from "styled-components";
import {
  PieChart,
  Pie,
  Sector,
  Cell,
  ResponsiveContainer,
  Tooltip,
  Legend,
} from "recharts";
import Headline from "../../../ui/Headline";
import { theme } from "../../../styles/theme";
import { useProjectsChart } from "../../../hooks-api/useProjectsChart";

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
`;

// const StyledPieChart = styled(PieChart)`
//   background: red;
// `;

const ChartStats = () => {
  const { data } = useProjectsChart();

  return (
    <Sections>
      <Section>
        <Headline as="h3">Projects</Headline>
        <PieChart width={450} height={250}>
          <Pie
            data={data}
            cx={120}
            cy={120}
            innerRadius={70}
            outerRadius={100}
            fill="#8884d8"
            paddingAngle={8}
            dataKey="value"
            label
          >
            {data.map((entry, index) => (
              <Cell
                key={`cell-${index}`}
                fill={theme.colors[entry.fill][100]}
              />
            ))}
          </Pie>
          <Tooltip />
          <Legend
            iconType="square"
            verticalAlign="middle"
            align="right"
            width="30%"
            layout="vertical"
            iconSize={15}
          />
        </PieChart>
      </Section>
    </Sections>
  );
};

export default ChartStats;
