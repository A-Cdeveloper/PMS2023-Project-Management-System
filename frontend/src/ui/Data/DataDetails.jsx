import styled from "styled-components";

export const DataDetailsContainer = styled.div`
  background: #fff;
  padding: 1rem;
  width: 100%;
`;

export const DataBox = styled.div`
  display: flex;
  font-size: 1.5rem;
`;
export const DataBoxTitle = styled(DataBox)`
  padding: 1rem 2rem;
  background: ${(props) => props.theme.baseColors.grey200};
  font-weight: 600;
  flex: 20%;
  border-bottom: 1px solid #fff;
`;
export const DataBoxContent = styled(DataBox)`
  padding: 1rem 2rem;
  flex: 50%;
  border-bottom: 1px solid ${(props) => props.theme.baseColors.grey200};
  white-space: pre-wrap;

  & > a svg {
    width: 2rem;
    height: 2rem;
    margin-left: 1rem;
  }
`;
