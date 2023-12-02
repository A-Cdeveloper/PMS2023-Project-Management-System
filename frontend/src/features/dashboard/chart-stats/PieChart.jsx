import {
  PieChart,
  Pie,
  Cell,
  ResponsiveContainer,
  Tooltip,
  Legend,
} from "recharts";
import Headline from "../../../ui/Headline";
import Empty from "../../../ui/Data/Empty";

const PieChartComponent = ({ data, dataCount, title }) => {
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
          {`${((value / dataCount) * 100).toFixed(2)}%`}
        </text>
      </>
    );
  };

  return (
    <>
      <Headline as="h3">{title}</Headline>
      {data.length !== 0 ? (
        <ResponsiveContainer width="100%" height={300}>
          <PieChart width={450} height={300}>
            <Pie
              data={data}
              cx={100}
              cy={140}
              innerRadius={60}
              outerRadius={80}
              fill="#8884d8"
              paddingAngle={8}
              dataKey="value"
              label={renderCustomizedLabel}
            >
              {data.map((entry, index) => (
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
      ) : (
        <Empty resource="items" size="small" />
      )}
    </>
  );
};

export default PieChartComponent;
