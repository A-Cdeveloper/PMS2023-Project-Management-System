import styled from "styled-components";
import { useNavigate } from "react-router-dom";
import { useSettings } from "../settings/useSettings";
import { formatDate, formatDateTime, formatPrice } from "../../utils/helpers";
import Button from "../../ui/Buttons/Button";
import ButtonIcon from "../../ui/Buttons/ButtonIcon";
import { HiMinusCircle } from "react-icons/hi2";

const Invoice = styled.div`
  font-size: 1.35rem;
`;

const InvoiceRow = styled.div`
  display: flex;
  align-items: center;
  border-bottom: 1px solid ${(props) => props.theme.baseColors.grey200};
`;

const InvoiceHeader = styled(InvoiceRow)`
  font-weight: ${(props) => props.theme.fontWeight.semibold};
`;

const InvoiceCell = styled.div`
  width: 25%;
  padding: 0.5rem;
`;

const InvoiceCellSmall = styled(InvoiceCell)`
  width: 15rem;
`;

const TaskInvoice = ({ task, duration, pricePerhour }) => {
  const navigate = useNavigate();

  const {
    task_id,
    task_project_id,
    task_name,
    client_name,
    project_name,
    task_description,
    task_notice,
    task_add_date,
    task_start_time,
    task_end_time,
    task_status,
    client_id,
    task_price,
    task_client_adresse,
    task_invoice_date,
  } = task;

  return (
    <>
      <Invoice>
        <InvoiceHeader>
          <InvoiceCellSmall>Date</InvoiceCellSmall>
          <InvoiceCell>Task</InvoiceCell>
          <InvoiceCell>Project</InvoiceCell>
          <InvoiceCell>Client</InvoiceCell>
          <InvoiceCellSmall>Used time</InvoiceCellSmall>
          <InvoiceCellSmall>Price/h</InvoiceCellSmall>
          <InvoiceCellSmall>Total price</InvoiceCellSmall>
          <InvoiceCellSmall></InvoiceCellSmall>
          <InvoiceCellSmall></InvoiceCellSmall>
        </InvoiceHeader>
        <InvoiceRow>
          <InvoiceCellSmall>{formatDate(task_invoice_date)}</InvoiceCellSmall>
          <InvoiceCell>{task_name}</InvoiceCell>
          <InvoiceCell>{project_name}</InvoiceCell>
          <InvoiceCell>{task_client_adresse}</InvoiceCell>
          <InvoiceCellSmall>{duration}</InvoiceCellSmall>
          <InvoiceCellSmall>{formatPrice(pricePerhour)}</InvoiceCellSmall>
          <InvoiceCellSmall>{formatPrice(task_price)}</InvoiceCellSmall>
          <InvoiceCellSmall>
            <ButtonIcon
              icon={<HiMinusCircle />}
              onClick={() => removeService(2)}
            />
          </InvoiceCellSmall>
          <InvoiceCellSmall>
            <Button
              variation="primary"
              size="small"
              onClick={() => navigate(`/tasks/pdf/${task_id}`)}
            >
              View PDF
            </Button>
          </InvoiceCellSmall>
        </InvoiceRow>
      </Invoice>
    </>
  );
};

export default TaskInvoice;
