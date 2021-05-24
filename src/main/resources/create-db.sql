DROP SCHEMA IF EXISTS `computer_order_webapp`;

CREATE SCHEMA `computer_order_webapp`;

use `computer_order_webapp`;

SET FOREIGN_KEY_CHECKS = 0;

/* creating order table */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `justification` varchar(500) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `computer_id` int(11) DEFAULT NULL,
  
  PRIMARY KEY (`id`),

  KEY `FK_COMPUTER_idx` (`computer_id`),
  CONSTRAINT `FK_DETAIL` 
  FOREIGN KEY (`computer_id`) 
  REFERENCES `computer` (`id`) 
  ON DELETE NO ACTION ON UPDATE NO ACTION
  
  
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO `order`(justification,status,computer_id) 
VALUES
('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper urna quis ante dignissim, at luctus lectus feugiat. Ut tortor erat, vulputate non metus ut, interdum ullamcorper libero. ',  'PENDING' ,  10),
('Duis aliquet nulla ipsum, at faucibus ipsum molestie ac. Praesent ac semper magna, vel porttitor erat. Aliquam finibus at diam in placerat. ', 'ACCEPTED', 11),
('Cras semper enim tellus, sit amet rhoncus tellus mollis sit amet. Nullam sollicitudin at orci vel finibus. Curabitur non arcu nunc.', 'REJECTED', 12),
('Pellentesque non libero ac orci bibendum ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'PENDING', 13);


/* creating computer table which have reference to order table*/

DROP TABLE IF EXISTS `computer`;

CREATE TABLE `computer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpu` varchar(128) DEFAULT NULL,
  `ram` varchar(128) DEFAULT NULL,
  `hdd` varchar(128) DEFAULT NULL,
  `video_card` varchar(128) DEFAULT NULL,
  
  PRIMARY KEY (`id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO `computer`(cpu, ram, hdd, video_card) 
VALUES
('Intel Core i5-11400',  'T-Force Xtreem ARGB DDR4-3600 (2 x 8GB)' ,  'WD Blue Desktop 500GB' , 'Nvidia GeForce RTX 3090'),
('AMD Ryzen 3 3300X',  'T-Force Xtreem ARGB DDR4-3600 (2 x 8GB)' ,  'Toshiba X300 4TB' , 'AMD Radeon RX 6900 XT'),
('Intel Core i5-11400',  'G.Skill Trident Z Neo DDR4-3600 (2 x 16GB)' ,  'Seagate BarraCuda 3TB' , 'Nvidia GeForce RTX 3090'),
('AMD Ryzen 3 3300X',  'Corsair Vengeance RGB Pro DDR4-3200 (4 x 8GB)' ,  'WD VelociRaptor 250GB' , 'Nvidia GeForce GTX 1650 Super');


