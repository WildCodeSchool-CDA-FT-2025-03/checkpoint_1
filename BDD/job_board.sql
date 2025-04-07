DROP DATABASE IF EXISTS `job_board`;

CREATE DATABASE IF NOT EXISTS `job_board` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE job_board;

CREATE TABLE IF NOT EXISTS `candidate` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `login` VARCHAR(100) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `first_name` VARCHAR(100) NOT NULL,
    `last_name` VARCHAR(100) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `phone_number` VARCHAR(20) NOT NULL,
    `desc` VARCHAR(1000),
);

CREATE TABLE IF NOT EXISTS `recruiter` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `login` VARCHAR(100) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
);

CREATE TABLE IF NOT EXISTS `company` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) NOT NULL,
    `desc` VARCHAR(1000),
);

CREATE TABLE IF NOT EXISTS `job` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `title` VARCHAR(255) NOT NULL,
    `desc` VARCHAR(1000) NOT NULL,
    `city` VARCHAR(255) NOT NULL,
);

CREATE TABLE IF NOT EXISTS `candidate_job` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `id_candidate` INT NOT NULL,
    `id_job` INT NOT NULL,
    FOREIGN KEY (`id_candidate`) REFERENCES `candidate`(`id`),
    FOREIGN KEY (`id_job`) REFERENCES `job`(`id`),
);

CREATE TABLE IF NOT EXISTS `candidate_company` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `id_candidate` INT NOT NULL,
    `id_company` INT NOT NULL,
    FOREIGN KEY (`id_candidate`) REFERENCES `candidate`(`id`),
    FOREIGN KEY (`id_company`) REFERENCES `company`(`id`),
);
