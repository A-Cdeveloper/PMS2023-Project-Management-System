import { useState, useEffect } from "react";

export function useLocalStorageState(initialState, key) {
  const storedvalue = localStorage.getItem(key)
    ? localStorage.getItem(key)
    : initialState;

  // console.log(typeof storedvalue);

  const [value, setValue] = useState(storedvalue);

  useEffect(
    function () {
      localStorage.setItem(key, value);
    },
    [value, key]
  );

  return [value, setValue];
}
