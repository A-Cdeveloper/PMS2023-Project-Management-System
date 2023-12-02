import { createContext, useContext, useState } from "react";
import styled from "styled-components";
import Headline from "../../../ui/Headline";
import ButtonGroup from "../../../ui/Buttons/ButtonGroup";
import Button from "../../../ui/Buttons/Button";
import { filterArrayObjects, sortingDateArray } from "../../../utils/helpers";

const ActivityList = styled.ul`
  list-style: none;
`;
const ActivityCaption = styled.div`
  padding: 0rem 0.6rem 1.5rem 0;
  display: flex;
  justify-content: space-between;
  align-items: center;
`;
const ActivityHeader = styled.li`
  display: grid;
  gap: 1.2rem;
  grid-template-columns: ${(props) => props.columns};
  border-bottom: 1px solid ${(props) => props.theme.baseColors.grey200};
  border-top: 1px solid ${(props) => props.theme.baseColors.grey200};
  align-items: center;
  background: ${(props) => props.theme.baseColors.grey100};
  text-transform: uppercase;
  padding: 0.4rem 0.6rem;
  color: ${(props) => props.theme.baseColors.grey700};
  font-size: 1.1rem;
`;

const ActivityBody = styled.div`
  height: 20rem;
  overflow: hidden;
  overflow-y: auto;
  padding-right: 1rem;
`;

const ActivityItem = styled.li`
  display: grid;
  gap: 1.2rem;
  grid-template-columns: ${(props) => props.columns};
  border-bottom: 1px solid ${(props) => props.theme.baseColors.grey200};
  align-items: center;
  padding: 1rem 0.6rem;
  font-size: 1.25rem;
`;

const ActivitiesListContext = createContext();

const ActivitiesList = ({
  data,
  children,
  cols,
  columns,
  statusList,
  keyField,
  sorting,
}) => {
  const [itemStatus, setItemStatus] = useState(statusList[0]);

  let filteredData;

  if (sorting) {
    filteredData = data && sortingDateArray(data, keyField, sorting);
  } else {
    filteredData = data && filterArrayObjects(data, keyField, itemStatus);
  }

  const changeStatusHandler = (status) => {
    setItemStatus(status);
  };

  // console.log(status);

  return (
    <ActivitiesListContext.Provider
      value={{
        filteredData,
        cols,
        columns,
        statusList,
        itemStatus,
        changeStatusHandler,
      }}
    >
      {children}
    </ActivitiesListContext.Provider>
  );
};

const Caption = ({ caption }) => {
  const { filteredData, itemStatus, statusList, changeStatusHandler } =
    useContext(ActivitiesListContext);

  return (
    <ActivityCaption>
      <Headline as="h3">
        {caption} {`(${filteredData.length})`}
      </Headline>
      {statusList.length !== 0 && (
        <ButtonGroup>
          {statusList.map((statusBtn) => {
            return (
              <Button
                key={statusBtn}
                size="small"
                onClick={() => changeStatusHandler(statusBtn)}
                active={statusBtn === itemStatus ? statusBtn : null}
              >
                {statusBtn}
              </Button>
            );
          })}
        </ButtonGroup>
      )}
    </ActivityCaption>
  );
};

const Header = () => {
  const { cols, columns } = useContext(ActivitiesListContext);
  return (
    <ActivityHeader columns={columns} as="header">
      {cols.map((col) => {
        return <span key={col}>{col}</span>;
      })}
    </ActivityHeader>
  );
};

const Body = ({ renderItem }) => {
  const { filteredData } = useContext(ActivitiesListContext);
  return (
    <ActivityBody>{filteredData && filteredData.map(renderItem)}</ActivityBody>
  );
};

const Item = ({ children }) => {
  const { columns } = useContext(ActivitiesListContext);
  return <ActivityItem columns={columns}>{children}</ActivityItem>;
};

ActivitiesList.Caption = Caption;
ActivitiesList.Header = Header;
ActivitiesList.Body = Body;
ActivitiesList.Item = Item;

export default ActivitiesList;
