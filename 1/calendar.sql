-- phpMyAdmin SQL Dump
-- version 3.3.8.1
-- http://www.phpmyadmin.net
--
-- ä¸»æœº: w.rdc.sae.sina.com.cn:3307
-- ç”Ÿæˆæ—¥æœŸ: 2013 å¹´ 04 æœˆ 18 æ—¥ 10:30
-- æœåŠ¡å™¨ç‰ˆæœ¬: 5.5.23
-- PHP ç‰ˆæœ¬: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- æ•°æ®åº“: `app_plans`
--

-- --------------------------------------------------------

--
-- è¡¨çš„ç»“æ„ `calendar`
--

CREATE TABLE IF NOT EXISTS `calendar` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ÈÕ³ÌÖ÷¼ü',
  `Subject` varchar(2000) DEFAULT NULL COMMENT 'ÈÕ³Ì±êÌâ',
  `Location` varchar(200) DEFAULT NULL COMMENT 'µØµã',
  `MasterId` int(11) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL COMMENT 'ËµÃ÷',
  `CalendarType` tinyint(4) DEFAULT '1' COMMENT 'ÈÕ³ÌÀàĞÍ\n            1	¸öÈËÈÕ³Ì\n            2	²¿ÃÅÈÕ³Ì',
  `StartTime` datetime NOT NULL COMMENT '¿ªÊ¼Ê±¼ä',
  `EndTime` datetime NOT NULL COMMENT '½áÊøÊ±¼ä',
  `IsAllDayEvent` bit(1) NOT NULL DEFAULT b'0' COMMENT 'ÊÇ·ñÈ«ÌìÈÕ³Ì',
  `HasAttachment` bit(1) NOT NULL DEFAULT b'0' COMMENT 'ÊÇ·ñÓĞ¸½¼ş',
  `Category` varchar(400) DEFAULT NULL COMMENT '·ÖÀà',
  `InstanceType` tinyint(4) NOT NULL COMMENT 'ÊµÀıÀàĞÍ\n            0	Single£¨Ò»°ãÈÕ³Ì£©\n            1	Master£¨Ñ­»·Ö÷ÈÕ³Ì£©\n            2	Instance£¨Ñ­»·ÊµÀıÈÕ³Ì£©\n            3	Exception £¨´íÎó£©\n            4	MeetingRequest£¨»áÒé°²ÅÅ£©',
  `Attendees` varchar(500) DEFAULT NULL COMMENT '²ÎÓëÈË',
  `AttendeeNames` varchar(500) DEFAULT NULL COMMENT '²ÎÓëÈËĞÕÃû',
  `OtherAttendee` varchar(500) DEFAULT NULL COMMENT 'ÆäËû²ÎÓëÈË',
  `UPAccount` varchar(100) DEFAULT NULL COMMENT '¸üĞÂÈËÕËºÅ',
  `UPName` varchar(100) DEFAULT NULL COMMENT '¸üĞÂÈËĞÕÃû',
  `UPTime` datetime DEFAULT NULL COMMENT '×îºóÒ»´Î¸üĞÂÊ±¼ä',
  `RecurringRule` varchar(1000) DEFAULT NULL COMMENT 'Ñ­»·¹æÔò',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- è½¬å­˜è¡¨ä¸­çš„æ•°æ® `calendar`
--

INSERT INTO `calendar` (`Id`, `Subject`, `Location`, `MasterId`, `Description`, `CalendarType`, `StartTime`, `EndTime`, `IsAllDayEvent`, `HasAttachment`, `Category`, `InstanceType`, `Attendees`, `AttendeeNames`, `OtherAttendee`, `UPAccount`, `UPName`, `UPTime`, `RecurringRule`) VALUES
(1, 'ç”°', '', 8, '', 1, '2013-04-17 08:00:00', '2013-04-17 09:00:00', '\0', '\0', '', 0, '', '', '', '223.101.144.249, 223.101.144.249', 'ç®¡ç†å‘˜', '2013-04-18 10:28:03', NULL),
(2, 'å“', '', 8, '', 1, '2013-04-18 07:00:00', '2013-04-18 08:00:00', '\0', '\0', '', 0, '', '', '', '223.101.144.249, 223.101.144.249', 'ç®¡ç†å‘˜', '2013-04-18 10:28:07', NULL),
(3, 'å“â€˜', '', 8, '', 1, '2013-04-19 07:00:00', '2013-04-19 08:00:00', '\0', '\0', '', 0, '', '', '', '223.101.144.249, 223.101.144.249', 'ç®¡ç†å‘˜', '2013-04-18 10:28:11', NULL);
