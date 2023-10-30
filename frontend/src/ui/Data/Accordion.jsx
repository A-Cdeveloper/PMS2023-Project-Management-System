import { createContext, useContext, useState } from "react";
import { HiMinusCircle, HiPlusCircle } from "react-icons/hi2";
import styled from "styled-components";

const StyledAccordion = styled.div``;

const AccordionItem = styled.div`
  margin-top: -1px;
`;

const AccordionItemCaption = styled.h2`
  display: flex;
  align-items: center;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
  padding: 0.3rem 0;
  cursor: pointer;
  & svg {
    width: 2rem;
    height: 2rem;
    margin-right: 0.8rem;
  }
`;

const AccordionItemContent = styled.div`
  padding: 1rem 0;
`;

const AccordionContext = createContext();

const Accordion = ({ children }) => {
  const [activeIndex, setActiveIndex] = useState(null);

  const activeHandler = (index) => {
    setActiveIndex(index);
  };

  const value = {
    activeIndex,
    activeHandler,
  };

  return (
    <AccordionContext.Provider value={value}>
      <StyledAccordion role="accordion">{children}</StyledAccordion>
    </AccordionContext.Provider>
  );
};

const Item = ({ children }) => {
  return <AccordionItem>{children}</AccordionItem>;
};

const Caption = ({ children, index }) => {
  const { activeHandler, activeIndex } = useContext(AccordionContext);
  return (
    <AccordionItemCaption
      onClick={() => {
        if (activeIndex !== index) {
          activeHandler(index);
        } else {
          activeHandler(null);
        }
      }}
    >
      {activeIndex !== index ? <HiPlusCircle /> : <HiMinusCircle />}
      {children}
    </AccordionItemCaption>
  );
};

const Content = ({ children, index }) => {
  const { activeIndex } = useContext(AccordionContext);
  if (activeIndex !== index) return;
  return <AccordionItemContent>{children}</AccordionItemContent>;
};

// const Row = ({ children, type }) => {
//   const { columns } = useContext(TableContext);
//   return (
//     <StyledRow type={type} columns={columns}>
//       {children}
//     </StyledRow>
//   );
// };

// const Body = ({ data, renderItem }) => {
//   return <StyledBody>{data && data.map(renderItem)}</StyledBody>;
//   //return null;
// };

Accordion.Item = Item;
Accordion.Caption = Caption;
Accordion.Content = Content;

export default Accordion;
