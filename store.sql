SET time_zone = "+00:01";

--
-- Table Structure For Table `users`
--

CREATE TABLE `users`(
    `id` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `fullname` TEXT NOT NULL,
    `username` TEXT NOT NULL,
    `email` TEXT NOT NULL,
    `userPassword` TEXT NOT NULL,
    `dateCreated` DATETIME DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table Structure For Table `menu`
--

CREATE TABLE `menu`(
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `meal` TEXT NOT NULL,
    `price` INT NOT NULL,
    `category` TEXT NOT NULL,
    `stockAvailable` INT NOT NULL,
    `image` TEXT NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Inserting Data Into `menu` Table
--

INSERT INTO `menu`(`meal`,`price`,`category`,`stockAvailable`, `image`) VALUES
("Fried Rice", 1300,"food", 34, "https://www.shutterstock.com/image-photo/meal-nigerian-fried-rice-served-chicken-1386416972.jpg"),
("Stir Fry Spagheti", 1300,"food", 34, "https://www.shutterstock.com/image-photo/sauced-spaghetti-tomatoes-white-bowl-fork-1939895284.jpg"),
("Yam and Sauce", 1300, "protein", 34, "https://www.shutterstock.com/image-photo/white-plate-boiled-yam-fried-scrambled-1737145400.jpg"),
("Egwusi Soup", 1300, "vegetable", 34, "https://demandafrica.com/wp-content/uploads/2017/06/EgusiSoup-e1533238405501.jpg"),
("White Rice and Stew", 1300, "food", 34, "https://www.shutterstock.com/image-photo/plate-white-rice-diced-carrots-green-1288419217.jpg"),
("Beans and Dodo", 1300, "vegetable", 34, "https://www.shutterstock.com/image-photo/typical-nigerian-meal-beans-dodo-600w-1304388136.jpg"),
("Roasted Lamb", 1300, "protein", 34, "https://www.shutterstock.com/image-photo/grilled-lamb-carre-warm-couscous-600w-754610044.jpg"),
("Chocolate Cake", 1300, "pastry", 34, "https://www.shutterstock.com/image-photo/plate-slice-tasty-homemade-chocolate-600w-1295709469.jpg"),
("Okro Soup", 1300, "vegetable", 34, "https://www.shutterstock.com/image-photo/okra-soup-served-garri-600w-2002467173.jpg"),
("Roasted Fish", 1300, "protein", 34, "https://www.shutterstock.com/image-photo/dish-bulgarian-cuisine-grilled-vegetables-600w-1929629066.jpg"),
("Jollof Rice", 1300, "food", 34, "https://www.shutterstock.com/image-photo/chicken-jollof-rice-plantains-600w-2135119383.jpg"),
("Okpa", 1300, "protein", 34, "https://www.allnigerianrecipes.com/wp-content/uploads/2019/03/okpawawa.jpg");

