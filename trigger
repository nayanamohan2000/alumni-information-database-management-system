CREATE DEFINER=`root`@`localhost` TRIGGER `alumni_BEFORE_DELETE` BEFORE DELETE ON `alumni` FOR EACH ROW BEGIN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'table t1 does not support deletion';

END


DROP TRIGGER IF EXISTS `alumnidb`.`alumni_BEFORE_DELETE`;

DELIMITER $$
USE `alumnidb`$$                                                                                                      (modified)
CREATE DEFINER=`root`@`localhost` TRIGGER `alumni_BEFORE_DELETE` BEFORE DELETE ON `alumni` FOR EACH ROW BEGIN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'you cannot delete alumni informations';

END$$
DELIMITER ;
