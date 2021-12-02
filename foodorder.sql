

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `foodorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`) VALUES
('VISHNU SASANK', 'foodie@gmail.com', '9100545480'),
('SREEDATH', 'foodie@gmail.com', '9100545481'),
('SAI KIRAN', 'foodie@gmail.com', '	8854247562'),
('MANIDEEP', 'foodie@gmail.com', '9100545483'),
('KARTHIK', 'foodie@gmail.com', '9874563252');


-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('vishnu','VISHNU SASANK','vishnusasank@gmail.com','9100545486','Andhra Pradesh,Vijayawada,','vish@nu');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(58,'Tasty-vada',40,'Andhra Food with more taste',1,'images/vada.jpg'ENABLE),
(59, 'Chicken-dum-Biryani', 200, 'Delightful and spicy Chicken dum biryani  served with grilled onions with taste and love', 1, 'images/cb.jpg', 'ENABLE'),
(60, 'Chocolate Hazelnut Truffle', 99, 'Lose all senses over this very delicious chocolate hazelnut truffle.', 3, 'images/Chocolate_Hazelnut_Truffle.jpg', 'ENABLE'),
(61, 'Special_Karam Dosa', 80, 'the flavour which was applied is more tastier than ever ......taste and enjoy it', 1, 'images/dosa.jpg', 'ENABLE'),
(62, 'Gobi Manchurian', 70, 'more spice ,best in taste..wanna try', 2, 'images/gobi.jpg', 'ENABLE'),
(63, 'Special Meals', 150, 'All kinds of food as Onedish', 3, 'images/Baahubali_Thali.jpg', 'ENABLE'),
(65, 'Cappuccino', 80, 'made with quality coffee beans and rich pastuerized  milk', 6, 'images/coffeee.jpg', 'ENABLE'),
(66, 'Tea', 20, 'The simple elixir of tea is of our natural world.', 4, 'images/tea.jpg', 'DISABLE'),
(68, 'Paneer', 85, 'it', 6, 'images/paneer pakora.jpg', 'ENABLE'),
(69, 'Coffee', 30, 'decoction coffee with purity and healthy', 2, 'images/coffee.jpg', 'ENABLE'),
(70, 'Tea', 20, 'The simple elixir of tea is of our natural world.', 2, 'images/tea.jpg', 'ENABLE'),
(71, 'Samosa', 40, 'Crispy Samosa..', 2, 'images/samosa.jpg', 'ENABLE'),
(72, 'Paneer Bajji', 50, 'it takes you to another world of taste', 2, 'images/paneer pakora.jpg', 'ENABLE'),
(73, 'Puff', 35, 'Vegetable Puff, a snack ', 2, 'images/puffF.jpg', 'ENABLE'),
(74, 'Pizza', 200, 'Good and Tasty ', 2, 'Pizzaa.jpg', 'ENABLE'),
(76, 'Chicken Wings', 100, 'Non veg lovers must and shouuld try', 2, 'images/wings.jpg', 'ENABLE'),
(78, 'French Fries', 75, 'Pure Veg and Tasty.', 2, 'images/frenchfries.jpg', 'ENABLE'),
(80, 'Idli-SAmbar', 50, 'Pure Veg and Tasty.', 2, 'images/Sambar.jpg', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('vishnu','VishnuSasank','vishnusasank@gmail.com','9100545483','Andhhra Pradesh','vish@nu');
-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(1,58,'Tasty-vada',40,1,'2019-03-03','vishnu',2),
(2, 69, 'Coffee', 30, 2, '2019-03-03', 'vishnu', 4),
(3, 69, 'Coffee', 30, 2, '2019-03-03', 'vishnu', 4),
(4, 69*, 'Coffee', 30, 2, '2019-03-03', 'vishnu', 4),
(5, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-03', 'sreedathr', 3),
(6, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-05', 'sreedath', 3),
(7, 69, 'Coffee', 30, 1, '2019-03-05', 'vishnur', 4),
(8, 60, 'Chocolate Hazelnut Truffle', 99, 4, '2019-03-05', 'sreedath', 3),
(9, 69, 'Coffee', 25, 1, '2019-03-05', 'ckumar', 4),
(10, 66, 'Tea', 20, 7, '2019-03-05', 'ckumar', 4),
(11, 63, 'Special Meals', 150, 1, '2019-03-05', 'saikiran', 3),
(12, 65, 'Capuccino', 1, '2019-03-05', 'saikiran', 2),
(13, 69, 'Coffee', 30, 1, '2019-03-05', 'vishnu', 4),
(14, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-15', 'sreedath', 3),
(15,80, 'Idli-SAmbar', 50, 1, '2019-03-15', 'vishnu', 1),
(16, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-03-15', 'saikiran', 3),
(17, 78, 'French Fries', 75, 7, '2019-03-15', 'saikiranr', 2),
(18, 78, 'French Fries', 75, 1, '2019-03-15', 'vishnu', 2),
(19, 73, 'Puff', 35, 1, '2019-03-15', 'sreedath', 2),
(20, 74, 'Pizza', 200, 2, '2019-03-16', 'sreedath', 2),
(21, 70, 'Tea', 20, 1, '2019-03-16', 'vishnu', 2),
(22, 60, 'Chocolate Hazelnut Truffle', 99, 2, '2019-03-16', 'vishnu', 3),
(23, 70, 'Tea', 20, 1, '2019-03-16', 'saikiran', 2),
(24, 60, 'Chocolate Hazelnut Truffle', 99, 2, '2019-03-16', 'saikiran', 3),
(25, 70, 'Tea', 20, 1, '2019-03-16', 'saikiran', 2);
-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
('1', 'Karthik kare Restaurant','karthik@restaurant.com','7944112363','telangana,'karthik123'),
('2','kiran machas restaurant','macha@restaurant.com','9254758541','Andhhra Pradesh','kiran123'),
('3','sreesaviour Restaurant','sree@restaurant.com','7741526388','Andhhra Pradesh','sree1234'),
('4','manimakes honey','mani@gmail.com','7418529633','telangana','mani123'),
(6, 'delight Mood','cafe4@gmail.com','85474213561','Vijayawada','Vishnu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;
