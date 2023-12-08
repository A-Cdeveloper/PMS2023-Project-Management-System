import styled from "styled-components";
import Headline from "../../ui/Headline";
import NewRecord from "../../ui/Buttons/NewRecord";
import ButtonIconText from "../Buttons/ButtonIconText";
import { HiPlusCircle } from "react-icons/hi2";

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

function Error({ message, record, firstRecord, addeditForm, onClick }) {
  return (
    <FullArea>
      <Headline as="h3">{message} ⚠</Headline>
      {addeditForm && (
        <NewRecord record={record} firstRecord={firstRecord}>
          {addeditForm}
        </NewRecord>
      )}
      {onClick && (
        <ButtonIconText icon={<HiPlusCircle />} type="info" onClick={onClick}>
          Add first offer
        </ButtonIconText>
      )}
    </FullArea>
  );
}

export default Error;
