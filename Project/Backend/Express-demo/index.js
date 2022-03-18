const express = require("express");
const app = express();

const courses = [
     {
          id: 1,
          name: "course1",
     },
     {
          id: 2,
          name: "course2",
     },
     {
          id: 3,
          name: "course3",
     },
];
app.get("/", (req, res) => {
     res.send("Hello Mom");
});

app.get("/api/courses", (req, res) => {
     res.send(courses);
});

app.get("/api/posts/:year/:month", (req, res) => {
     res.send(req.query);
});
app.get("/api/courses/:id", (req, res) => {
     // res.send(req.query);
     const course = courses.find((c) => c.id === parseInt(req.params.id));
     if (!course) res.status(404).send("Given ID not found");
     else res.send(course);
});
// Environment variable : PORT
const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`listening ${port}`));
// app.post();
