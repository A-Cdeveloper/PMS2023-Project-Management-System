import { useState, useEffect } from "react";

export function useSessionStorageState(initialState, key) {
  const storedvalue = sessionStorage.getItem(key)
    ? sessionStorage.getItem(key)
    : initialState;

  // console.log(typeof storedvalue);

  const [value, setValue] = useState(storedvalue);

  useEffect(
    function () {
      sessionStorage.setItem(key, value);
    },
    [value, key]
  );

  return [value, setValue];
}
