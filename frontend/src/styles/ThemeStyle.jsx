import { ThemeProvider } from "styled-components";
import { theme } from "./theme";
// eslint-disable-next-line react/prop-types
const Theme = ({ children }) => (
  <ThemeProvider theme={theme}>{children}</ThemeProvider>
);

export default Theme;
