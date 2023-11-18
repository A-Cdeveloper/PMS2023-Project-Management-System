import { useParams } from "react-router-dom";
import { useQueryClient } from "@tanstack/react-query";

import { useTask } from "../useTask";
import { useSettings } from "../../settings/useSettings";

import TaskPDFDocument from "./TaskPDFDocument";
import PDFPage from "../../../pdf/PDFPage";

import Spinner from "../../../ui/Spinner";

// Create Document Component
const TaskPDF = () => {
  const { isLoading, taks: taskSingle = {} } = useTask();
  const { taskId } = useParams();
  const { settings = {} } = useSettings();
  const { company_name, company_adresse } = settings;

  const queryClient = useQueryClient();
  const task = queryClient.getQueryData(["task", +taskId])
    ? queryClient.getQueryData(["task", +taskId])
    : taskSingle;

  const pricePerhour =
    task.task_price_per_hour === "regular"
      ? settings?.regular_whour_price
      : settings?.special_whour_price;

  if (isLoading) return <Spinner />;

  return (
    <PDFPage
      document={
        <TaskPDFDocument
          task={task}
          pricePerhour={pricePerhour}
          owner={{ company_name, company_adresse }}
        />
      }
      fileName={`${task.task_id}.pdf`}
    >
      <PDFPage.Header />
      <PDFPage.Body>
        <TaskPDFDocument task={task} pricePerhour={pricePerhour} />
      </PDFPage.Body>
    </PDFPage>
  );
};

export default TaskPDF;
