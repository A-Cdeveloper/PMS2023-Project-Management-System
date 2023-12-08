import styled from "styled-components";
import Headline from "../../ui/Headline";
import NewRecord from "../../ui/Buttons/NewRecord";

const FullArea = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 50vh;
  gap: 2rem;

  & h3 {
    width: 100%;
    text-align: center;
  }
`;

function Error({ message, record, firstRecord, addeditForm }) {
  return (
    <FullArea>
      <Headline as="h3">{message} ⚠</Headline>
      <NewRecord record={record} firstRecord={firstRecord}>
        {addeditForm}
      </NewRecord>
    </FullArea>
  );
}

export default Error;
