document.addEventListener("keyup", event => {
  if (event.keyCode === 83 &&
      event.ctrlKey && event.altKey) {
    const s = document.createElement("style");
    s.innerHTML = `
      * {
        font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", sans-serif !important;
      }
      p {
        font-weight: 400 !important;
        max-width: 40rem;
        line-height: 1.5;
      }
      pre, code, pre * {
        font-family: 'SF Mono', 'Menlo', monospace !important;
      }
    `;
    document.body.appendChild(s);
  }
});
