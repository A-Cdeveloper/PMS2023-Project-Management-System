import { createContext, useContext } from "react";
import styled from "styled-components";

const StyledTable = styled.div`
  border: 1px solid ${(props) => props.theme.baseColors.grey200};
  background-color: ${(props) => props.theme.baseColors.grey100};
  font-weight: ${(props) => props.theme.fontWeight.semibold};
  border-radius: 7px;
  font-size: 1.4rem;
  overflow: hidden;
`;

const TableRow = styled.div`
  display: grid;
  grid-template-columns: ${(props) => props.columns};
  grid-gap: 3rem;
  transition: none;
`;

const StyledHeader = styled(TableRow)`
  padding: 1.4rem;
  background-color: ${(props) => props.theme.baseColors.grey100};
  border-bottom: none;
  text-transform: uppercase;
  letter-spacing: 0.4px;
  font-weight: ${(props) => props.theme.fontWeight.bold};
  color: ${(props) => props.theme.baseColors.grey700};
`;

const StyledBody = styled.section`
  margin: 0;
`;

const StyledRow = styled(TableRow)`
  padding: 1.2rem 1.5rem;
  background: white;
  font-size: 1.4rem;
  font-weight: ${(props) => props.theme.fontWeight.regular};
  border: 1px solid ${(props) => props.theme.baseColors.grey100};
  color: ${(props) => props.theme.baseColors.grey500};

  &:nth-child(even) {
    background: ${(props) => props.theme.baseColors.grey50};
  }
`;

// const Footer = styled.footer`
//   background-color: var(--color-grey-50);
//   display: flex;
//   justify-content: center;
//   padding: 1.2rem;

//   /* This will hide the footer when it contains no child elements. Possible thanks to the parent selector :has 🎉 */
//   &:not(:has(*)) {
//     display: none;
//   }
// `;

const Empty = styled.p`
  font-size: 1.6rem;
  font-weight: 500;
  text-align: center;
  margin: 2.4rem;
`;

const TableContext = createContext();

const Table = ({ children, cols, columns }) => {
  return (
    <TableContext.Provider value={{ cols, columns }}>
      <StyledTable role="table">{children}</StyledTable>
    </TableContext.Provider>
  );
};

const Header = () => {
  const { cols, columns } = useContext(TableContext);
  return (
    <StyledHeader role="row" as="header" columns={columns}>
      {cols.map((col) => (
        <div key={col}>{col}</div>
      ))}
      <div></div>
    </StyledHeader>
  );
};

const Row = ({ children }) => {
  const { columns } = useContext(TableContext);
  return <StyledRow columns={columns}>{children}</StyledRow>;
};

const Body = ({ data, render }) => {
  if (data && data.length === 0)
    return <Empty>No data to show in this moment</Empty>;
  console.log(data);
  return <StyledBody>{data && data.map(render)}</StyledBody>;
  //return null;
};

Table.Header = Header;
Table.Body = Body;
Table.Row = Row;
// Table.Footer = Footer;

export default Table;
