const express = require("express");
const app = express();

app.get("/user", (req, res) => {
  const user ={
   name:"john",
   age:20,
   email:"john@example.com"
 }

  res.send(user);
});
app.listen("4000", () => {
  console.log("SERVER STARTED ");
});

