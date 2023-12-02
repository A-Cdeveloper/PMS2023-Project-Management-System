import {
  ResponsiveContainer,
  Tooltip,
  BarChart,
  CartesianGrid,
  XAxis,
  YAxis,
  Bar,
} from "recharts";
import Headline from "../../../ui/Headline";
import Empty from "../../../ui/Data/Empty";

const BarChartComponent = ({ data, title, tooltipTitle }) => {
  return (
    <>
      <Headline as="h3">{title}</Headline>
      {data.length !== 0 ? (
        <ResponsiveContainer width="100%" height={300}>
          <BarChart
            width={730}
            height={250}
            data={data}
            margin={{ top: 40, right: 40, bottom: 40, left: -30 }}
            barCategoryGap={2}
          >
            <CartesianGrid strokeDasharray="1" />
            <XAxis
              dataKey="name"
              angle={20}
              style={{ fontSize: "12px", padding: "50px" }}
            />
            <YAxis style={{ fontSize: "12px" }} />
            <Tooltip
              formatter={(value, name, props) => [value, tooltipTitle]}
              labelStyle={{ fontSize: "14px" }}
              contentStyle={{ fontSize: "12px" }}
              cursor={{ fill: "transparent" }}
            />

            <Bar dataKey="value" opacity={0.75} />
          </BarChart>
        </ResponsiveContainer>
      ) : (
        <Empty resource="items" size="small" />
      )}
    </>
  );
};

export default BarChartComponent;
