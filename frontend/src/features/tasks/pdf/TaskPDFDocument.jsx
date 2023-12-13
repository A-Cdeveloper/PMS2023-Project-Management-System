import PDFDocument from "../../../pdf/PDFDocument";

// Create Document Component
const TaskPDFDocument = ({ task, pricePerhour, owner, logo }) => {
  const {
    project_name,
    task_notice,
    task_price,
    task_client_adresse,
    task_invoice_date,
  } = task;

  return (
    <PDFDocument>
      <PDFDocument.Logo logo={logo} />

      <PDFDocument.OwnerClientAdresse owner={owner}>
        {task_client_adresse}
      </PDFDocument.OwnerClientAdresse>

      <PDFDocument.DatumAndNumber date={task_invoice_date} />

      <PDFDocument.Caption subcaption={project_name}>
        Project:
      </PDFDocument.Caption>

      <PDFDocument.Body>
        <PDFDocument.Table
          cols={[
            { item: "Bezeichnung" },
            { price: "Preis" },
            { std: "Menge" },
            { gesamt: "Gesamt" },
          ]}
        >
          <PDFDocument.TableTaskRow item={task} pricePerhour={pricePerhour} />
        </PDFDocument.Table>
        <PDFDocument.Total sum={task_price}></PDFDocument.Total>
      </PDFDocument.Body>

      <PDFDocument.Footer notice={task_notice} />
    </PDFDocument>
  );
};

export default TaskPDFDocument;
