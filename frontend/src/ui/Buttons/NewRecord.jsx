import ButtonIcon from "./ButtonIcon";
import { HiPlusCircle } from "react-icons/hi2";
import Modal from "../Modal";

const NewRecord = ({ children, record }) => {
  return (
    <Modal>
      <Modal.OpenButton opens={`${record}-add`}>
        <ButtonIcon icon={<HiPlusCircle />} type="info">
          Add {record}
        </ButtonIcon>
      </Modal.OpenButton>
      <Modal.Window name={`${record}-add`}>{children}</Modal.Window>
    </Modal>
  );
};

export default NewRecord;
