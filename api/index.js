const express = require("express");

const app = express();
const port = 3000;

const users = [
  {
    id: 1,
    name: "Ítalo patrício",
  },
];

app.get("/", (req, res) => {
  res.send("Hello World!");
});

app.get("/user/:id", (req, res) => {
  let idParam = Number(req.params.id);

  res.json(users.find(it => it.id == idParam));
});

app.get("/user", (req, res) => {
  res.json(users);
});

app.listen(port, () => {
  console.log(`api study listening on port ${port}`);
});
