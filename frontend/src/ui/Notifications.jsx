import { Toaster } from "react-hot-toast";

const Notifications = () => {
  return (
    <Toaster
      position="bottom-right"
      gutter={3}
      containerStyle={{
        right: 30,
        bottom: 30,
      }}
      toastOptions={{
        className: "toaststyle",
        success: {
          duration: 3000,
        },
        error: {
          duration: 5000,
        },
      }}
    />
  );
};

export default Notifications;
