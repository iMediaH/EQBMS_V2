-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 11 月 29 日 08:25
-- 服务器版本: 5.1.36
-- PHP 版本: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `eqbms`
--

-- --------------------------------------------------------

--
-- 表的结构 `admininfo`
--

CREATE TABLE IF NOT EXISTS `admininfo` (
  `AdminUser` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '管理员用户名',
  `AdminPassword` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`AdminUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='管理员表';

--
-- 转存表中的数据 `admininfo`
--

INSERT INTO `admininfo` (`AdminUser`, `AdminPassword`) VALUES
('123', '123');

-- --------------------------------------------------------

--
-- 表的结构 `courseinfo`
--

CREATE TABLE IF NOT EXISTS `courseinfo` (
  `CourseId` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程id',
  `CourseName` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '课程名',
  `CouerseInfo` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '课程简介',
  `TeacherId` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '教师id',
  PRIMARY KEY (`CourseId`),
  KEY `TeacherId` (`TeacherId`),
  KEY `TeacherId_2` (`TeacherId`),
  KEY `CourseId` (`CourseId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='课程表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `courseinfo`
--

INSERT INTO `courseinfo` (`CourseId`, `CourseName`, `CouerseInfo`, `TeacherId`) VALUES
(1, 'Web程序设计', 'Web程序设计xxx', '20130001');

-- --------------------------------------------------------

--
-- 表的结构 `judgment`
--

CREATE TABLE IF NOT EXISTS `judgment` (
  `QuestionId` int(11) NOT NULL AUTO_INCREMENT COMMENT '题目id',
  `UnitId` int(11) NOT NULL COMMENT '知识单元id',
  `Nanyidu` int(11) NOT NULL COMMENT '难易度',
  `TypeName` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '题型名（可自定义）',
  `Question` text COLLATE utf8_bin NOT NULL COMMENT '题目',
  `Answer` text COLLATE utf8_bin NOT NULL COMMENT '答案',
  `Image` text COLLATE utf8_bin COMMENT '图片附件',
  PRIMARY KEY (`QuestionId`),
  UNIQUE KEY `QuestionId` (`QuestionId`),
  KEY `UnitId` (`UnitId`),
  KEY `Nanyidu` (`Nanyidu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='判断题模板题型表' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `judgment`
--


-- --------------------------------------------------------

--
-- 表的结构 `multiplechoice`
--

CREATE TABLE IF NOT EXISTS `multiplechoice` (
  `QuestionId` int(11) NOT NULL AUTO_INCREMENT COMMENT '题目id',
  `UnitId` int(11) NOT NULL COMMENT '知识单元id',
  `Nanyidu` int(11) NOT NULL COMMENT '难易度',
  `TypeName` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '题型名（可自定义）',
  `Question` text COLLATE utf8_bin NOT NULL COMMENT '题目',
  `Answer` text COLLATE utf8_bin NOT NULL COMMENT '答案',
  `Image` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '图片附件',
  `Option1` text COLLATE utf8_bin NOT NULL COMMENT '选项',
  PRIMARY KEY (`QuestionId`),
  UNIQUE KEY `QuestionId` (`QuestionId`),
  KEY `UnitId` (`UnitId`),
  KEY `Nanyidu` (`Nanyidu`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='多选题模板题型表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `multiplechoice`
--

INSERT INTO `multiplechoice` (`QuestionId`, `UnitId`, `Nanyidu`, `TypeName`, `Question`, `Answer`, `Image`, `Option1`) VALUES
(1, 5, 3, '多项选择题', '按度假村你快睡吧哈', '1', NULL, 'ddddw');

-- --------------------------------------------------------

--
-- 表的结构 `nanyiduinfo`
--

CREATE TABLE IF NOT EXISTS `nanyiduinfo` (
  `NanyiduId` int(11) NOT NULL AUTO_INCREMENT COMMENT '难易度id',
  `NanyiduName` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '难易度类型名',
  PRIMARY KEY (`NanyiduId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='难易度表' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `nanyiduinfo`
--

INSERT INTO `nanyiduinfo` (`NanyiduId`, `NanyiduName`) VALUES
(1, '简单'),
(2, '一般'),
(3, '困难');

-- --------------------------------------------------------

--
-- 表的结构 `shortanswer`
--

CREATE TABLE IF NOT EXISTS `shortanswer` (
  `QuestionId` int(11) NOT NULL AUTO_INCREMENT COMMENT '题目id',
  `UnitId` int(11) NOT NULL COMMENT '题目id',
  `Nanyidu` int(11) NOT NULL COMMENT '难易度',
  `TypeName` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '题型名（可自定义）',
  `Question` text COLLATE utf8_bin NOT NULL COMMENT '题目',
  `Answer` text COLLATE utf8_bin NOT NULL COMMENT '答案',
  `Image` text COLLATE utf8_bin COMMENT '图片附件',
  PRIMARY KEY (`QuestionId`),
  UNIQUE KEY `QuestionId` (`QuestionId`),
  KEY `UnitId` (`UnitId`),
  KEY `Nanyidu` (`Nanyidu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='简答题模板题型表' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `shortanswer`
--


-- --------------------------------------------------------

--
-- 表的结构 `singlechoice`
--

CREATE TABLE IF NOT EXISTS `singlechoice` (
  `QuestionId` int(11) NOT NULL AUTO_INCREMENT COMMENT '题目id',
  `UnitId` int(11) NOT NULL COMMENT '知识单元id',
  `Nanyidu` int(11) NOT NULL COMMENT '难易度',
  `TypeName` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '单选题' COMMENT '题型名（可自定义）',
  `Question` text COLLATE utf8_bin NOT NULL COMMENT '题目',
  `Answer` text COLLATE utf8_bin NOT NULL COMMENT '答案',
  `Image` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '图片附件',
  `Option1` text COLLATE utf8_bin NOT NULL COMMENT '选项',
  `Option2` text COLLATE utf8_bin NOT NULL,
  `Option3` text COLLATE utf8_bin NOT NULL,
  `Option4` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`QuestionId`),
  UNIQUE KEY `QuestionId` (`QuestionId`),
  KEY `UnitId` (`UnitId`),
  KEY `Nanyidu` (`Nanyidu`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='单选题模板题型表' AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `singlechoice`
--

INSERT INTO `singlechoice` (`QuestionId`, `UnitId`, `Nanyidu`, `TypeName`, `Question`, `Answer`, `Image`, `Option1`, `Option2`, `Option3`, `Option4`) VALUES
(2, 1, 1, '单选题', '通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过通过', 'A', NULL, 'sdd', 'SSS', 'QQ', 'SQW'),
(3, 5, 2, '单选题', '好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好', 'B', NULL, 'A:csscsscss\r\nB:csscss\r\nC:csscssc\r\nD:AAA', '', '', ''),
(4, 6, 2, '单选题', '啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦', 'A', NULL, '啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦', '', '', ''),
(5, 6, 1, '单选题', '切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切切', 'A', NULL, 'aaa', '', '', ''),
(8, 5, 2, '单选题', '却常常擦擦擦擦擦擦擦擦擦擦擦擦擦擦擦擦擦擦擦擦擦擦擦擦', 'C', NULL, '', '', '', ''),
(9, 6, 1, '单选题', '被棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒棒', 'B', NULL, '', '', '', ''),
(10, 5, 2, '程序单选题', '生碎碎碎碎碎碎碎碎碎碎碎碎碎碎碎碎', 'A', NULL, '', '', '', ''),
(12, 1, 2, '单选题', '想惺惺相惜想惺惺相惜想惺惺相惜惺惺相惜惺惺相惜', 'A', NULL, '', '', '', ''),
(18, 6, 3, '单选题2', '侵权法青年教师少时诵诗书速度激情覅去山东潍坊vdv11', '2dwd侵权法青年教师少时诵诗书速度激情覅去山东潍坊vdv11', NULL, '', '', '', ''),
(19, 5, 1, '单选题ww', 'dcanbfuwuqksdnhfw声卡和午饭hi', '我的错是dvs额我去', NULL, '', '', '', ''),
(20, 5, 2, '程序单选题', '午饭v是vvvvvvvvvvvvvvvvvv的对我对我 ', '的吾问无为谓喂喂喂喂喂喂喂喂喂贫困覅', NULL, '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `teacherinfo`
--

CREATE TABLE IF NOT EXISTS `teacherinfo` (
  `TeacherNum` int(11) NOT NULL AUTO_INCREMENT COMMENT '教师序号',
  `TeacherId` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '教师ID',
  `TeacherPassword` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '123456' COMMENT '密码',
  `TeacherName` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '姓名',
  `TeacherTitle` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '职称',
  `TeacherPhone` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '联系电话',
  `TeacherEmail` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'email',
  `TeacherImage` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '../images/uesr-img.jpg' COMMENT '教师头像',
  PRIMARY KEY (`TeacherNum`),
  UNIQUE KEY `TeacherID` (`TeacherId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='教师表' AUTO_INCREMENT=31 ;

--
-- 转存表中的数据 `teacherinfo`
--

INSERT INTO `teacherinfo` (`TeacherNum`, `TeacherId`, `TeacherPassword`, `TeacherName`, `TeacherTitle`, `TeacherPhone`, `TeacherEmail`, `TeacherImage`) VALUES
(1, '20130001', '123456', '张佳', '讲师', '18888888888', 'zjvivi@126.com', '../images/uesr-img.jpg'),
(4, '20130002', '123456', '徐舒畅', '讲师', '11111111111', NULL, '../images/uesr-img.jpg'),
(8, '11111111', '123456', 'nana', '', NULL, NULL, '../images/uesr-img.jpg'),
(14, '1234', '1234569', '蛋蛋2', '教授', '', '', '../images/uesr-img.jpg'),
(15, 'hei', '123456', '笨笨', '助教', '', '', '../images/uesr-img.jpg'),
(18, '8723', '123456', '小王12', '教授', '', '', '../images/uesr-img.jpg'),
(24, '102391', '123456', 'nihaoma', '助教', '', '', '../images/uesr-img.jpg'),
(25, '2013211308', '123456', 'QQ', '助教', '18857119135', '', '../images/uesr-img.jpg'),
(26, '20140002', '123456', 'aza', '教授', '', '', '../images/uesr-img.jpg'),
(27, '1231a', '123456', '123', '教授', '', '', '../images/uesr-img.jpg'),
(29, 'sddq', '123456', '123', '教授', '', '', '../images/uesr-img.jpg'),
(30, '2edda', '123456', 'ww', '教授', '', '', '../images/uesr-img.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `unitinfo`
--

CREATE TABLE IF NOT EXISTS `unitinfo` (
  `UnitId` int(11) NOT NULL AUTO_INCREMENT COMMENT '单元id',
  `UnitName` varchar(20) COLLATE utf8_bin NOT NULL COMMENT '单元名',
  `UnitInfo` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '单元简介',
  `CourseId` int(11) NOT NULL COMMENT '课程id',
  PRIMARY KEY (`UnitId`),
  KEY `CourseId_2` (`CourseId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='知识单元表' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `unitinfo`
--

INSERT INTO `unitinfo` (`UnitId`, `UnitName`, `UnitInfo`, `CourseId`) VALUES
(1, 'Html', 'Htmlxxxx', 1),
(5, 'css', 'cssss', 1),
(6, 'php', 'phpxx', 1);

--
-- 限制导出的表
--

--
-- 限制表 `courseinfo`
--
ALTER TABLE `courseinfo`
  ADD CONSTRAINT `courseinfo_ibfk_1` FOREIGN KEY (`TeacherId`) REFERENCES `teacherinfo` (`TeacherID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `judgment`
--
ALTER TABLE `judgment`
  ADD CONSTRAINT `judgment_ibfk_1` FOREIGN KEY (`UnitId`) REFERENCES `unitinfo` (`UnitId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `judgment_ibfk_2` FOREIGN KEY (`Nanyidu`) REFERENCES `nanyiduinfo` (`NanyiduId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `multiplechoice`
--
ALTER TABLE `multiplechoice`
  ADD CONSTRAINT `multiplechoice_ibfk_1` FOREIGN KEY (`UnitId`) REFERENCES `unitinfo` (`UnitId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `multiplechoice_ibfk_2` FOREIGN KEY (`Nanyidu`) REFERENCES `nanyiduinfo` (`NanyiduId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `shortanswer`
--
ALTER TABLE `shortanswer`
  ADD CONSTRAINT `shortanswer_ibfk_1` FOREIGN KEY (`UnitId`) REFERENCES `unitinfo` (`UnitId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shortanswer_ibfk_2` FOREIGN KEY (`Nanyidu`) REFERENCES `nanyiduinfo` (`NanyiduId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `singlechoice`
--
ALTER TABLE `singlechoice`
  ADD CONSTRAINT `singlechoice_ibfk_1` FOREIGN KEY (`UnitId`) REFERENCES `unitinfo` (`UnitId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `singlechoice_ibfk_2` FOREIGN KEY (`Nanyidu`) REFERENCES `nanyiduinfo` (`NanyiduId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `unitinfo`
--
ALTER TABLE `unitinfo`
  ADD CONSTRAINT `unitinfo_ibfk_1` FOREIGN KEY (`CourseId`) REFERENCES `courseinfo` (`CourseId`) ON DELETE CASCADE ON UPDATE CASCADE;
