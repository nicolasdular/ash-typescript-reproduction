import React, { useEffect } from "react";
import { createRoot } from "react-dom/client";
import { listTodos } from "./ash_rpc";

const Todos = () => {
  const [todos, setTodos] = React.useState<any[]>([]);

  useEffect(() => {
    listTodos({ fields: ["id", "title"] }).then((data) => {
      if (data.success) {
        // => .results is empty, even though the type is correct
        // actual list of todos is in .data
        console.log(data.data.results);
      }
      setTodos(data);
    });
  }, []);

  return <pre>{JSON.stringify(todos, null, 2)}</pre>;
};

const root = createRoot(document.getElementById("app")!);

root.render(
  <React.StrictMode>
    <Todos />
  </React.StrictMode>
);
