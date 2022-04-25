CREATE USER 'somename'@'localhost' IDENTIFIED BY 'XXXXXXXXXXXXXXXX';
CREATE DATABASE IF NOT EXISTS `somename` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_latvian_ci;
GRANT ALL PRIVILEGES ON `somename`.* TO 'somename'@'localhost';
