import styled from "styled-components";

export const StyledDataDetailsContainer = styled.div`
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
  background: #fff;
  padding: 1rem;
`;

export const DataBox = styled.div`
  padding: 1rem 2rem;
  display: flex;
  flex: 70%;
  font-size: 1.5rem;
  border-bottom: 1px solid ${(props) => props.theme.baseColors.grey200};
`;
export const DataBoxTitle = styled(DataBox)`
  padding: 1rem 2rem;
  display: flex;
  flex: 50%;
  background: ${(props) => props.theme.baseColors.grey200};
  font-weight: 600;
  flex: 30%;
  border-bottom: 1px solid #fff;
`;

const DataDetailsContainer = () => {
  return (
    <StyledDataDetailsContainer>
      <DataBoxTitle>TITLE</DataBoxTitle>
      <DataBox>CONTENT</DataBox>
    </StyledDataDetailsContainer>
  );
};

export default DataDetailsContainer;
