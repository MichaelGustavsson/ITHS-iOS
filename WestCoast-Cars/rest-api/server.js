const express = require("express");
const bodyParser = require("body-parser");
const app = express();

app.all("/*", function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header(
    "Access-Control-Allow-Headers",
    "X-Requested-With",
    "Content-Type, Accept"
  );
  res.header("Access-Control-Allow-Methods", "POST, GET");
  next();
});

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

const vehicles = [
  {
    id: 1,
    registrationNo: "ABC123",
    make: "Volvo",
    model: "V40",
    modelYear: "2015",
    imageUrl: "https://i.postimg.cc/Gtqffzwy/car.jpg",
  },
  {
    id: 2,
    registrationNo: "AAA123",
    make: "Volvo",
    model: "V60",
    modelYear: "2017",
    imageUrl: "https://i.postimg.cc/Gtqffzwy/car.jpg",
  },
  {
    id: 3,
    registrationNo: "BBB123",
    make: "Volvo",
    model: "V90",
    modelYear: "2018",
    imageUrl: "https://i.postimg.cc/Gtqffzwy/car.jpg",
  },
  {
    id: 4,
    registrationNo: "CCC123",
    make: "Volvo",
    model: "X40",
    modelYear: "2019",
    imageUrl: "https://i.postimg.cc/Gtqffzwy/car.jpg",
  },
  {
    id: 5,
    registrationNo: "XYZ123",
    make: "Volkswagen",
    model: "Tiguan",
    modelYear: "2012",
    imageUrl: "https://i.postimg.cc/Gtqffzwy/car.jpg",
  },
  {
    id: 6,
    registrationNo: "ZCS123",
    make: "Audi",
    model: "A6",
    modelYear: "2013",
    imageUrl: "https://i.postimg.cc/Gtqffzwy/car.jpg"
  },
];

app.get('/vehicles', (req, res) => {
  console.log("Get from the server");
  res.send(vehicles);
});

app.listen(5001);
