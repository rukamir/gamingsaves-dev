ALTER TABLE `game`.`game` 
ADD COLUMN `region` CHAR(4) NOT NULL DEFAULT 'US' AFTER `dev`,
ADD COLUMN `lang` CHAR(4) NOT NULL DEFAULT 'en' AFTER `region`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`, `src`, `lang`, `region`);

ALTER TABLE `game`.`deal` 
ADD COLUMN `group` VARCHAR(50) NULL AFTER `date`,
ADD COLUMN `group_name` VARCHAR(100) NULL AFTER `group`,
ADD COLUMN `expire` VARCHAR(45) NULL AFTER `group_name`,
ADD COLUMN `region` CHAR(4) NOT NULL DEFAULT 'US' AFTER `expire`,
ADD COLUMN `lang` CHAR(4) NOT NULL DEFAULT 'en' AFTER `region`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`, `src`, `region`, `lang`);

ALTER TABLE `game`.`price_hist` 
ADD COLUMN `region` CHAR(4) NOT NULL DEFAULT 'US' AFTER `src`,
ADD COLUMN `lang` CHAR(4) NOT NULL DEFAULT 'en' AFTER `region`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`, `date`, `src`, `region`, `lang`);

ALTER TABLE `game`.`thumbnail` 
ADD COLUMN `region` CHAR(4) NOT NULL DEFAULT 'US' AFTER `src`,
ADD COLUMN `lang` CHAR(4) NOT NULL DEFAULT 'en' AFTER `region`,
ADD PRIMARY KEY (`lang`, `region`, `src`, `key`);

