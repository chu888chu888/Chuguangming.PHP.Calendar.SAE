-- phpMyAdmin SQL Dump
-- version 3.3.8.1
-- http://www.phpmyadmin.net
--
-- 主机: w.rdc.sae.sina.com.cn:3307
-- 生成日期: 2013 年 04 月 18 日 10:30
-- 服务器版本: 5.5.23
-- PHP 版本: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `app_plans`
--

-- --------------------------------------------------------

--
-- 表的结构 `calendar`
--

CREATE TABLE IF NOT EXISTS `calendar` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '�ճ�����',
  `Subject` varchar(2000) DEFAULT NULL COMMENT '�ճ̱���',
  `Location` varchar(200) DEFAULT NULL COMMENT '�ص�',
  `MasterId` int(11) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL COMMENT '˵��',
  `CalendarType` tinyint(4) DEFAULT '1' COMMENT '�ճ�����\n            1	�����ճ�\n            2	�����ճ�',
  `StartTime` datetime NOT NULL COMMENT '��ʼʱ��',
  `EndTime` datetime NOT NULL COMMENT '����ʱ��',
  `IsAllDayEvent` bit(1) NOT NULL DEFAULT b'0' COMMENT '�Ƿ�ȫ���ճ�',
  `HasAttachment` bit(1) NOT NULL DEFAULT b'0' COMMENT '�Ƿ��и���',
  `Category` varchar(400) DEFAULT NULL COMMENT '����',
  `InstanceType` tinyint(4) NOT NULL COMMENT 'ʵ������\n            0	Single��һ���ճ̣�\n            1	Master��ѭ�����ճ̣�\n            2	Instance��ѭ��ʵ���ճ̣�\n            3	Exception ������\n            4	MeetingRequest�����鰲�ţ�',
  `Attendees` varchar(500) DEFAULT NULL COMMENT '������',
  `AttendeeNames` varchar(500) DEFAULT NULL COMMENT '����������',
  `OtherAttendee` varchar(500) DEFAULT NULL COMMENT '����������',
  `UPAccount` varchar(100) DEFAULT NULL COMMENT '�������˺�',
  `UPName` varchar(100) DEFAULT NULL COMMENT '����������',
  `UPTime` datetime DEFAULT NULL COMMENT '���һ�θ���ʱ��',
  `RecurringRule` varchar(1000) DEFAULT NULL COMMENT 'ѭ������',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `calendar`
--

INSERT INTO `calendar` (`Id`, `Subject`, `Location`, `MasterId`, `Description`, `CalendarType`, `StartTime`, `EndTime`, `IsAllDayEvent`, `HasAttachment`, `Category`, `InstanceType`, `Attendees`, `AttendeeNames`, `OtherAttendee`, `UPAccount`, `UPName`, `UPTime`, `RecurringRule`) VALUES
(1, '田', '', 8, '', 1, '2013-04-17 08:00:00', '2013-04-17 09:00:00', '\0', '\0', '', 0, '', '', '', '223.101.144.249, 223.101.144.249', '管理员', '2013-04-18 10:28:03', NULL),
(2, '品', '', 8, '', 1, '2013-04-18 07:00:00', '2013-04-18 08:00:00', '\0', '\0', '', 0, '', '', '', '223.101.144.249, 223.101.144.249', '管理员', '2013-04-18 10:28:07', NULL),
(3, '品‘', '', 8, '', 1, '2013-04-19 07:00:00', '2013-04-19 08:00:00', '\0', '\0', '', 0, '', '', '', '223.101.144.249, 223.101.144.249', '管理员', '2013-04-18 10:28:11', NULL);
