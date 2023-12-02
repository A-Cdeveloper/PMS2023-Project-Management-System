import Headline from "../../../ui/Headline";
import {
  Area,
  AreaChart,
  CartesianGrid,
  ResponsiveContainer,
  Tooltip,
  XAxis,
  YAxis,
} from "recharts";

import DashboardFilter from "./DashboardFilter";
import Row from "../../../ui/Row";

const AreaChartComponent = ({ data, title, tooltipTitle }) => {
  return (
    <>
      <Row type="horizontal">
        <Headline as="h3">{title}</Headline>
        <DashboardFilter />
      </Row>

      <ResponsiveContainer width="100%" height="100%">
        <AreaChart
          width={500}
          height={400}
          data={data}
          margin={{
            top: 40,
            right: 30,
            left: 0,
            bottom: 0,
          }}
        >
          <CartesianGrid strokeDasharray="3 3" />
          <XAxis dataKey="name" style={{ fontSize: "12px" }} />
          <YAxis />
          <Tooltip
            formatter={(value, name, props) => [value, tooltipTitle]}
            labelStyle={{ fontSize: "14px" }}
            contentStyle={{ fontSize: "13px" }}
          />
          <Area
            type="monotone"
            dataKey="value"
            stroke="#1241a5"
            fill="#6c92da"
          />
        </AreaChart>
      </ResponsiveContainer>
    </>
  );
};

export default AreaChartComponent;
