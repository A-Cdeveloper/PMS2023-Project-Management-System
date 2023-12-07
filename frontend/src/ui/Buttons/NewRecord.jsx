import ButtonIconText from "./ButtonIconText";
import { HiPlusCircle } from "react-icons/hi2";
import Modal from "../Modal";

const NewRecord = ({ children, record, firstRecord }) => {
  return (
    <Modal>
      <Modal.OpenButton opens={`${record}-add`}>
        <ButtonIconText icon={<HiPlusCircle />} type="info">
          Add {firstRecord && "first"} {record}
        </ButtonIconText>
      </Modal.OpenButton>
      <Modal.Window name={`${record}-add`}>{children}</Modal.Window>
    </Modal>
  );
};

export default NewRecord;
