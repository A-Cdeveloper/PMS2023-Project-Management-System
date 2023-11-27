import { createContext, useContext } from "react";
import styled from "styled-components";
import Headline from "../../../ui/Headline";

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

const ActivitiesList = ({ children, cols, columns, status }) => {
  return (
    <ActivitiesListContext.Provider value={{ cols, columns, status }}>
      {children}
    </ActivitiesListContext.Provider>
  );
};

const Caption = ({ caption }) => {
  const { status } = useContext(ActivitiesListContext);
  return (
    <ActivityCaption>
      <Headline as="h3">{caption}</Headline>
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

const Body = ({ data, renderItem }) => {
  return <ActivityBody>{data && data.map(renderItem)}</ActivityBody>;
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
