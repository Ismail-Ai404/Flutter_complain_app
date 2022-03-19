const express = require("express");
const app = express();
const Joi = require("joi");
app.use(express.json());

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

app.post("/api/courses", (req, res) => {
     const { error } = schema(req);
     if (error) {
          res.status(400).send(error.details[0].message);
          return;
     }
     // if (!req.body.name || req.body.name.length < 3) {
     //      res.status(400).send(
     //           "Name is required and shpuld be greather than 3 "
     //      );
     //      return;
     // }

     const course = {
          id: courses.length + 1,
          name: req.body.name,
     };
     courses.push(course);
     res.send(course);
});
// Environment variable : PORT
const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`listening ${port}`));
// app.post();

app.put("/api/courses/:id", (req, res) => {
     const course = courses.find((c) => c.id === parseInt(req.params.id));
     if (!course) {
          res.status(404).send("Given ID not found");
          return;
     }
     const { error } = schema(req);
     if (error) return res.status(400).send(error.details[0].message);

     //update course
     course.name = req.body.name;
     res.send(course);
});
function schema(req) {
     const schema = Joi.object({ name: Joi.string().min(3).required() });
     const result = schema.validate(req.body);
     return result;
}

app.delete("/api/courses/:id", (req, res) => {
     const course = courses.find((c) => c.id === parseInt(req.params.id));
     if (!course) return res.status(404).send("Given ID not found");

     const index = courses.indexOf(course);
     courses.splice(index, 1);

     res.send(course);
});
