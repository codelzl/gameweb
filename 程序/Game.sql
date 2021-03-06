USE [2012_Win]
GO
/****** Object:  Table [dbo].[QF_biao]    Script Date: 2017/5/3 20:48:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QF_biao](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[User_Name] [varchar](50) NOT NULL,
	[Content] [text] NOT NULL,
	[IssueDate] [smalldatetime] NOT NULL,
	[User_imgurl] [varchar](50) NULL,
 CONSTRAINT [PK_QF_biao] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Amdin]    Script Date: 2017/5/3 20:48:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Amdin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[PassWord] [varchar](50) NOT NULL,
	[IssueDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_tb_Amdin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_NewClass]    Script Date: 2017/5/3 20:48:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_NewClass](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Class] [varchar](50) NOT NULL,
	[St] [int] NOT NULL,
	[IssueDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_tb_NewClass] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_News]    Script Date: 2017/5/3 20:48:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_News](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](500) NOT NULL,
	[Content] [ntext] NOT NULL,
	[Style] [varchar](50) NOT NULL,
	[Liayuan] [varchar](50) NOT NULL,
	[imgsur] [varchar](50) NULL,
	[pinglun] [int] NULL,
	[IssueDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_tb_News] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_User]    Script Date: 2017/5/3 20:48:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[PassWord] [varchar](50) NOT NULL,
	[Sex] [char](2) NOT NULL,
	[QQ] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[hobby] [text] NULL,
	[IssueDate] [smalldatetime] NULL,
	[podcast] [varchar](50) NULL,
	[User_img] [varchar](50) NULL,
 CONSTRAINT [PK_tb_User_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_Wzxx]    Script Date: 2017/5/3 20:48:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Wzxx](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[meta] [varchar](100) NOT NULL,
	[banqian] [ntext] NOT NULL,
 CONSTRAINT [PK_tb_Wzxx] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Text_ling]    Script Date: 2017/5/3 20:48:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Text_ling](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[URL] [ntext] NOT NULL,
	[Text] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Text_ling] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user_pinglun]    Script Date: 2017/5/3 20:48:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_pinglun](
	[PD] [int] IDENTITY(1,1) NOT NULL,
	[ID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Content] [text] NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[xianshi] [int] NOT NULL,
	[IssueDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_user_pinglun] PRIMARY KEY CLUSTERED 
(
	[PD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[QF_biao] ON 

INSERT [dbo].[QF_biao] ([ID], [User_Name], [Content], [IssueDate], [User_imgurl]) VALUES (22, N'小伟', N'sddds', CAST(N'2012-04-24T16:38:00' AS SmallDateTime), NULL)
INSERT [dbo].[QF_biao] ([ID], [User_Name], [Content], [IssueDate], [User_imgurl]) VALUES (23, N'小伟', N'fddf', CAST(N'2012-04-24T16:38:00' AS SmallDateTime), NULL)
INSERT [dbo].[QF_biao] ([ID], [User_Name], [Content], [IssueDate], [User_imgurl]) VALUES (24, N'小伟', N'fdfdfsdfsdf', CAST(N'2012-04-24T16:38:00' AS SmallDateTime), NULL)
INSERT [dbo].[QF_biao] ([ID], [User_Name], [Content], [IssueDate], [User_imgurl]) VALUES (26, N'小伟', N'ggggg', CAST(N'2012-04-24T23:59:00' AS SmallDateTime), NULL)
INSERT [dbo].[QF_biao] ([ID], [User_Name], [Content], [IssueDate], [User_imgurl]) VALUES (27, N'小伟', N'gggggggggggg', CAST(N'2012-04-24T23:59:00' AS SmallDateTime), NULL)
INSERT [dbo].[QF_biao] ([ID], [User_Name], [Content], [IssueDate], [User_imgurl]) VALUES (28, N'小伟', N'dfdfdf', CAST(N'2012-04-24T23:59:00' AS SmallDateTime), NULL)
INSERT [dbo].[QF_biao] ([ID], [User_Name], [Content], [IssueDate], [User_imgurl]) VALUES (29, N'小伟', N'fdfdff', CAST(N'2012-04-25T00:00:00' AS SmallDateTime), NULL)
INSERT [dbo].[QF_biao] ([ID], [User_Name], [Content], [IssueDate], [User_imgurl]) VALUES (30, N'小伟', N'sdsdsdsd<IMG src="http://localhost:89/system_dntb/skin/xp/face/qq/014.gif">', CAST(N'2012-04-25T00:05:00' AS SmallDateTime), NULL)
INSERT [dbo].[QF_biao] ([ID], [User_Name], [Content], [IssueDate], [User_imgurl]) VALUES (32, N'人人网', N'fdfdfdf', CAST(N'2012-04-25T19:06:00' AS SmallDateTime), N'')
INSERT [dbo].[QF_biao] ([ID], [User_Name], [Content], [IssueDate], [User_imgurl]) VALUES (34, N'default.aspx', N'default.aspx', CAST(N'2017-05-03T20:29:00' AS SmallDateTime), N'')
INSERT [dbo].[QF_biao] ([ID], [User_Name], [Content], [IssueDate], [User_imgurl]) VALUES (35, N'tomdog', N'tomdog', CAST(N'2017-05-03T20:40:00' AS SmallDateTime), N'')
SET IDENTITY_INSERT [dbo].[QF_biao] OFF
SET IDENTITY_INSERT [dbo].[tb_Amdin] ON 

INSERT [dbo].[tb_Amdin] ([ID], [Name], [PassWord], [IssueDate]) VALUES (1, N'admin', N'123', CAST(N'2012-04-07T16:57:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[tb_Amdin] OFF
SET IDENTITY_INSERT [dbo].[tb_NewClass] ON 

INSERT [dbo].[tb_NewClass] ([ID], [Class], [St], [IssueDate]) VALUES (33, N'幻灯相册', 50, CAST(N'2012-04-15T21:43:00' AS SmallDateTime))
INSERT [dbo].[tb_NewClass] ([ID], [Class], [St], [IssueDate]) VALUES (34, N'滚动图片', 60, CAST(N'2012-04-17T16:30:00' AS SmallDateTime))
INSERT [dbo].[tb_NewClass] ([ID], [Class], [St], [IssueDate]) VALUES (37, N'全部内容', 1, CAST(N'2012-04-21T13:11:00' AS SmallDateTime))
INSERT [dbo].[tb_NewClass] ([ID], [Class], [St], [IssueDate]) VALUES (38, N'大陆游戏', 1, CAST(N'2012-04-23T16:32:00' AS SmallDateTime))
INSERT [dbo].[tb_NewClass] ([ID], [Class], [St], [IssueDate]) VALUES (39, N'八卦休闲', 2, CAST(N'2012-04-23T16:32:00' AS SmallDateTime))
INSERT [dbo].[tb_NewClass] ([ID], [Class], [St], [IssueDate]) VALUES (40, N'新游资讯', 3, CAST(N'2012-04-23T16:33:00' AS SmallDateTime))
INSERT [dbo].[tb_NewClass] ([ID], [Class], [St], [IssueDate]) VALUES (41, N'国外游戏', 4, CAST(N'2012-04-23T16:33:00' AS SmallDateTime))
INSERT [dbo].[tb_NewClass] ([ID], [Class], [St], [IssueDate]) VALUES (42, N'游戏产业', 5, CAST(N'2012-04-23T16:34:00' AS SmallDateTime))
INSERT [dbo].[tb_NewClass] ([ID], [Class], [St], [IssueDate]) VALUES (43, N'热门文章', 6, CAST(N'2012-04-23T16:35:00' AS SmallDateTime))
INSERT [dbo].[tb_NewClass] ([ID], [Class], [St], [IssueDate]) VALUES (44, N'网站公告', 8, CAST(N'2012-04-23T16:43:00' AS SmallDateTime))
INSERT [dbo].[tb_NewClass] ([ID], [Class], [St], [IssueDate]) VALUES (45, N'游戏视频', 77, CAST(N'2012-04-24T10:51:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[tb_NewClass] OFF
SET IDENTITY_INSERT [dbo].[tb_News] ON 

INSERT [dbo].[tb_News] ([ID], [Title], [Content], [Style], [Liayuan], [imgsur], [pinglun], [IssueDate]) VALUES (211, N'《画江山》霸气专属称号PK王者获得方式详解', N'<p>《画江山》霸气专属称号PK王者获得方式详解<br>《画江山》霸气专属称号PK王者获得方式详解《画江山》霸气专属称号PK王者获得方式详解<br>《画江山》霸气专属称号PK王者获得方式详解<br>《画江山》霸气专属称号PK王者获得方式详解</p>', N'大陆游戏', N'1', N'0', 1, CAST(N'2017-04-23T21:00:00' AS SmallDateTime))
INSERT [dbo].[tb_News] ([ID], [Title], [Content], [Style], [Liayuan], [imgsur], [pinglun], [IssueDate]) VALUES (212, N'百度12亿元出售移动游戏业务 今年1月达成协议', N'该文件显示，百度今年1月13日与两家第三方公司达成协议，以总价人民币12亿元(约合1.7269亿美元)的现金将公司移动游戏业务出售。事实上，去年10月就有报道称，百度已完成对旗下全资子公司“百度游戏”的财务清算，出售交易也已经敲定。出人意料的是，买家并非来自游戏行业，而是来自传统行业。报道还称，之所以出售百度游戏业务，主要是因为该业务一直开展不利，且腐败严重。2014年8月，百度游戏事业部总监副廖俊被百度开除，并移交司法。当时的坊间传闻是，廖俊通过百度游戏平台为己牟利。2016年4月底，百度游戏业务分管负责副总裁王湛，以“违反职业道德、损害公司利益”为名被开除。今年1月，再次有知情人士称，百度确实已经出售了游戏业务，接下来将从百度剥离。来源：腾讯科技', N'热门文章', N'百度', N'0', 1, CAST(N'2017-04-23T21:03:00' AS SmallDateTime))
INSERT [dbo].[tb_News] ([ID], [Title], [Content], [Style], [Liayuan], [imgsur], [pinglun], [IssueDate]) VALUES (215, N'代码', N'代码代码代码代码代码代码代码代码', N'八卦休闲', N'代码', N'0', 0, CAST(N'2017-04-23T21:08:00' AS SmallDateTime))
INSERT [dbo].[tb_News] ([ID], [Title], [Content], [Style], [Liayuan], [imgsur], [pinglun], [IssueDate]) VALUES (218, N'网站公告', N'网站公告', N'网站公告', N'网站公告', N'0', 0, CAST(N'2017-04-23T21:12:00' AS SmallDateTime))
INSERT [dbo].[tb_News] ([ID], [Title], [Content], [Style], [Liayuan], [imgsur], [pinglun], [IssueDate]) VALUES (219, N'八卦休闲', N'八卦休闲', N'八卦休闲', N'八卦休闲', N'0', 0, CAST(N'2017-04-23T21:17:00' AS SmallDateTime))
INSERT [dbo].[tb_News] ([ID], [Title], [Content], [Style], [Liayuan], [imgsur], [pinglun], [IssueDate]) VALUES (220, N'新游', N'新游', N'新游资讯', N'新游', N'0', 0, CAST(N'2017-04-23T21:17:00' AS SmallDateTime))
INSERT [dbo].[tb_News] ([ID], [Title], [Content], [Style], [Liayuan], [imgsur], [pinglun], [IssueDate]) VALUES (221, N'国外', N'国外', N'国外游戏', N'国外', N'0', 0, CAST(N'2017-04-23T21:17:00' AS SmallDateTime))
INSERT [dbo].[tb_News] ([ID], [Title], [Content], [Style], [Liayuan], [imgsur], [pinglun], [IssueDate]) VALUES (222, N'产业', N'1', N'游戏产业', N'', N'0', 0, CAST(N'2017-04-23T21:20:00' AS SmallDateTime))
INSERT [dbo].[tb_News] ([ID], [Title], [Content], [Style], [Liayuan], [imgsur], [pinglun], [IssueDate]) VALUES (223, N'视频', N'1', N'游戏视频', N'', N'0', 0, CAST(N'2017-04-23T21:24:00' AS SmallDateTime))
INSERT [dbo].[tb_News] ([ID], [Title], [Content], [Style], [Liayuan], [imgsur], [pinglun], [IssueDate]) VALUES (226, N'多益网络代理《传送门骑士》 抢滩沙盒市场', N'近日，DataEyes发布了《2017年Q1游戏行业报告》，报告指出，游戏类型的多元化以及精细化能够使得玩家每日游戏次数以及在线时长出现一定幅度的增长。游戏同质化严重导致同类产品市场激烈，这样的背景下新兴品类开始闯入玩家的视野，游戏类型趋向多元化成为必然，而近来游戏界香饽饽——沙盒游戏，在迅速风靡海外之后，也逐渐在国内市场开始彰显其渗透力与影响力，越来越多的厂商开始注意到其中商机。　　早在2015年，腾讯就代理了融入沙盒玩法的《冒险岛2》，而后在WeGame平台上线了《饥荒联机版》，《泰拉瑞亚》、《我的文明》、《方舟：生存进化》等游戏也陆续被国内厂商引入，不久前，《我的世界》中国版在北京召开了发布会，而近期，多益网络也正式宣布获得3D冒险沙盒游戏《传送门骑士》的代理权。', N'大陆游戏', N'百度', N'0', 1, CAST(N'2017-05-03T19:22:00' AS SmallDateTime))
INSERT [dbo].[tb_News] ([ID], [Title], [Content], [Style], [Liayuan], [imgsur], [pinglun], [IssueDate]) VALUES (227, N'纯正回合的新征程 《梦想世界》双端新版本来袭', N'回合制游戏从某种角度上说，可以算是中国网游的鼻祖级产品，哪怕发展至今已近二十载，依然是国产网游的中流砥柱。但野蛮生长的时代早已经过去，大浪淘沙之下，依旧能够屹立在回合制游戏顶端的产品不是靠着高人气的IP，便是凭借着不断的融合创新，来不断焕发新的生命力，比如多益网络的《梦想世界》系列产品。', N'大陆游戏', N'百度', N'0', 1, CAST(N'2017-05-03T19:23:00' AS SmallDateTime))
INSERT [dbo].[tb_News] ([ID], [Title], [Content], [Style], [Liayuan], [imgsur], [pinglun], [IssueDate]) VALUES (228, N'关于505游戏', N'505 Games是一家跨国电子游戏发行公司，专注于为全年龄段不同层次的玩家带来各式各样的游戏。除了在顶尖家用游戏机(例如PS4和Xbox One)和端游平台发行游戏，也在手机和社交平台推出众多热门游戏。除《传送门骑士》外，知名产品还包括《狙击精英3》、《发薪日2》、《兄弟：双子传说》、《泰拉瑞亚》、《生存指南》、《ABZU》、《ADR1FT》、《Assetto Corsa》、《机甲世界》等。　　505 Games在洛杉矶、米尔顿凯恩斯(英国)、里昂、慕尼黑、米兰、马德里和深圳等地设有办事处，同时在北欧地区和澳大利亚拥有配销伙伴网络。更多关于505 Games及其产品的信息请见<a href="http://www.505games.com">www.505games.com</a>', N'八卦休闲', N'百度', N'0', 1, CAST(N'2017-05-03T19:24:00' AS SmallDateTime))
INSERT [dbo].[tb_News] ([ID], [Title], [Content], [Style], [Liayuan], [imgsur], [pinglun], [IssueDate]) VALUES (229, N'冒险岛', N'相信已有不少岛民得知马上就要迎来新的副本了，而大家熟悉的BOSS 扎昆即将登场，面对如此强大的BOSS，究竟如何将它击败，本期为大家带来，古代之神扎昆副本的情报。　　【副本信息】　　首先我们在主界面找到寻找副本按键(默认按键为V)，在地图的左方，就可以看到古代之神扎昆了，点击进入扎昆的殿堂', N'新游资讯', N'百度', N'0', 1, CAST(N'2017-05-03T19:24:00' AS SmallDateTime))
INSERT [dbo].[tb_News] ([ID], [Title], [Content], [Style], [Liayuan], [imgsur], [pinglun], [IssueDate]) VALUES (230, N'DNF积分', N'DNF积分商城再次开启，有小伙伴反映积分商店各个道具兑换概率无法点开，今天我们重新公布一下。从这里你也能看到神秘材料袋到底值不值得开了。　　积分商城什么时候结束?　　这次积分商城将会在6月8日结束，其中在这段时间玩家也可以通过刷图或购买商城道具来获取积分，其中疲劳药、强烈气息罐子还是值得一买的。', N'游戏产业', N'百度', N'0', 1, CAST(N'2017-05-03T19:24:00' AS SmallDateTime))
INSERT [dbo].[tb_News] ([ID], [Title], [Content], [Style], [Liayuan], [imgsur], [pinglun], [IssueDate]) VALUES (231, N'魔兽', N'碎海滩已经成为了广大艾泽拉斯民众们的心头大患。它是燃烧军团看似永无止境的入侵的源头，也时刻让人回想起部落和联盟大军在此的惨败。但为了战胜这些侵略者，艾泽拉斯的英雄们必须重返此地——这一次，我们将全力备战，众志成城。', N'国外游戏', N'', N'0', 0, CAST(N'2017-05-03T19:25:00' AS SmallDateTime))
INSERT [dbo].[tb_News] ([ID], [Title], [Content], [Style], [Liayuan], [imgsur], [pinglun], [IssueDate]) VALUES (232, N'破碎海滩', N'在破碎海滩的旅途中，你将展开各种全新的世界任务并取得丰厚的奖励，同时继续提升你的神器。　　通过完成破碎海滩上的世界任务，你可以获得抗魔联军战争物资和抗魔联军声望。以上奖励也可以通过其它方式获得，例如消灭破碎群岛各处的稀有精锐怪物。抗魔联军战争物资将帮助你在救赎岗哨建造各种强大的建筑，从而为奋战于破碎海滩的英雄们提供额外的助力。　　这里有许多事情要做，而无处不在的恶魔也需要大家随时保持警戒。', N'游戏产业', N'', N'0', 1, CAST(N'2017-05-03T19:25:00' AS SmallDateTime))
INSERT [dbo].[tb_News] ([ID], [Title], [Content], [Style], [Liayuan], [imgsur], [pinglun], [IssueDate]) VALUES (233, N'手游发行渠道', N'大到腾讯，小到自媒体，在过去的一段时间里，已经越来越加重视在精品内容上的布局，一个内容为王的时代似乎已经来临。但这是否会意味手游圈里喊了很多年的渠道为王时代已经开始退潮?对各大游戏厂商来说，又该如何应对渠道为王到内容为王的交替?　　发行渠道的话语权更迭 求变的还有谁　　从应用类渠道到硬件渠道，再到更加垂直的新型渠道，手游渠道其实已经开始转向了更为集权及细分的进程。因此与其说渠道为王时代开始落幕，倒不如说早期这种偏分散的话语权正在变得更加集中。而这也是整个行业不断进化发展的必然阶段。在目前及未来很长的一段时间里，转向精品内容的渠道们也依然会在很大程度上制约着一款手游的兴衰。　　据艾媒咨询发布的《2016-2017中国手机游戏市场研究报告》显示，2016年中国的手游用户规模已经达到5.23亿，但是从手游新政实施以来，在2016后7月-12月过审的手游产品只有3576款，算上此前的部分产品，真正过审的产品或许还不到5000款。均分下来，每款手游仅能获得10万左右的用户。对已经经过数轮洗牌的渠道来说，这种情况下，如何挖掘出最适合的产品以达到最后的双赢，就成为依旧坚挺的渠道们去关注的问题了。而对游戏厂商来说，渠道话语权的收拢，虽然从一定程度上可以促使自己完成从粗放型到精细型的转变，但在更为严峻的市场竞争面前，如何在众多的精品内容中脱颖而出就成为了一个迫在眉睫的问题。', N'热门文章', N'', N'0', 1, CAST(N'2017-05-03T19:26:00' AS SmallDateTime))
INSERT [dbo].[tb_News] ([ID], [Title], [Content], [Style], [Liayuan], [imgsur], [pinglun], [IssueDate]) VALUES (234, N'梦想世界不删档', N'从首款经典回合制网游《梦想世界》开始，到《神武》系列、《神武2》系列及后续的《第十域：英雄起源》等产品线，多益网络便坚持着研运一体化的发展方向。在运营上，多益网络通过建立由战盟、官网、论坛、客服系统、微博及微信新媒体组成的一套自平台体系，直接与玩家达成了零距离的沟通。有了这层友好的信任关系，多益网络在过往的十年中培养了过亿的忠实用户群。在产品的后续打磨及新品的改良上，这个庞大的群体便可以在第一时间推动着研发把游戏打磨到玩家们最满意的程度。而这也是《梦想世界》这款经典回合制网游运营至今近十年依然长盛不衰的最大秘诀。', N'国外游戏', N'', N'0', 1, CAST(N'2017-05-03T19:26:00' AS SmallDateTime))
INSERT [dbo].[tb_News] ([ID], [Title], [Content], [Style], [Liayuan], [imgsur], [pinglun], [IssueDate]) VALUES (235, N'传送门', N'《传送门骑士》是一款融合了自由沙盒和动作冒险RPG玩法的3D冒险沙盒游戏，玩家扮演战士、法师或游侠，在细腻精美的像素世界里收集资源，建造房屋，打造装备，挑战BOSS，通过传送门在地形独特的各个岛屿间冒险，游戏支持4人联机，开黑建造、闯关、探险，让冒险趣味升级。', N'八卦休闲', N'', N'0', 1, CAST(N'2017-05-03T19:27:00' AS SmallDateTime))
INSERT [dbo].[tb_News] ([ID], [Title], [Content], [Style], [Liayuan], [imgsur], [pinglun], [IssueDate]) VALUES (236, N'投稿须知', N'太平洋游戏网（<a href="http://www.PCgames.com.cn">http://www.PCgames.com.cn</a>）作为提供全面、准确、权威游戏资讯的专业网站,站内拥有多个高质量、多元化的专栏。为了更好地服务于读者，更全面地提供游戏资讯，PCgames诚征优秀稿件。稿件著作权说明1.作者向我方所投之稿件应是由投稿人创作或编译，或对所投作品拥有合法著作权之作品； 2.作者向我方所投之稿件，须尚未在任何媒体上发表，同时作者必须对所提供稿件的真实性负责； 3.作者向我方投稿时不得同时向别处投稿。投出后一周内无答复的，稿件可另行处理； 4.作者向我方所投之稿件一经采用，即表明作者已同意将该作品的专有使用权授予我方，期限为10年。 该专有使用权含义如下：我方在世界范围内该作品受著作权保护的所有领域均享有作品的专有使用权。作品的文字方式包括中文简体字本、中文繁体字本、英文本。享有专有使用权的方式包括但不限于：通过网络向公众传播、复制、摘编、表演、播放、展览、发行、摄制电影、电视、 录像制品录制录音制品、 制作数字化制品、改编、翻译、注释、编辑，以及出版、许可其他媒体、网站及单位转载、摘编、播放、录制、翻译、注释、编辑、改编、摄制。稿费中已包含作品首次刊发费用以及我方取得与行使作品专有使用权的全部费用，即我方在对作品行使专有使用权时，无需另行支付报酬。期限内作者不再将该作品的专有使用权授予第三方。5.签约作者不受此约束，以双方所签协议为准。投稿要求和方式稿件要求：1.与游戏相关的新闻资讯、游戏评测、心得攻略、游戏资料、玩家交流等文章，体裁不限，字数不限。 2.请将稿件转成纯文本文件（TXT）或网页文件（HTML）,如是文本文件，请注明插图位置，不要使用word等编辑的文本。 3.所配图片一定要清晰。 4.请用中文的标点符号，如逗号不要用","而用"，"，百分号不要用"%"而用"％"等。 5.请注明希望署名为真实姓名还是笔名，以及具体用哪个笔名。 6.请注明是否要将署名链接电子邮件地址。投稿方式：1.所有稿件请以email方式投递。 2.编译稿件请附带原文并注明出处，否则不予采纳。 3.请按稿件内容投到相应栏目的投稿信箱： <a href="mailto:news@pcgames.com.cn">news@pcgames.com.cn</a>稿费标准及结算1.稿费标准：编译稿件：20-30元/千字；原创稿件：30-80元/千字。特稿特酬，优稿优酬。 2.为方便稿费的支付，我们以银行转帐的方式支付稿费，所以请务必在稿件中注明真实姓名、开户银行、帐号和开户银行的名称（即存折上公章的地址，例如：中国工商银行广州市石牌办事处）等信息。 3.稿费采取月结制，每月的10日统计稿费，每月的20日前以银行转帐的方式把稿费汇到您的银行帐号里。 4.如果您在偏远地区或者不便以银行转帐形式结算稿费，我们可以通过提供邮局汇款的方式结算稿费。因此请务必在稿件中注明真实姓名、通讯地址和邮编。 5.请优先使用银行转帐的结算方式，这样您可以及时地收到我们稿费。 6.稿件采用后发现一稿多投的，稿费不予支付。兼职撰稿申请指南要求只要你热爱生活，充满热情，喜欢游戏，有责任感，有充足稳定的业余时间，都可以申请成为太平洋游戏网 兼职队伍中的一员！我们提供的兼职类型有：评测兼职、视频兼职、论坛兼职、图库兼职、资讯兼职等等。申请途径1) 可以登录我司的招聘网站直接进行申请 2) 还可以直接把你的简历通过邮件的方式发送给我们，邮箱地址是：<a href="mailto:news@pcgames.com.cn">news@pcgames.com.cn</a>如果你适合我 们的要求，我们将在收到邮件的三个工作日内和你取得联系。 邮件的标题请使用如下格式：姓名+申请兼职类型+申请的频道+申请的地区，请记得在简历中详细描 述特长，最好能附上作品展示，并说明平时的空闲时间的情况，便于我们将你分配到最合适的频道。 3）同时我们还会在各大高校内广告栏、网上兼职群以及太平洋游戏网的相关论坛上发布召集兼职的信息， 敬请关注。筛选我们在招聘兼职过程中会对您进行必要的背景调查，调查内容包括个人基本情况、任职条件、能力以及在其 他网站的兼职情况。（同时我们还有为期两周的试用考察。期间跟进工作能力及态度，考虑录用、淘汰。）录用如果能顺利通过以上的试用考察，那你就被录用啦！ 同时，你还将获得： 1) 每个月和工作量绝对匹配的丰厚报酬。（优秀兼职还将获得额外奖金！） 2) 享受太平洋游戏网优秀编辑们一对一的工作模式， 更有机会近距离第一时间接触最新最炫的电脑和数码 产品！ 3) HR交流日：享受面对面与上市公司HR交流的机会；HR大告白,现场传授如何填写简历、如何投递简历、 面试注意事项等上市公司内部招聘流程。 4) 有机会成为太平洋游戏网的正式员工！', N'网站公告', N'', N'0', 1, CAST(N'2017-05-03T19:28:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[tb_News] OFF
SET IDENTITY_INSERT [dbo].[tb_User] ON 

INSERT [dbo].[tb_User] ([ID], [Name], [PassWord], [Sex], [QQ], [Email], [phone], [hobby], [IssueDate], [podcast], [User_img]) VALUES (4, N'小伟', N'asd', N'男', N'744343', N'744476768@qq.com', N'18789244870', N'唱歌', CAST(N'2012-04-07T15:26:00' AS SmallDateTime), N'http://www.51.com', NULL)
INSERT [dbo].[tb_User] ([ID], [Name], [PassWord], [Sex], [QQ], [Email], [phone], [hobby], [IssueDate], [podcast], [User_img]) VALUES (6, N'路歌', N'123', N'男', N'88', N'iapawfn@163.com', N'88', N'fdf', CAST(N'2012-04-14T18:39:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[tb_User] ([ID], [Name], [PassWord], [Sex], [QQ], [Email], [phone], [hobby], [IssueDate], [podcast], [User_img]) VALUES (20, N'asdad', N'123', N'女', N'1231323', N'121@163.com', N'453453453453', N'唱歌', CAST(N'2012-04-18T20:19:00' AS SmallDateTime), NULL, NULL)
INSERT [dbo].[tb_User] ([ID], [Name], [PassWord], [Sex], [QQ], [Email], [phone], [hobby], [IssueDate], [podcast], [User_img]) VALUES (28, N'小半点', N'123', N'男', N'', N'123@163.com', N'123', N'体育', CAST(N'2012-04-25T09:38:00' AS SmallDateTime), N'http://', NULL)
INSERT [dbo].[tb_User] ([ID], [Name], [PassWord], [Sex], [QQ], [Email], [phone], [hobby], [IssueDate], [podcast], [User_img]) VALUES (29, N'超人', N'123', N'男', N'', N'123@163.com', N'11', N'体育', CAST(N'2012-04-25T09:42:00' AS SmallDateTime), N'http://', NULL)
INSERT [dbo].[tb_User] ([ID], [Name], [PassWord], [Sex], [QQ], [Email], [phone], [hobby], [IssueDate], [podcast], [User_img]) VALUES (30, N'小伟', N'asd', N'男', N'', N'123@163.com', N'', N'体育', CAST(N'2012-04-25T15:03:00' AS SmallDateTime), N'http://', NULL)
INSERT [dbo].[tb_User] ([ID], [Name], [PassWord], [Sex], [QQ], [Email], [phone], [hobby], [IssueDate], [podcast], [User_img]) VALUES (32, N'路歌', N'123', N'男', N'', N'', N'', N'体育', CAST(N'2012-04-25T15:11:00' AS SmallDateTime), N'http://', NULL)
INSERT [dbo].[tb_User] ([ID], [Name], [PassWord], [Sex], [QQ], [Email], [phone], [hobby], [IssueDate], [podcast], [User_img]) VALUES (33, N'小伟', N'asd', N'男', N'2132', N'123@163.com', N'11', N'体育', CAST(N'2012-04-25T15:14:00' AS SmallDateTime), N'http://', NULL)
INSERT [dbo].[tb_User] ([ID], [Name], [PassWord], [Sex], [QQ], [Email], [phone], [hobby], [IssueDate], [podcast], [User_img]) VALUES (34, N'人人网', N'123', N'男', N'', N'123@163.com', N'', N'', CAST(N'2012-04-25T18:49:00' AS SmallDateTime), N'http://', N'')
INSERT [dbo].[tb_User] ([ID], [Name], [PassWord], [Sex], [QQ], [Email], [phone], [hobby], [IssueDate], [podcast], [User_img]) VALUES (35, N'tomdog', N'tomdog', N'男', N'tomdog', N'tomdog@qq.com', N'tomdog', N'唱歌，体育', CAST(N'2017-05-03T20:26:00' AS SmallDateTime), N'http://tomdog', N'')
INSERT [dbo].[tb_User] ([ID], [Name], [PassWord], [Sex], [QQ], [Email], [phone], [hobby], [IssueDate], [podcast], [User_img]) VALUES (36, N'default.aspx', N'default.aspx', N'女', N'default.aspx', N'default.aspx@qq.com', N'default.aspx', N'体育', CAST(N'2017-05-03T20:28:00' AS SmallDateTime), N'http://default.aspx', N'')
SET IDENTITY_INSERT [dbo].[tb_User] OFF
SET IDENTITY_INSERT [dbo].[tb_Wzxx] ON 

INSERT [dbo].[tb_Wzxx] ([ID], [Title], [meta], [banqian]) VALUES (1, N'欢迎访问-游戏资讯网站', N'创神游戏资讯网站', N' 欢迎访问创神游戏资讯网站<br />
          版权所有：创神游戏资讯网站  Email:123456@163.com
<br />
          ')
SET IDENTITY_INSERT [dbo].[tb_Wzxx] OFF
SET IDENTITY_INSERT [dbo].[Text_ling] ON 

INSERT [dbo].[Text_ling] ([ID], [URL], [Text]) VALUES (2, N'http://www.hao123.com', N'好网址之家')
INSERT [dbo].[Text_ling] ([ID], [URL], [Text]) VALUES (3, N'http://www.baidu.com', N'百度度娘')
INSERT [dbo].[Text_ling] ([ID], [URL], [Text]) VALUES (8, N'http://www.tianya.cn', N'天涯社区')
SET IDENTITY_INSERT [dbo].[Text_ling] OFF
SET IDENTITY_INSERT [dbo].[user_pinglun] ON 

INSERT [dbo].[user_pinglun] ([PD], [ID], [Name], [Content], [Title], [xianshi], [IssueDate]) VALUES (18, 211, N'', N'1', N'《画江山》霸气专属称号PK王者获得方式详解', 1, CAST(N'2017-04-23T21:24:00' AS SmallDateTime))
INSERT [dbo].[user_pinglun] ([PD], [ID], [Name], [Content], [Title], [xianshi], [IssueDate]) VALUES (19, 227, N'测试员安安', N'test666', N'纯正回合的新征程 《梦想世界》双端新版本来袭', 1, CAST(N'2017-05-03T19:31:00' AS SmallDateTime))
INSERT [dbo].[user_pinglun] ([PD], [ID], [Name], [Content], [Title], [xianshi], [IssueDate]) VALUES (20, 211, N'第二个测试', N'第二个测试内容', N'《画江山》霸气专属称号PK王者获得方式详解', 1, CAST(N'2017-05-03T20:45:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[user_pinglun] OFF
ALTER TABLE [dbo].[QF_biao] ADD  CONSTRAINT [DF_QF_biao_IssueDate]  DEFAULT (getdate()) FOR [IssueDate]
GO
ALTER TABLE [dbo].[tb_Amdin] ADD  CONSTRAINT [DF_tb_Amdin_IssueDate]  DEFAULT (getdate()) FOR [IssueDate]
GO
ALTER TABLE [dbo].[tb_NewClass] ADD  CONSTRAINT [DF_tb_NewClass_IssueDate]  DEFAULT (getdate()) FOR [IssueDate]
GO
ALTER TABLE [dbo].[tb_News] ADD  CONSTRAINT [DF_tb_News_IssueDate]  DEFAULT (getdate()) FOR [IssueDate]
GO
ALTER TABLE [dbo].[tb_User] ADD  CONSTRAINT [DF_tb_User_QQ]  DEFAULT ('空') FOR [QQ]
GO
ALTER TABLE [dbo].[tb_User] ADD  CONSTRAINT [DF_tb_User_Email]  DEFAULT ('空') FOR [Email]
GO
ALTER TABLE [dbo].[tb_User] ADD  CONSTRAINT [DF_tb_User_phone]  DEFAULT ('空') FOR [phone]
GO
ALTER TABLE [dbo].[tb_User] ADD  CONSTRAINT [DF_tb_User_hobby]  DEFAULT ('空') FOR [hobby]
GO
ALTER TABLE [dbo].[tb_User] ADD  CONSTRAINT [DF_tb_User_IssueDate]  DEFAULT (getdate()) FOR [IssueDate]
GO
ALTER TABLE [dbo].[user_pinglun] ADD  CONSTRAINT [DF_user_pinglun_IssueDate]  DEFAULT (getdate()) FOR [IssueDate]
GO
