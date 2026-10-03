CREATE DATABASE IF NOT EXISTS `pos_db`
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_general_ci;

USE `pos_db`;

CREATE TABLE IF NOT EXISTS `customers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `full_name` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `phone` VARCHAR(20) DEFAULT NULL,
  `created_at` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(50) NOT NULL UNIQUE,
  `full_name` VARCHAR(100) NOT NULL,
  `created_at` DATETIME NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT IGNORE INTO `customers` (`id`, `full_name`, `email`, `phone`, `created_at`) VALUES
  (1, 'Juan dela Cruz', 'juan.delacruz@example.com', '09171234567', '2026-10-01 09:00:00'),
  (2, 'Maria Clara Santos', 'maria.santos@example.com', '09182345678', '2026-10-01 09:15:00'),
  (3, 'Jose Rizal', 'jose.rizal@example.com', '09193456789', '2026-10-01 09:30:00'),
  (4, 'Andres Bonifacio', 'andres.b@example.com', '09204567890', '2026-10-01 09:45:00'),
  (5, 'Apolinario Mabini', 'apolinario.m@example.com', '09215678901', '2026-10-01 10:00:00');

INSERT IGNORE INTO `users` (`id`, `username`, `full_name`, `created_at`) VALUES
  (1, 'admin_juan', 'Juan Reyes', '2026-10-01 09:00:00'),
  (2, 'cashier_ana', 'Ana Lim', '2026-10-01 09:15:00'),
  (3, 'cashier_pedro', 'Pedro Penduko', '2026-10-01 09:30:00'),
  (4, 'manager_sara', 'Sara Garcia', '2026-10-01 09:45:00'),
  (5, 'cashier_mark', 'Mark Bautista', '2026-10-01 10:00:00');
