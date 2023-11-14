import { useSearchParams } from "react-router-dom";
import Input from "./Form/Input";
import styled from "styled-components";
import { formatSqlDate, lastThirtyDays } from "../utils/helpers";
import { useLocalStorageState } from "../hooks/useLocalStorageState";
import { useEffect, useState } from "react";

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

  const [startPoint, setStartPoint] = useLocalStorageState(
    startIntervalDate,
    "startPoint"
  );
  const [endPoint, setEndPoint] = useLocalStorageState(
    endIntervalDate,
    "endPoint"
  );

  console.log(startPoint, endPoint);

  useEffect(() => {
    searchParams.set("startIntervalDate", startPoint || startIntervalDate);
    searchParams.set("endIntervalDate", endPoint || endIntervalDate);
    setSearchParams(searchParams);
  }, [searchParams]);

  const handleChangeStartInterval = (e) => {
    if (e.target.value === "") {
      searchParams.delete("startIntervalDate");
      setStartPoint(null);
    } else {
      searchParams.set("startIntervalDate", e.target.value);
      setStartPoint(e.target.value);
    }
    searchParams.set("page", 1);
    setSearchParams(searchParams);
  };

  const handleChangeEndInterval = (e) => {
    if (e.target.value === "") {
      searchParams.delete("endIntervalDate");
      setEndPoint(null);
    } else {
      searchParams.set("endIntervalDate", e.target.value);
      setEndPoint(e.target.value);
    }
    searchParams.set("page", 1);
    setSearchParams(searchParams);
  };

  return (
    <FliterContainer>
      <DateIntervalBox>
        <Label>From:</Label>
        <Input
          type="date"
          max={endPoint}
          onChange={handleChangeStartInterval}
          value={startPoint || lastThirtyDays()}
        />
      </DateIntervalBox>
      <DateIntervalBox>
        <Label>To:</Label>
        <Input
          type="date"
          min={startPoint}
          max={formatSqlDate(new Date())}
          onChange={handleChangeEndInterval}
          value={endPoint || formatSqlDate(new Date())}
        />
      </DateIntervalBox>
    </FliterContainer>
  );
};

export default FilterByDateInterval;
