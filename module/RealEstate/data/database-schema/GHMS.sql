DROP DATABASE rems;
CREATE DATABASE rems
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;

USE rems;

DROP TABLE `users`;
CREATE TABLE `users` (
	`uid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`pid`  int(11) UNSIGNED NOT NULL DEFAULT '0',
	`hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`createdTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`createdUserUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`lastModifiedTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`lastModifiedUserUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`validTimeStart` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`validTimeEnd` int(11) UNSIGNED NOT NULL DEFAULT '0',

	`userName` varchar(50) NOT NULL DEFAULT '',
	`passWord` varchar(50) NOT NULL DEFAULT '',
	`email` varchar(50) NOT NULL DEFAULT '',
	`lastLoginTime` int(11) UNSIGNED NOT NULL DEFAULT '0',	

	`groupUid` int(11) UNSIGNED NOT NULL DEFAULT '0',

	PRIMARY KEY (`uid`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE `personal_details`;
CREATE TABLE `personal_details` (
	`uid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`pid`  int(11) UNSIGNED NOT NULL DEFAULT '0',
	`hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`createdTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`createdUserUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`lastModifiedTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`lastModifiedUserUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`validTimeStart` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`validTimeEnd` int(11) UNSIGNED NOT NULL DEFAULT '0',

	`firstname` varchar(50) NOT NULL DEFAULT '',
	`lastname` varchar(50) NOT NULL DEFAULT '',
	`gender` char(1) NOT NULL DEFAULT '',
	`job` varchar(50) NOT NULL DEFAULT '',
	`age` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
	`email` varchar(50) NOT NULL DEFAULT '',
	`phoneNumber1` varchar(50) NOT NULL DEFAULT '',
	`phoneNumber2` varchar(50) NOT NULL DEFAULT '',
	`others` TEXT NOT NULL ,
	
	`userUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`personalTypeUid` int(11) UNSIGNED NOT NULL DEFAULT '0',

	PRIMARY KEY (`uid`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE `personal_types`;
CREATE TABLE `personal_types` (
	`uid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`pid`  int(11) UNSIGNED NOT NULL DEFAULT '0',
	`hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`createdTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`createdUserUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`lastModifiedTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`lastModifiedUserUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`validTimeStart` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`validTimeEnd` int(11) UNSIGNED NOT NULL DEFAULT '0',

	`title` varchar(50) NOT NULL DEFAULT '',

	PRIMARY KEY (`uid`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE `sizes`;
CREATE TABLE `sizes` (
	`uid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`pid`  int(11) UNSIGNED NOT NULL DEFAULT '0',
	`hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`createdTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`createdUserUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`lastModifiedTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`lastModifiedUserUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`validTimeStart` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`validTimeEnd` int(11) UNSIGNED NOT NULL DEFAULT '0',

	`width` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`height` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`length` int(11) UNSIGNED NOT NULL DEFAULT '0',

	PRIMARY KEY (`uid`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE `groups`;
CREATE TABLE `groups` (
	`uid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`pid`  int(11) UNSIGNED NOT NULL DEFAULT '0',
	`hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`createdTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`createdUserUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`lastModifiedTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`lastModifiedUserUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`validTimeStart` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`validTimeEnd` int(11) UNSIGNED NOT NULL DEFAULT '0',

	`title` int(11) UNSIGNED NOT NULL DEFAULT '0',

	PRIMARY KEY (`uid`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE `permissions`;
CREATE TABLE `permissions` (
	`uid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`pid`  int(11) UNSIGNED NOT NULL DEFAULT '0',
	`hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`createdTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`createdUserUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`lastModifiedTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`lastModifiedUserUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`validTimeStart` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`validTimeEnd` int(11) UNSIGNED NOT NULL DEFAULT '0',

	`title` int(11) UNSIGNED NOT NULL DEFAULT '0',

	PRIMARY KEY (`uid`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE `groups_permissions`;
CREATE TABLE `groups_permissions` (
	`uid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`pid`  int(11) UNSIGNED NOT NULL DEFAULT '0',
	`hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`createdTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`createdUserUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`lastModifiedTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`lastModifiedUserUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`validTimeStart` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`validTimeEnd` int(11) UNSIGNED NOT NULL DEFAULT '0',

	`groupUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`permissionsUid` int(11) UNSIGNED NOT NULL DEFAULT '0',

	PRIMARY KEY (`uid`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE `rooms`;
CREATE TABLE `rooms` (
	`uid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`pid`  int(11) UNSIGNED NOT NULL DEFAULT '0',
	`hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`createdTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`createdUserUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`lastModifiedTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`lastModifiedUserUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`validTimeStart` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`validTimeEnd` int(11) UNSIGNED NOT NULL DEFAULT '0',

	`roomNumber` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`cost` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`toilet` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`kitchen` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`available` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	
	`sizeUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
        `houseUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	PRIMARY KEY (`uid`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE `houses`;
CREATE TABLE `houses` (
	`uid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`pid`  int(11) UNSIGNED NOT NULL DEFAULT '0',
	`hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`createdTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`createdUserUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`lastModifiedTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`lastModifiedUserUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`validTimeStart` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`validTimeEnd` int(11) UNSIGNED NOT NULL DEFAULT '0',

	`isRoomRent` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`cost` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`available` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`otherInfo` TEXT  NOT NULL ,

	`userUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`typeUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`sizeUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`addressUid` int(11) UNSIGNED NOT NULL DEFAULT '0',


	PRIMARY KEY (`uid`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE `house_types`;
CREATE TABLE `house_types` (
	`uid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`pid`  int(11) UNSIGNED NOT NULL DEFAULT '0',
	`hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`createdTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`createdUserUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`lastModifiedTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`lastModifiedUserUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`validTimeStart` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`validTimeEnd` int(11) UNSIGNED NOT NULL DEFAULT '0',

	`title` varchar(50) NOT NULL DEFAULT '',

	PRIMARY KEY (`uid`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE `address`;
CREATE TABLE `address` (
	`uid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
	`pid`  int(11) UNSIGNED NOT NULL DEFAULT '0',
	`hidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
	`createdTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`createdUserUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`lastModifiedTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`lastModifiedUserUid` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`validTimeStart` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`validTimeEnd` int(11) UNSIGNED NOT NULL DEFAULT '0',

	`house` varchar(64) NOT NULL DEFAULT '',
	`street` varchar(64) NOT NULL DEFAULT '',
	`vilage` varchar(70) NOT NULL DEFAULT '',
	`longitude` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`latitude` int(11) UNSIGNED NOT NULL DEFAULT '0',
	`district` varchar(70) NOT NULL DEFAULT '',
	`quarter` varchar(70) NOT NULL DEFAULT '',
	`city` varchar(70) NOT NULL DEFAULT '',

	PRIMARY KEY (`uid`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `address` (`uid`, `pid`, `hidden`, `disabled`, `deleted`, `createdTime`, `createdUserUid`, `lastModifiedTime`, `lastModifiedUserUid`, `validTimeStart`, `validTimeEnd`, `house`, `street`, `vilage`, `longitude`, `latitude`, `district`, `quarter`, `city`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '415', '907', 'tsk', 104.852, 11.6569, 'tsk', 'rsk', 'pp'),
(2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '538', '217', 'rs', 104.817, 11.4605, 'smj', 'mj', 'pp');

INSERT INTO `houses` (`uid`, `pid`, `hidden`, `disabled`, `deleted`, `createdTime`, `createdUserUid`, `lastModifiedTime`, `lastModifiedUserUid`, `validTimeStart`, `validTimeEnd`, `isRoomRent`, `cost`, `available`, `otherInfo`, `userUid`, `typeUid`, `sizeUid`, `addressUid`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, '', 0, 1, 0, 1),
(2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 1, '', 2, 1, 2, 2);


INSERT INTO `sizes` (`uid`, `pid`, `hidden`, `disabled`, `deleted`, `createdTime`, `createdUserUid`, `lastModifiedTime`, `lastModifiedUserUid`, `validTimeStart`, `validTimeEnd`, `width`, `height`, `length`) VALUES (NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '6', '30'), (NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '4', '20');

INSERT INTO `rooms` (`uid`, `pid`, `hidden`, `disabled`, `deleted`, `createdTime`, `createdUserUid`, `lastModifiedTime`, `lastModifiedUserUid`, `validTimeStart`, `validTimeEnd`, `roomNumber`, `cost`, `toilet`, `kitchen`, `available`, `sizeUid`, `houseUid`) VALUES (NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '50', '1', '1', '1', '1', '1'), (NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2', '50', '2', '2', '1', '1', '1');

INSERT INTO `ghms`.`house_types` (`uid`, `pid`, `hidden`, `disabled`, `deleted`, `createdTime`, `createdUserUid`, `lastModifiedTime`, `lastModifiedUserUid`, `validTimeStart`, `validTimeEnd`, `title`) VALUES (NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'flat');