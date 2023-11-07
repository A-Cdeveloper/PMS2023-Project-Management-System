import styled from "styled-components";
import { useNavigate } from "react-router-dom";
import { HiMinusCircle } from "react-icons/hi2";
import { useQueryClient } from "@tanstack/react-query";

import { formatDate, formatPrice } from "../../utils/helpers";
import Button from "../../ui/Buttons/Button";
import ButtonIcon from "../../ui/Buttons/ButtonIcon";

import { useAccessToken } from "../../context/authContext";

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

const TaskInvoice = ({ task, duration, pricePerhour, deleteTaskInvoice }) => {
  const navigate = useNavigate();
  const accessToken = useAccessToken();
  const queryClient = useQueryClient();

  const {
    task_id,
    task_name,
    project_name,
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
              onClick={(e) =>
                deleteTaskInvoice(
                  {
                    task_id: task_id,
                    updatedTask: {
                      ...task,
                      task_price_per_hour: "",
                      task_price: "",
                      task_invoice_date: "",
                      task_status: "closed",
                    },
                    accessToken,
                  },
                  {
                    onSettled: () => {
                      queryClient.invalidateQueries({
                        queryKey: ["task", task_id],
                      });
                    },
                  }
                )
              }
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
