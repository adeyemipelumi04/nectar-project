import 'package:flutter/material.dart';

final List<Map<String, dynamic>> items = [
  {
    'name': 'Organic Bananas',
    'details': '7pcs, Priceg.',
    'price': 4.99,
    'image': 'lib/assets/images/banana.png',
  },
  {
    'name': 'Red Apple',
    'details': '1kg, Priceg.',
    'price': 4.99,
    'image': 'lib/assets/images/apple.png',
  },
  {
    'name': 'Ball Red Pepper',
    'details': '7pcs, Priceg.',
    'price': 4.99,
    'image': 'lib/assets/images/pepper.png',
  },
  {
    'name': 'Ginger',
    'details': '5pcs, Priceg.',
    'price': 4.99,
    'image': 'lib/assets/images/ginger.png',
  },
  {
    'name': 'Pulses',
    'details': '5pcs, Priceg.',
    'price': 4.99,
    'image': 'lib/assets/images/beans.png',
  },
  {
    'name': 'Rice',
    'details': '5pcs, Priceg.',
    'price': 4.99,
    'image': 'lib/assets/images/ricesack.png',
  },
  {
    'name': 'Beef Bone',
    'details': '5pcs, Priceg.',
    'price': 4.99,
    'image': 'lib/assets/images/beef.png',
  },
  {
    'name': 'Broiler Chicken',
    'details': '5pcs, Priceg.',
    'price': 4.99,
    'image': 'lib/assets/images/chicken.png',
  },
];
List<Map<String, dynamic>> getReorderedItems() {
  return [
    items[2],
    items[3],
    items[5],
    items[4],
    items[1],
  ];
}

List<Map<String, dynamic>> getsecondReorderedItems() {
  return [
    items[6],
    items[7],
    items[4],
    items[3],
    items[1],
  ];
}

final List<Map<String, dynamic>> productitems = [
  {
    'name': 'Fresh Fruits & Vegetable',
    'image': 'lib/assets/images/bevebasket.png',
  },
  {
    'name': 'Cooking Oil & Ghee',
    'image': 'lib/assets/images/oil.png',
  },
  {
    'name': 'Meat & Fish',
    'image': 'lib/assets/images/fishandbeef.png',
  },
  {
    'name': 'Bakery & Snacks',
    'image': 'lib/assets/images/snacks.png',
  },
  {
    'name': 'Diary and Egg',
    'image': 'lib/assets/images/diaryandegg.png',
  },
  {
    'name': 'Beverages',
    'image': 'lib/assets/images/beverages.png',
  },
  {
    'name': 'Ginger',
    'image': 'lib/assets/images/ginger.png',
  },
  {
    'name': 'Pulses',
    'image': 'lib/assets/images/beans.png',
  },
];

final List<Map<String, dynamic>> beverages = [
  {
    'name': 'Diet Coke',
    'details': '355ml, Price',
    'price': 1.99,
    'image': 'lib/assets/images/dietcoke.png',
  },
  {
    'name': 'Sprite',
    'details': '325ml, Price.',
    'price': 1.50,
    'image': 'lib/assets/images/sprite.png',
  },
  {
    'name': 'Apple & Grape Juice',
    'details': '2L, Price',
    'price': 15.99,
    'image': 'lib/assets/images/appleandgrape.png',
  },
  {
    'name': 'Orange Juice',
    'details': '2L, Price',
    'price': 15.99,
    'image': 'lib/assets/images/orangedrink.png',
  },
  {
    'name': 'Coca Cola Can',
    'details': '325ml, Price',
    'price': 4.99,
    'image': 'lib/assets/images/coke.png',
  },
  {
    'name': 'Pepsi Can',
    'details': '330ml, Price',
    'price': 4.99,
    'image': 'lib/assets/images/pepsi.png',
  },
];

final List<Map<String, dynamic>> eggs = [
  {
    'name': 'Egg Chicken Red',
    'details': '325ml, Price.',
    'price': 1.50,
    'image': 'lib/assets/images/basketredegg.png',
  },
  {
    'name': 'Egg Chicken White',
    'details': '355ml, Price',
    'price': 1.99,
    'image': 'lib/assets/images/whitechickenegg.png',
  },
  {
    'name': 'Egg Pasta',
    'details': '2L, Price',
    'price': 4.99,
    'image': 'lib/assets/images/eggpasta.png',
  },
  {
    'name': 'Egg Noodles',
    'details': '2L, Price',
    'price': 4.99,
    'image': 'lib/assets/images/eggnoodles.png',
  },
  {
    'name': 'Mayonnaise',
    'details': '325ml, Price',
    'price': 4.99,
    'image': 'lib/assets/images/mayonnaise.png',
  },
  {
    'name': 'Egg Noddles',
    'details': '330ml, Price',
    'price': 4.99,
    'image': 'lib/assets/images/eggnoodlespurple.png',
  },
];

final List<Map<String, dynamic>> pulses = [
  {
    'name': 'Pulses',
    'image': 'lib/assets/images/beans.png',
  },
  {
    'name': 'Rice',
    'image': 'lib/assets/images/ricesack.png',
  },
  {
    'name': 'Meat & Fish',
    'image': 'lib/assets/images/fishandbeef.png',
  }
];

final List<Map<String, dynamic>> categoriesfilters = [
  {'label': 'Eggs', 'isChecked': true},
  {'label': 'Noodles & Pasta', 'isChecked': false},
  {'label': 'Chips and Crisps', 'isChecked': false},
  {'label': 'Fast Food', 'isChecked': false},
];

final List<Map<String, dynamic>> brandfilters = [
  {'label': 'Individual Collection', 'isChecked': true},
  {'label': 'Cocola', 'isChecked': false},
  {'label': 'Ifad', 'isChecked': false},
  {'label': 'Kazi Farmas', 'isChecked': false},
];

final List<Map<String, dynamic>> cartitems = [
  {
    'name': 'Ball Red Pepper',
    'details': '7pcs, Priceg.',
    'price': 4.99,
    'image': 'lib/assets/images/pepper.png',
    'itemCount': 1
  },
  {
    'name': 'Egg Chicken Red',
    'details': '325ml, Price.',
    'price': 1.99,
    'image': 'lib/assets/images/basketredegg.png',
  },
  {
    'name': 'Organic Bananas',
    'details': '7pcs, Priceg.',
    'price': 3.00,
    'image': 'lib/assets/images/banana.png',
    'itemCount': '1'
  },
  {
    'name': 'Ginger',
    'details': '5pcs, Priceg.',
    'price': 2.99,
    'image': 'lib/assets/images/ginger.png',
    'itemCount': 1
  },
  {
    'name': 'Pulses',
    'details': '5pcs, Priceg.',
    'price': 4.99,
    'image': 'lib/assets/images/beans.png',
    'itemCount': 1
  },
  {
    'name': 'Rice',
    'details': '5pcs, Priceg.',
    'price': 4.99,
    'image': 'lib/assets/images/ricesack.png',
    'itemCount': 1
  },
  {
    'name': 'Beef Bone',
    'details': '5pcs, Priceg.',
    'price': 4.99,
    'image': 'lib/assets/images/beef.png',
    'itemCount': 1
  },
  {
    'name': 'Broiler Chicken',
    'details': '5pcs, Priceg.',
    'price': 4.99,
    'image': 'lib/assets/images/chicken.png',
    'itemCount': 1
  },
];

final List<Map<String, dynamic>> favorites = [
  {
    'name': 'Sprite Can',
    'details': '325ml, Price.',
    'price': 1.50,
    'image': 'lib/assets/images/sprite.png',
  },
  {
    'name': 'Diet Coke',
    'details': '355ml, Price',
    'price': 1.99,
    'image': 'lib/assets/images/dietcoke.png',
  },
  {
    'name': 'Apple & Grape Juice',
    'details': '2L, Price',
    'price': 15.99,
    'image': 'lib/assets/images/appleandgrape.png',
  },
  {
    'name': 'Coca Cola Can',
    'details': '325ml, Price',
    'price': 4.99,
    'image': 'lib/assets/images/coke.png',
  },
  {
    'name': 'Pepsi Can',
    'details': '330ml, Price',
    'price': 4.99,
    'image': 'lib/assets/images/pepsi.png',
  },
];

final List<Map<String, dynamic>> profile = [
  {
    'name': 'Orders',
    'prefixIcon': const Icon(Icons.shopping_bag_outlined),
    'suffixIcon': const Icon(Icons.arrow_forward_ios_outlined),
  },
  {
    'name': 'My Details',
    'prefixIcon': const Icon(Icons.badge_outlined),
    'suffixIcon': const Icon(Icons.arrow_forward_ios_outlined),
  },
  {
    'name': 'Delivery Address',
    'prefixIcon': const Icon(Icons.location_on_outlined),
    'suffixIcon': const Icon(Icons.arrow_forward_ios_outlined),
  },
  {
    'name': 'Payments Method',
    'prefixIcon': const Icon(Icons.payment_outlined),
    'suffixIcon': const Icon(Icons.arrow_forward_ios_outlined),
  },
  {
    'name': 'Promo Card',
    'prefixIcon': const Icon(Icons.loyalty_outlined),
    'suffixIcon': const Icon(Icons.arrow_forward_ios_outlined),
  },
  {
    'name': 'Notification',
    'prefixIcon': const Icon(Icons.notification_add_outlined),
    'suffixIcon': const Icon(Icons.arrow_forward_ios_outlined),
  },
  {
    'name': 'Help',
    'prefixIcon': const Icon(Icons.help_outline),
    'suffixIcon': const Icon(Icons.arrow_forward_ios_outlined),
  },
  {
    'name': 'About',
    'prefixIcon': const Icon(Icons.info_outline),
    'suffixIcon': const Icon(Icons.arrow_forward_ios_outlined),
  },
];

final List<Map<String, dynamic>> productdetails = [
  {
    'name': 'Natural Red Apple',
    'details': '1kg, Price.',
    'product':
        'Apple are Nutritious Apples May be Good for weight loss. Apples May be Good for your heart. As part of a health and varied diet.',
    'nutrition':
        '52 Calories 100 grams - 100 grams Nutrient	Amount(g)	DV(%) Total Fat	0.2 g	0% Cholesterol	0 mg	0% Sodium	1 mg	0% Potassium	107 mg	3%Total Carbohydrate	14 g	4% Protein	0.3 g	0%',
    'price': 4.99,
    'image': 'lib/assets/images/apple.png',
  },
  {
    'name': 'Organic Banana',
    'details': '5kg, Price.',
    'product':
        'Apple are Nutritious Apples May be Good for weight loss. Apples May be Good for your heart. As part of a health and varied diet.',
    'nutrition':
        'Eating bananas daily can be healthy--they provide essential nutrients like potassium, fiber, and vitamins C and B6. However, too many can lead to excess sugar intake and may cause digestive issues for some. One or two a day is generally a balanced amount for most people.',
    'price': 4.99,
    'image': 'lib/assets/images/banana.png',
  },
  {
    'name': 'Ball Red Pepper',
    'details': '1kg, Price.',
    'product':
        'Red peppers contain a large amount of vitamin C, which heals and rejuvenates tissues, including cartilage',
    'nutrition':
        'Research suggests that vitamin C helps reduce pain from knee arthritis. Red peppers also contain anti-inflammatory compounds, which could also help relieve OA symptoms.',
    'price': 4.99,
    'image': 'lib/assets/images/pepper.png',
  },
  {
    'name': 'Ginger',
    'details': '1kg, Price.',
    'product':
        'Ginger is a flowering plant whose rhizome, ginger root or ginger, is widely used as a spice and a folk medicine. It is an herbaceous perennial that grows annual pseudostems about one meter tall, bearing narrow leaf blades.',
    'nutrition':
        '1.8 grams protein. 0.7 grams fat. 2 grams dietary fiber. 415 milligrams potassium (12 percent DV)',
    'price': 4.99,
    'image': 'lib/assets/images/ginger.png',
  },
  {
    'name': 'Pulses',
    'details': '1kg, Price.',
    'product':
        "Pulses are a good source of protein, essential for building and replacing muscle. If you are vegetarian, they're a useful way of getting protein in your diet, which non-veggies would get from meat and fish",
    'nutrition':
        ' Pulses are a great source of vitamins and minerals, Pulses are a rich source of proteins,Pulses possess antioxidant effects, Pulses are good for the heart, Pulses reduce the risk of diabetes, Pulses are a good source of folate, Pulses may reduce the risk of cancer.',
    'price': 4.99,
    'image': 'lib/assets/images/beans.png',
  },
  {
    'name': 'Rice',
    'details': '1kg, Price.',
    'product':
        "Rice is a cereal grain and in its domesticated form is the staple food of over half of the world's population, particularly in Asia and Africa",
    'nutrition':
        'Rice is primarily composed of carbohydrate, which makes up almost 80% of its total dry weight. Most of the carbohydrate in rice is starch. Starch is the most common form of carbohydrate in foods. Starch is made up of long chains of glucose called amylose and amylopectin.',
    'price': 4.99,
    'image': 'lib/assets/images/ricesack.png',
  },
  {
    'name': 'Beef Bone',
    'details': '1kg, Price.',
    'product':
        'Beef is an excellent source of protein and supplies 10 essential nutrients including B-vitamins, zinc, and iron that support an active and healthy lifestyle. The nutrients in beef provide our bodies with the strength to thrive throughout all stages of life.',
    'nutrition':
        'Beef is a great source of protein, containing all of the essential amino acids. In addition, beef is a great source of B vitamins, and iron. Beef also contains copper, zinc, selenium, and phosphorus. Beef is also a good source of omega-3 fatty acids, which are great for your heart.',
    'price': 4.99,
    'image': 'lib/assets/images/beef.png',
  },
  {
    'name': 'Broiler Chicken',
    'details': '1kg, Price.',
    'product':
        'Broiler chicken also contains vitamins A, C, E, and K, as well as thiamin, riboflavin, niacin, vitamin B6, vitamin B12, and pantothenic acid.',
    'nutrition':
        ' Calories 219, Fat 9.12 g, Carbs 1.69 g, Protein 30.57 g. There are 219 calories in 100 grams of Chicken Meat (Broilers or Fryers, Fried, Cooked)',
    'price': 4.99,
    'image': 'lib/assets/images/chicken.png',
  },
];
