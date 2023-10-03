import { useSearchParams } from "react-router-dom";
import Input from "./Form/Input";
import styled from "styled-components";
import { formatSqlDate, lastThirtyDays } from "../utils/helpers";

const FliterContainer = styled.div`
  display: flex;
  justify-content: start;
  align-items: center;
`;

const DateIntervalBox = styled.div`
  margin: 0 2rem;
`;

const Label = styled.span`
  font-size: 1.4rem;
  margin-left: -2rem;
  margin-right: 1rem;
`;

const FilterByDateInterval = () => {
  const [searchParams, setSearchParams] = useSearchParams();

  const startIntervalDate = searchParams.get("startIntervalDate")
    ? searchParams.get("startIntervalDate")
    : lastThirtyDays();

  const endIntervalDate = searchParams?.get("endIntervalDate")
    ? searchParams.get("endIntervalDate")
    : formatSqlDate(new Date());

  const handleChangeStartInterval = (e) => {
    searchParams.set("startIntervalDate", e.target.value);
    searchParams.set("page", 1);
    setSearchParams(searchParams);
  };

  const handleChangeEndInterval = (e) => {
    searchParams.set("endIntervalDate", e.target.value);
    searchParams.set("page", 1);
    setSearchParams(searchParams);
  };

  return (
    <FliterContainer>
      <DateIntervalBox>
        <Label>From:</Label>
        <Input
          type="date"
          max={endIntervalDate}
          onChange={handleChangeStartInterval}
          defaultValue={
            searchParams?.get("startIntervalDate")
              ? searchParams.get("startIntervalDate")
              : lastThirtyDays()
          }
        />
      </DateIntervalBox>
      <DateIntervalBox>
        <Label>To:</Label>
        <Input
          type="date"
          min={startIntervalDate}
          max={formatSqlDate(new Date())}
          onChange={handleChangeEndInterval}
          defaultValue={
            searchParams?.get("endIntervalDate")
              ? searchParams.get("endIntervalDate")
              : formatSqlDate(new Date())
          }
        />
      </DateIntervalBox>
    </FliterContainer>
  );
};

export default FilterByDateInterval;
