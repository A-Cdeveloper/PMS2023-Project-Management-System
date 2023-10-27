import { useEffect } from "react";

const FormPrompt = ({ hasUnsavedChanges }) => {
  const handlerBeforeUnload = (e) => {
    if (hasUnsavedChanges) {
      e.preventDefault();
      return (e.returnValue = "");
    }
  };

  useEffect(() => {
    window.addEventListener("beforeunload", handlerBeforeUnload, {
      capture: true,
    });

    return window.removeEventListener("beforeunload", handlerBeforeUnload, {
      capture: true,
    });
  }, [hasUnsavedChanges]);
};

export default FormPrompt;
