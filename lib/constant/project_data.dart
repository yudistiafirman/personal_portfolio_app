import 'package:porfolio_app/models/project.dart';
import 'package:porfolio_app/models/project_category.dart';

final projectCategoriesData = [
  ProjectCategory(id: 1, name: "Mobile"),
  ProjectCategory(id: 2, name: "Web"),
];

final projectData = [
  Project(
    id: 1,
    name: "FireFit – Stay in Shape, Stay Healthy",
    categories: [
      projectCategoriesData.firstWhere((element) => element.id == 1),
    ],
    description:
        "FireFit is a fitness tracking app designed to help users achieve their health and fitness goals. It features step tracking, heart rate monitoring, calorie burn calculation, and workout activity logging. With various workout types, progress charts, and daily motivation, FireFit provides valuable insights to keep users active and on track",
    assetImages: "assets/images/firefit.jpg",
  ),
  Project(
    id: 2,
    name: "BarberShop – Get the Best Haircut Here",
    categories: [
      projectCategoriesData.firstWhere((element) => element.id == 1),
    ],
    description:
        "BarberShop is an online booking app for haircuts and grooming services. Users can browse various hairstyles, book appointments, and select their preferred barber. The app offers haircut, hair washing, and beard trimming services with available schedules and discounts. With an easy-to-use interface, BarberShop ensures a smooth and hassle-free grooming experience.",
    assetImages: "assets/images/barbershop.jpg",
  ),
  Project(
    id: 3,
    name: "Foodie Delight – Your Ultimate Online Restaurant",
    categories: [
      projectCategoriesData.firstWhere((element) => element.id == 2),
    ],
    description:
        "BarberShop is an online booking app for haircuts and grooming services. Users can browse various hairstyles, book appointments, and select their preferred barber. The app offers haircut, hair washing, and beard trimming services with available schedules and discounts. With an easy-to-use interface, BarberShop ensures a smooth and hassle-free grooming experience.",
    assetImages: "assets/images/fooddelight.jpg",
  ),
  Project(
    id: 4,
    name: "The Second Hand Store – Sustainable Fashion at Affordable Prices",
    categories: [
      projectCategoriesData.firstWhere((element) => element.id == 2),
    ],
    description:
        "The Second Hand Store is your go-to destination for high-quality, pre-loved fashion. Browse the latest arrivals, shop by gender, brands, style, price, and season, and take advantage of our special sales. With a sleek and user-friendly interface, finding stylish and eco-friendly clothing has never been easier. Get amazing discounts and shop sustainably today! ",
    assetImages: "assets/images/secondhand.jpg",
  ),
];
