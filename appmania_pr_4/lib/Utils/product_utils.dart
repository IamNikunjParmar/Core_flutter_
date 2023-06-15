
import 'dart:math';

List<Map> allProducts = [
{
"id": 1,
"title": "Banana Shake",
"description": "made with an abundance of rich and creamy avocados, vibrant tomatoes, crisp cucumbers, bright red onions and a fresh ",
"price": 170.00,
  "time":5-10,
"rating": 4.5,
"category": "Cold drinks",
  "Kcal" : 100,
"thumbnail": "https://i.pinimg.com/564x/4c/6c/ce/4c6ccee2c486d5f66080ff8290f5bfcc.jpg",
"images": [
"https://i.pinimg.com/236x/a6/e4/c2/a6e4c2199a23e17ba24c064a31af9fed.jpg",
"https://i.pinimg.com/564x/a9/5b/11/a95b11c1a6083782016f95542ab9a09f.jpg",
"https://i.pinimg.com/564x/b5/3f/83/b53f83d8467088eb92b6daa9f98d4a6b.jpg",
]
},
  {
    "id": 2,
    "title": "Kit kat shake",
    "description": "made with an abundance of rich and creamy avocados, vibrant tomatoes, crisp cucumbers, bright red onions and a fresh ",
    "price": 220.00,
    "rating": 4.2,
    "category": "Cold drinks",
    "Kcal" : 100,
    "thumbnail": "https://i.pinimg.com/564x/c5/9c/f1/c59cf18bda69277ee0d549bc7d851d3c.jpg",
    "images": [
      "https://i.pinimg.com/236x/c3/32/dc/c332dc0263d05392aed3ccae7447b0b9.jpg",
      "https://i.pinimg.com/236x/18/77/1e/18771e0e8e43660726845ec09b604706.jpg",
      "https://i.pinimg.com/236x/ce/e1/37/cee137957d9100610eb8325ba6b1a0f4.jpg",
    ]
  },
  {
    "id": 3,
    "title": "Mango milk shake",
    "description": "made with an abundance of rich and creamy avocados, vibrant tomatoes, crisp cucumbers, bright red onions and a fresh ",
    "price": 250.00,
    "rating": 4.8,
    "category": "Cold drinks",
    "Kcal" : 100,
    "thumbnail": "https://i.pinimg.com/564x/5b/55/82/5b5582dc6559fc239b59f028b560b1be.jpg",
    "images": [
      "https://i.pinimg.com/236x/01/d6/b3/01d6b305d2c9aa654a6df62331605371.jpg",
      "https://i.pinimg.com/236x/d6/94/7c/d6947c5b9769b685fc7aba1d3f2da000.jpg",
      "https://i.pinimg.com/236x/21/1d/e2/211de23a3cb30111da9992742ae48b9e.jpg",
    ]
  },
  {
    "id": 4,
    "title": "Vanila shake",
    "description": "made with an abundance of rich and creamy avocados, vibrant tomatoes, crisp cucumbers, bright red onions and a fresh ",
    "price": 150.00,
    "rating": 4,
    "category": "Cold drinks",
    "Kcal" : 80,
    "thumbnail": "https://i.pinimg.com/564x/45/d0/78/45d078f20345d7a640fdd0b8b85ed8c4.jpg",
    "images": [
      "https://i.pinimg.com/236x/ac/1b/61/ac1b61f5816cba4a02faac63503cd3c5.jpg",
      "https://i.pinimg.com/564x/9a/b7/f4/9ab7f41dffb7f01fc54e3c7e85e7677e.jpg",

    ]
  },

  {
    "id": 5,
    "title": "Chocolete shake",
    "description": "made with an abundance of rich and creamy avocados, vibrant tomatoes, crisp cucumbers, bright red onions and a fresh ",
    "price": 200.00,
    "rating": 4.7,
    "category": "Cold drinks",
    "Kcal" : 100,
    "thumbnail": "https://i.pinimg.com/236x/df/f7/fb/dff7fb444c5439c7fa59f83bcba03cef.jpg",
    "images": [
      "https://i.pinimg.com/236x/33/89/ec/3389ec589974369e6ef55cf921b24fe2.jpg",
      "https://i.pinimg.com/236x/1e/de/79/1ede7905146acf2d9c976ead8b392371.jpg",

    ]
  },
];

List<Map> allProducts2 = [
  {
    "id": 1,
    "title": "Strawberry IceCream",
    "description": "made with an abundance of rich and creamy avocados, vibrant tomatoes, crisp cucumbers, bright red onions and a fresh ",
    "price": 180.00,
    "rating": 4.5,
    "category": "Ice Cream",
    "Kcal" : 100,
    "thumbnail": "https://i.pinimg.com/564x/88/fc/a9/88fca9c80524df5a2969e8d696c53beb.jpg",
    "images": [
      "https://i.pinimg.com/236x/c9/8d/50/c98d50635e5d4e2ab73a9423eb35da3c.jpg",
      "https://i.pinimg.com/236x/4c/cd/fc/4ccdfccb3297f5e5e1cbfe62384a0c2f.jpg",
      "https://i.pinimg.com/236x/de/1c/c2/de1cc23b5d1e033f2bce66dbde665e6b.jpg",
    ]
  },
  {
    "id": 2,
    "title": "Chocolete IceCream",
    "description": "made with an abundance of rich and creamy avocados, vibrant tomatoes, crisp cucumbers, bright red onions and a fresh ",
    "price": 280.00,
    "rating": 4.8,
    "category": "Ice Cream",
    "Kcal" : 100,
    "thumbnail": "https://i.pinimg.com/564x/d6/2f/b3/d62fb3ed6042738017e0b09ee8507aec.jpg",
    "images": [
      "https://i.pinimg.com/236x/bd/8e/b5/bd8eb58ad1469f156af1e4e1b28e493c.jpg",
      "https://i.pinimg.com/564x/bf/94/8f/bf948ff1cff61d1cd7a3a7544ed00ba3.jpg",

    ]
  },

  {
    "id": 3,
    "title": "Rajbhog IceCream",
    "description": "made with an abundance of rich and creamy avocados, vibrant tomatoes, crisp cucumbers, bright red onions and a fresh ",
    "price": 240.00,
    "rating": 4.4,
    "category": "Ice Cream",
    "Kcal" : 100,
    "thumbnail": "https://i.pinimg.com/236x/3f/31/c0/3f31c01f74926326b5a01adb8f4cee28.jpg",
    "images": [
      "https://i.pinimg.com/236x/32/21/70/32217092fcd1bec07706e62a6a82ce61.jpg",
      "https://i.pinimg.com/236x/44/f1/43/44f1435d11c908e9a0ae3158144341d9.jpg",

    ]
  },
  {
    "id": 4,
    "title": "Rassberry IceCream",
    "description": "made with an abundance of rich and creamy avocados, vibrant tomatoes, crisp cucumbers, bright red onions and a fresh ",
    "price": 170.00,
    "rating": 4.5,
    "category": "Ice Cream",
    "Kcal" : 100,
    "thumbnail": "https://i.pinimg.com/236x/7e/48/cc/7e48ccd4ce1641438e6f915ec9dead3d.jpg",
    "images": [
      "https://i.pinimg.com/564x/fb/03/db/fb03dbc3e289efbc47d3d6326a4f5088.jpg",
      "https://i.pinimg.com/236x/b8/24/a1/b824a1f34e2bf11ed61e5341d5a867b6.jpg",

    ]
  },
  {
    "id": 5,
    "title": "Dryfruits IceCream",
    "description": "made with an abundance of rich and creamy avocados, vibrant tomatoes, crisp cucumbers, bright red onions and a fresh ",
    "price": 220.00,
    "rating": 4.5,
    "category": "Ice Cream",
    "Kcal" : 100,
    "thumbnail": "https://i.pinimg.com/236x/ed/e5/21/ede521cf55fff0e5d6e1ca9c67df156b.jpg",
    "images": [
      "https://i.pinimg.com/236x/17/82/69/178269c0d82fb494f0c1a41850703cab.jpg",
      "https://i.pinimg.com/564x/88/e3/d0/88e3d0174c243ed907f78a47526304ef.jpg",

    ]
  },


];

List cartItems = [];