import styled from "styled-components";
import {
  PieChart,
  Pie,
  Cell,
  ResponsiveContainer,
  Tooltip,
  Legend,
  BarChart,
  CartesianGrid,
  XAxis,
  YAxis,
  Bar,
} from "recharts";
import Headline from "../../../ui/Headline";

import { useProjectsChart } from "../../../hooks-api/useProjectsChart";
import useCountResurces from "../../../hooks-api/useCountResurces";
import { useTasksChart } from "../../../hooks-api/useTasksChart";

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
  const { dataProjectByStatus, dataProjectByClient } = useProjectsChart();
  const { data: dataTasks } = useTasksChart();
  const { projectsCount } = useCountResurces();

  const renderCustomizedLabel = ({ x, y, value }) => {
    return (
      <>
        <text
          x={x}
          y={y}
          fill="black"
          textAnchor="start"
          fontWeight="500"
          fontSize="1.4rem"
          dominantBaseline="central"
        >
          {`${((value / projectsCount) * 100).toFixed(2)}%`}
        </text>
      </>
    );
  };

  return (
    <Sections>
      <Section>
        <Headline as="h3">Projects status</Headline>
        <ResponsiveContainer width="100%" height={300}>
          <PieChart width={450} height={300}>
            <Pie
              data={dataProjectByStatus}
              cx={100}
              cy={140}
              innerRadius={60}
              outerRadius={80}
              fill="#8884d8"
              paddingAngle={8}
              dataKey="value"
              label={renderCustomizedLabel}
            >
              {dataProjectByStatus.map((entry, index) => (
                <Cell key={`cell-${index}`} fill={entry.fill} />
              ))}
            </Pie>
            <Tooltip itemStyle={{ fontSize: "13px", padding: "0.1rem" }} />
            <Legend
              iconType="square"
              verticalAlign="middle"
              align="right"
              width="30%"
              layout="vertical"
              iconSize={10}
            />
          </PieChart>
        </ResponsiveContainer>
      </Section>
      <Section>
        <Headline as="h3">Top clients</Headline>
        <ResponsiveContainer width="100%" height={300}>
          <BarChart
            width={730}
            height={250}
            data={dataProjectByClient}
            margin={{ top: 40, right: 40, bottom: 40, left: -30 }}
            barCategoryGap={2}
          >
            <CartesianGrid strokeDasharray="1" />
            <XAxis
              dataKey="name"
              angle={20}
              // padding="gap"
              style={{ fontSize: "12px", padding: "50px" }}
            />
            <YAxis style={{ fontSize: "12px" }} />
            <Tooltip
              formatter={(value, name, props) => [value, "Number of projects"]}
              labelStyle={{ fontSize: "14px" }}
              contentStyle={{ fontSize: "12px" }}
              cursor={{ fill: "transparent" }}
            />

            <Bar dataKey="value" opacity={0.75} />
          </BarChart>
        </ResponsiveContainer>
      </Section>

      {/* <Section>
        <Headline as="h3">Tasks status</Headline>
        <ResponsiveContainer width="100%" height={300}>
          <PieChart width={450} height={300}>
            <Pie
              data={dataTasks}
              cx={100}
              cy={140}
              innerRadius={60}
              outerRadius={80}
              fill="#8884d8"
              paddingAngle={8}
              dataKey="value"
              label={renderCustomizedLabel}
            >
              {dataTasks.map((entry, index) => (
                <Cell key={`cell-${index}`} fill={entry.fill} />
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
        </ResponsiveContainer>
      </Section> */}

      {/* <Section>
        <Headline as="h3">Top clients</Headline>
        <ResponsiveContainer width="100%" height={300}>
          <PieChart width={450} height={300}>
            <Pie
              data={dataProjectByClient}
              cx={100}
              cy={140}
              innerRadius={60}
              outerRadius={80}
              fill="#8884d8"
              paddingAngle={8}
              dataKey="value"
              label={renderCustomizedLabel}
            >
              {dataProjectByClient.map((entry, index) => (
                <Cell key={`cell-${index}`} fill={entry.fill} />
              ))}
            </Pie>
            <Tooltip />
            <Legend
              iconType="square"
              verticalAlign="middle"
              align="right"
              width="50%"
              layout="vertical"
              iconSize={15}
            />
          </PieChart>
        </ResponsiveContainer>
      </Section> */}
    </Sections>
  );
};

export default ChartStats;
