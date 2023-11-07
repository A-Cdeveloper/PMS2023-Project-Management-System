import { PDFViewer, PDFDownloadLink, StyleSheet } from "@react-pdf/renderer";
import { useParams, useNavigate } from "react-router-dom";
import { useQueryClient } from "@tanstack/react-query";
import { HiDocumentArrowDown } from "react-icons/hi2";

import { useTask } from "../useTask";

import Row from "../../../ui/Row";
import ButtonText from "../../../ui/Buttons/ButtonText";
import ButtonIconText from "../../../ui/Buttons/ButtonIconText";
import Spinner from "../../../ui/Spinner";

import TaskPDFDocument from "./TaskPDFDocument";

import { useSettings } from "../../settings/useSettings";

// Create styles
const styles = StyleSheet.create({
  viewer: {
    width: "100%",
    height: "100vh",
    border: "none",
  },
});

// Create Document Component
const TaskPDF = () => {
  const navigate = useNavigate();
  const { isLoading, taks: taskSingle = {} } = useTask();
  const { taskId } = useParams();
  const { settings = {} } = useSettings();

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
    <>
      <Row type="horizontal">
        <ButtonText onClick={() => navigate(`/tasks/${taskId}`)}>
          ← Back
        </ButtonText>

        {/* download pdf */}
        {/* <PDFDownloadLink
          document={
            <OfferPDFDocument offer={offer} serviceList={serviceList} />
          }
          fileName={`${offer.offer_number}.pdf`}
        >
          <ButtonIconText icon={<HiDocumentArrowDown />} type="info">
            Download
          </ButtonIconText>
        </PDFDownloadLink> */}
      </Row>

      {/* shoe pdf */}
      <PDFViewer style={styles.viewer} showToolbar={false}>
        <TaskPDFDocument task={task} pricePerhour={pricePerhour} />
      </PDFViewer>
    </>
  );
};

export default TaskPDF;
