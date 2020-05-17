const express = require("express");

const app = express();

app.get("/", (req, res) => {
  return res.json({ message: "Vai carai" });
});

app.listen(3333, () => {
  console.log("Servidor está rodando na porta 3333");
});
