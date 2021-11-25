CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `email` varchar(120) NOT NULL,
  `passowrd` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `tasks`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL,
  `description` text NULL,
  `maked` char(1) NULL,
  `status` char(1) NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `task_user` FOREIGN KEY (`user_id`) REFERENCES `todo`.`users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
);