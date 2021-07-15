USE [master]
GO
/****** Object:  Database [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF]    Script Date: 2020/12/30 14:27:00 ******/
CREATE DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Northwind', FILENAME = N'd:\Users\LJY\source\repos\WebApplicationFinal_LJY\App_Data\Northwind.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Northwind_log', FILENAME = N'd:\Users\LJY\source\repos\WebApplicationFinal_LJY\App_Data\Northwind_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET ARITHABORT OFF 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET  DISABLE_BROKER 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET  MULTI_USER 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET DB_CHAINING OFF 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF', N'ON'
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET QUERY_STORE = OFF
GO
USE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF]
GO
/****** Object:  Table [dbo].[秦时角色]    Script Date: 2020/12/30 14:27:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[秦时角色](
	[角色ID] [int] IDENTITY(1,1) NOT NULL,
	[姓氏] [nvarchar](20) NOT NULL,
	[名字] [nvarchar](10) NOT NULL,
	[身份] [nvarchar](30) NULL,
	[年龄] [nvarchar](10) NULL,
	[照片] [nvarchar](255) NULL,
	[备注] [nvarchar](max) NULL,
 CONSTRAINT [PK_秦时角色] PRIMARY KEY CLUSTERED 
(
	[角色ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[用户]    Script Date: 2020/12/30 14:27:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[用户](
	[姓名] [nvarchar](30) NULL,
	[密码] [nvarchar](30) NULL,
	[性别] [nvarchar](4) NULL,
	[生日] [nvarchar](10) NULL,
	[出生地] [nvarchar](30) NULL,
	[电话] [nvarchar](11) NULL,
	[识别字符串] [nvarchar](60) NULL,
	[称号] [nvarchar](15) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[秦时角色] ON 

INSERT [dbo].[秦时角色] ([角色ID], [姓氏], [名字], [身份], [年龄], [照片], [备注]) VALUES (1, N'荆', N'天明', N'主角', N'12岁', N'img1.jpg', N'父亲是剑客荆轲，母亲是丽姬。外表迷糊不开窍，却在武功、机关术等很多方面都有着极高天赋。失忆并因身世被秦国追杀，有着牵动着整片大地风云变幻的迷离身世。对盖聂如父亲一般敬仰，随盖聂学习剑术。在逃亡过程中渐渐磨砺、成长，陆续结识众多江湖高人，相继与年纪相仿的少羽、高月、石兰成为好友，也见证了世间最后一片净土墨家机关城的毁灭，还在机缘巧合之下成为墨家巨子。
    为人精灵古怪而又有些不知天高地厚，但正义感很强且十分珍视同伴，在战斗时义无反顾，一直希望为反秦事业做出贡献，以及希望能早日救出自己的青梅竹马高月。')
INSERT [dbo].[秦时角色] ([角色ID], [姓氏], [名字], [身份], [年龄], [照片], [备注]) VALUES (2, N'高', N'月', N'主角', N'12岁', N'img2.jpg', N'荆天明的青梅竹马，燕丹之女，封号"高月公主"。温柔婉约爱好和平。燕亡后过着平民生活，但言谈举止间却仍有一股与生俱来的高贵气质。精通各国文化和医术、药理，是墨家端木蓉的得力帮手，在阴阳术上也天赋极高。
后被月神抓走，被迫成为阴阳家重要成员，并被东皇太一告知"姓姬名如字千泷"，拥有延续千年姬姓最尊贵家族的血脉，是解开"苍龙七宿"的关键人物。')
INSERT [dbo].[秦时角色] ([角色ID], [姓氏], [名字], [身份], [年龄], [照片], [备注]) VALUES (3, N'项', N'少羽', N'主角', N'14岁', N'img3.jpg', N'未来的西楚霸王项羽。楚国名将项燕之孙，项氏一族少主。智勇双全，心思细腻而天赋异禀，有千斤拔鼎之神力。为人仗义，年纪虽小，临阵决敌却已有大将之风。率一族和墨家等盟友一同反秦。
与天明是不打不相识的好友兼竞争对手。')
INSERT [dbo].[秦时角色] ([角色ID], [姓氏], [名字], [身份], [年龄], [照片], [备注]) VALUES (4, N'石', N'兰', N'墨家', N'12岁', N'img4.jpg', N'来自西方蜀山的神秘少女。表面上是庖丁客栈中打杂的小伙计，外表柔弱，但是却默默关注周遭发生的一切。真实身份是蜀山虞渊护卫之一，肩负重要使命。身手矫捷，如精灵一般身轻如燕，内心有很强的正义感和民族信仰。')
INSERT [dbo].[秦时角色] ([角色ID], [姓氏], [名字], [身份], [年龄], [照片], [备注]) VALUES (5, N'盖', N'聂', N'纵横家', N'40岁', N'img5.jpg', N'盖聂（gě niè），中国3D武侠动画《秦时明月》系列中的主要男性角色，以温世仁原著小说《秦时明月》系列中角色盖聂为直接原型，以中国战国末年剑术家盖聂为根本原型。
气质从容淡定，处事冷静。师出鬼谷，剑术出神入化，被称为天下第一剑客，在江湖上享有“剑圣”的名号，但是却为了对逝去朋友荆轲的承诺，出人意外地从秦国叛逃，带着故人荆轲之子荆天明，亡命天涯。佩名剑“渊虹”。渊虹剑折断后改用自削的木剑。在张良的调解下，与流沙达成暂时的合作关系。')
INSERT [dbo].[秦时角色] ([角色ID], [姓氏], [名字], [身份], [年龄], [照片], [备注]) VALUES (6, N'卫', N'庄', N'纵横家', N'40岁', N'img6.jpg', N'卫庄，中国3D武侠动画《秦时明月》系列及其姐妹篇《天行九歌》中的男性角色，原型为温世仁原著台湾武侠小说《秦时明月》系列中的卫庄。
韩国人，自小就因不明原因在韩国王宫中生活。纵横家，鬼谷横剑术传人，浑身充满邪气与霸气，武功深不可测，是霸气与力量型的剑客。起初目标为击败师哥盖聂，证明自己的实力，继承鬼谷绝学，为此他一度与秦朝合作，在墨家机关城与盖聂一战，实力难分伯仲。后在韩国友人张良的劝解下，与盖聂、墨家等反秦势力达成暂时的利益合作关系。
同时也是“流沙”组织的现任最高首领。一直在暗中调查昔日好友——“流沙”创立者韩非的死因。')
INSERT [dbo].[秦时角色] ([角色ID], [姓氏], [名字], [身份], [年龄], [照片], [备注]) VALUES (7, N'高', N'渐离', N'墨家', N'36岁', N'img7.jpg', N'高渐离，中国3D武侠动画《秦时明月》系列中的男性角色，原型为中国历史上的战国末期燕国人高渐离。
燕国琴师，气质忧郁高雅，容颜俊美。原在燕国酒肆、妃雪阁等多地弹琴，较有名气。后成为墨家统领，被墨家众人称作“小高”，武功在六国灭亡后仅存的墨家成员中仅次于墨家巨子燕丹，地位上也和班大师一样仅次于巨子。
高渐离与旷修、荆轲二人互为知己，尤其敬重大哥荆轲，易水河畔与荆轲相和的一首“风萧萧兮易水寒，壮士一去兮不复还”流传千古。   高渐离和雪女生死相随，感情深厚，其击筑曲目“阳春”与雪女的箫声“白雪”合称“阳春白雪”，在燕国乃至天下皆堪称一绝。')
INSERT [dbo].[秦时角色] ([角色ID], [姓氏], [名字], [身份], [年龄], [照片], [备注]) VALUES (8, N'雪', N'女', N'墨家', N'30岁', N'img8.jpg', N'容貌倾国倾城，超凡脱俗。墨家统领之一，出身赵国，原是妃雪阁执掌者，燕地最秀美清丽的舞姬。舞艺冠绝天下，笑傲王侯，精通琴棋书画，一曲《白雪》据说能够让最铁石心肠的人落泪，绝技舞蹈“凌波飞燕”被雁春君称为是“燕国都城的传说” 。亦为“死亡之舞”，雪女曾立誓绝不在人前跳这支舞，如违誓言，必见血光。
与燕国乐师高渐离是一对令人羡慕的神仙眷侣。其箫声“白雪”与高渐离击筑曲目“阳春”合称“阳春白雪”，虽然因经历过一段不为人知的过去而立誓“终此一生，不会再嫁”，没有与高渐离结为夫妻，但彼此情深意真，生死相随。')
INSERT [dbo].[秦时角色] ([角色ID], [姓氏], [名字], [身份], [年龄], [照片], [备注]) VALUES (9, N'赤', N'练', N'流沙', N'32岁', N'img9.jpg', N'赤练，中国3D武侠动画《秦时明月》系列及其姐妹篇《天行九歌》中的原创女性角色。
原为韩国公主，封号“红莲”。后成为“流沙”四天王之一。妩媚妖娆，精通各类毒术，善于控制各类毒蛇，而她的性感往往比毒药更加危险。')
INSERT [dbo].[秦时角色] ([角色ID], [姓氏], [名字], [身份], [年龄], [照片], [备注]) VALUES (10, N'晓', N'梦', N'主角', N'18岁', N'img90.jpg', N'现任道家天宗掌门，天宗第一人。清艳秀雅，天赋极高，因年仅八岁就击败了道家天宗除掌门赤松子以外的六位天宗长老，被已五十年不收徒的北冥子录为关门弟子，并得到名剑秋骊，闭关修炼十年，十八岁时接替已逝的师兄赤松子成为道家天宗掌门，虽然年纪轻轻，但是对内力的掌控已无人能出其右。
八岁时性格率真活泼，但有着国破家亡的悲痛过往，后因师侄清玄之死悟道。十年后出关，无"讨厌"和"喜欢"的区分，不认同他人把生死看得太重。由于辈分极高又年少有为，对周围的人事物看似不屑一顾，逍遥子曾评价其为“藐视一切的天才”，但偶尔也会露出妙龄少女娇俏的一面。')
INSERT [dbo].[秦时角色] ([角色ID], [姓氏], [名字], [身份], [年龄], [照片], [备注]) VALUES (11, N'颜', N'路', N'儒家', N'22岁', N'img91.jpg', N'桑海儒家小圣贤庄二当家，与师兄伏念、师弟张良被并称为“齐鲁三杰”。从小就一直生活在伏念耀眼的光辉之下，却并没有强烈的争强斗胜之心，安之若怡，为人处世十分淡泊、喜静不喜动，几乎没有人知道他的真正实力。尽管有着不为人知的遭遇，却始终保持一颗平和澄明的心。 [2]  楚南公更是高度评价：“君子无争、含光无形、坐忘无心，这三者同时出现在一个人的身上，完美契合，实在难得，使颜路进入了一种绝对的虚无境界。”')
SET IDENTITY_INSERT [dbo].[秦时角色] OFF
INSERT [dbo].[用户] ([姓名], [密码], [性别], [生日], [出生地], [电话], [识别字符串], [称号]) VALUES (N'测试者', N'qwe123', N'男', N'1996/04/12', N'南昌', N'14141414141', N'测试者qwe123', N'暂无')
INSERT [dbo].[用户] ([姓名], [密码], [性别], [生日], [出生地], [电话], [识别字符串], [称号]) VALUES (N'刘小玉', N'qwe123', N'女', N'1996/04/12', N'南昌', N'14141414141', N'刘小玉qwe123', N'达人秦迷')
INSERT [dbo].[用户] ([姓名], [密码], [性别], [生日], [出生地], [电话], [识别字符串], [称号]) VALUES (N'谢先生', N'123456', N'男', N'1996/04/12', N'南昌', N'14141414141', N'谢先生123456', N'暂无')
INSERT [dbo].[用户] ([姓名], [密码], [性别], [生日], [出生地], [电话], [识别字符串], [称号]) VALUES (N'测试者2', N'abc123', N'男', N'1994/03/24', N'上海', N'13107080522', N'测试者2abc123', N'暂无')
ALTER TABLE [dbo].[用户] ADD  DEFAULT ('暂无') FOR [称号]
GO
/****** Object:  StoredProcedure [dbo].[SalesByCategory]    Script Date: 2020/12/30 14:27:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SalesByCategory]
    @CategoryName nvarchar(15), @OrdYear nvarchar(4) = '1998'
AS
IF @OrdYear != '1996' AND @OrdYear != '1997' AND @OrdYear != '1998' 
BEGIN
	SELECT @OrdYear = '1998'
END

SELECT 产品名称,
	TotalPurchase=ROUND(SUM(CONVERT(decimal(14,2), OD.数量 * (1-OD.折扣) * OD.单价)), 0)
FROM [订单明细] OD, 订单 O, 产品 P, 类别 C
WHERE OD.订单ID = O.订单ID 
	AND OD.产品ID = P.产品ID 
	AND P.类别ID = C.类别ID
	AND C.类别名称 = @CategoryName
	AND SUBSTRING(CONVERT(nvarchar(22), O.订购日期, 111), 1, 4) = @OrdYear
GROUP BY 产品名称
ORDER BY 产品名称

GO
USE [master]
GO
ALTER DATABASE [D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] SET  READ_WRITE 
GO

/*以下语句的作用在于改变数据库读取中文数据的方式，否则中文写入数据库时会乱码。具体方式为先修改用户模式，再修改读取数据方式，最后修改回混合用户模式*/
alter database[D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] set single_user with rollback immediate
alter database[D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] collate Chinese_PRC_CI_AS
alter database[D:\USERS\LJY\SOURCE\REPOS\WEBAPPLICATIONFINAL_LJY\APP_DATA\NORTHWIND.MDF] set multi_user