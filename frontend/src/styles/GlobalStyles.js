import { createGlobalStyle } from "styled-components";
import { theme } from "./theme";

const GlobalStyles = createGlobalStyle`
  *,
  *::before,
  *::after {
    box-sizing: border-box;
    padding: 0;
    margin: 0;
  }
  
  html {
    font-size: 62.5%;
    
  }
  
  body {
    background: ${theme.baseColors.grey50};
    font-family: ${theme.fonts.Poppins.join(",")};
    color: ${theme.baseColors.grey600};
    font-size: ${theme.fontSizes.regular};
    line-height: ${theme.lineHeight.regular};
    font-weight: ${theme.fontWeight.regular};
    transition: color 0.3s, background-color 0.3s;
    min-height: 100vh;
  }
  

  input,
  button,
  textarea,
  select {
    font: inherit;
    color: inherit;
  }
  
  button {
    cursor: pointer;
  }
  
  *:disabled {
    cursor: not-allowed;
  }
  
  select:disabled,
  input:disabled {
    background-color: ${theme.baseColors.grey200};
    color: ${theme.baseColors.grey500};
  }
  
  input:focus,
  button:focus,
  textarea:focus,
  select:focus {
    outline: 2px solid ${theme.baseColors.grey700};
    outline-offset: -1px;
  }
  
  /* Parent selector, finally 😃 */
  button:has(svg) {
    line-height: 0;
  }
  
  a {
    color: inherit;
    text-decoration: none;
  }

  a:hover{
    color:  ${theme.colors.primary[700]};
  }
  
  ul {
    list-style: none;
  }
  
  
  h1,
  h2,
  h3,
  h4,
  h5,
  h6 {
    color: ${theme.baseColors.grey700};
    font-weight: ${theme.fontWeight.bold};
    overflow-wrap: break-word;
    hyphens: auto;
  }
  
  img {
    max-width: 100%;
  }
  .toaststyle {
    font-size: 1.6rem;
    background: ${theme.baseColors.grey50};
    color: ${theme.baseColors.grey600};
    max-width: 50rem;
    padding: "1.2rem 1.8rem";
    font-weight: ${theme.fontWeight.semibold};
  }
  
  `;

export default GlobalStyles;
