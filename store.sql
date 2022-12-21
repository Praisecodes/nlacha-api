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
("Fried Rice", 1300,"food", 34, "https://www.shutterstock.com/image-photo/meal-nigerian-fried-rice-served-chicken-1386416972"),
("Stir Fry Spagheti", 1300,"food", 34, "https://www.shutterstock.com/image-photo/sauced-spaghetti-tomatoes-white-bowl-fork-1939895284"),
("Yam and Sauce", 1300, "protein", 34, "https://www.shutterstock.com/image-photo/white-plate-boiled-yam-fried-scrambled-1737145400"),
("Egwusi Soup", 1300, "vegetable", 34, "https://www.google.com/url?sa=i&url=https%3A%2F%2Fdemandafrica.com%2Ffood%2Frecipes%2Fnigerian-egusi-soup%2F&psig=AOvVaw0hTtkEGHB4ssadT-c9E7Yy&ust=1671715249686000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCPiljd_mivwCFQAAAAAdAAAAABAE"),
("White Rice and Stew", 1300, "food", 34, "https://www.shutterstock.com/image-photo/plate-white-rice-diced-carrots-green-1288419217"),
("Beans and Dodo", 1300, "vegetable", 34, "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DH0d5q_gGV14&psig=AOvVaw3dlhw4VYoWS1DbK4LAQerR&ust=1671715513358000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCNCn793nivwCFQAAAAAdAAAAABAK"),
("Roasted Lamb", 1300, "protein", 34, "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.seriouseats.com%2Fslow-roasted-lamb-garlic-anchovy-lemon-rosemary-food-lab-recipe&psig=AOvVaw2i7tgVvZtR9QvIZ_KrLkgU&ust=1671715613665000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCOi314zoivwCFQAAAAAdAAAAABAE"),
("Chocolate Cake", 1300, "pastry", 34, "https://www.google.com/url?sa=i&url=https%3A%2F%2Fguardian.ng%2Flife%2Fmoist-chocolate-cake-recipe%2F&psig=AOvVaw2_UB2fxgYCNLLK9CezLc31&ust=1671715686352000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCNigr6_oivwCFQAAAAAdAAAAABAE"),
("Okro Soup", 1300, "vegetable", 34, "https://www.google.com/url?sa=i&url=https%3A%2F%2Fadunskitchen.com%2Fokra-soup-things-you-dont-know%2F&psig=AOvVaw272Zw2sNaoiEt6D9ur61oG&ust=1671715829556000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCIjt6PPoivwCFQAAAAAdAAAAABAE"),
("Roasted Fish", 1300, "protein", 34, "https://www.google.com/url?sa=i&url=https%3A%2F%2Fdobbyssignature.com%2Fbarbecued-marinated-croaker-fish-recipe-on-street-foodie-waka%2F&psig=AOvVaw3bdxFK76qvlWv8EuzdA2gq&ust=1671715897319000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCPjI95PpivwCFQAAAAAdAAAAABAV"),
("Jollof Rice", 1300, "food", 34, "https://www.google.com/url?sa=i&url=https%3A%2F%2Fevseats.com%2Fhow-to-make-jollof-rice-in-5-easy-steps%2F&psig=AOvVaw1sow9jU-5H8sHWcaXig183&ust=1671716180861000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCICJpZvqivwCFQAAAAAdAAAAABAT"),
("Okpa", 1300, "protein", 34, "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DLteI3NmPzfM&psig=AOvVaw01VR7dUgowecUxV3-_2Wlt&ust=1671716249897000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCMiTirzqivwCFQAAAAAdAAAAABAJ");

