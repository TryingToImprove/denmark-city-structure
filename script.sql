/****** Object:  Table [dbo].[Country]    Script Date: 1/11/2015 4:11:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Municipality]    Script Date: 1/11/2015 4:11:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipality](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[RegionId] [int] NOT NULL,
 CONSTRAINT [PK_Municipality] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Region]    Script Date: 1/11/2015 4:11:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CountryId] [int] NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Town]    Script Date: 1/11/2015 4:11:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Town](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[RegionId] [int] NOT NULL,
 CONSTRAINT [PK_Town] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TownMunicipality]    Script Date: 1/11/2015 4:11:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TownMunicipality](
	[TownId] [int] NOT NULL,
	[MunicipalityId] [int] NOT NULL,
 CONSTRAINT [PK_TownMunicipality] PRIMARY KEY CLUSTERED 
(
	[TownId] ASC,
	[MunicipalityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TownPostalcode]    Script Date: 1/11/2015 4:11:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TownPostalcode](
	[TownId] [int] NOT NULL,
	[Postalcode] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_TownPostalcode] PRIMARY KEY CLUSTERED 
(
	[TownId] ASC,
	[Postalcode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Country] ON 

GO
INSERT [dbo].[Country] ([Id], [Name]) VALUES (1, N'Danmark')
GO
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Municipality] ON 

GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (78, N'Aabenraa Kommune', 5)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (37, N'Aalborg Kommune', 3)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (1, N'Aarhus Kommune', 1)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (79, N'Ærø Kommune', 5)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (48, N'Albertslund Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (49, N'Allerød Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (80, N'Assens Kommune', 5)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (50, N'Ballerup Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (81, N'Billund Kommune', 5)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (51, N'Bornholm Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (52, N'Brøndby Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (38, N'Brønderslev Kommune', 3)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (53, N'Christiansø', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (54, N'Dragør Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (55, N'Egedal Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (82, N'Esbjerg Kommune', 5)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (83, N'Faaborg-Midtfyn Kommune', 5)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (84, N'Fanø Kommune', 5)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (2, N'Favrskov Kommune', 1)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (20, N'Faxe Kommune', 2)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (56, N'Fredensborg Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (85, N'Fredericia Kommune', 5)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (57, N'Frederiksberg Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (39, N'Frederikshavn Kommune', 3)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (58, N'Frederikssund Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (59, N'Furesø Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (60, N'Gentofte Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (61, N'Gladsaxe Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (62, N'Glostrup Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (21, N'Greve Kommune', 2)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (63, N'Gribskov Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (22, N'Guldborgsund Kommune', 2)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (86, N'Haderslev Kommune', 5)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (64, N'Halsnæs Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (3, N'Hedensted Kommune', 1)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (65, N'Helsingør Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (66, N'Herlev Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (4, N'Herning Kommune', 1)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (67, N'Hillerød Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (40, N'Hjørring Kommune', 3)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (68, N'Høje-Taastrup Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (23, N'Holbæk Kommune', 2)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (5, N'Holstebro Kommune', 1)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (6, N'Horsens Kommune', 1)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (69, N'Hørsholm Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (70, N'Hvidovre Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (7, N'Ikast-Brande Kommune', 1)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (71, N'Ishøj Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (41, N'Jammerbugt Kommune', 3)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (24, N'Kalundborg Kommune', 2)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (87, N'Kerteminde Kommune', 5)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (72, N'Københavns Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (25, N'Køge Kommune', 2)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (88, N'Kolding Kommune', 5)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (42, N'Læsø Kommune', 3)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (89, N'Langeland Kommune', 5)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (26, N'Lejre Kommune', 2)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (8, N'Lemvig Kommune', 1)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (27, N'Lolland Kommune', 2)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (73, N'Lyngby-Taarbæk Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (43, N'Mariagerfjord Kommune', 3)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (90, N'Middelfart Kommune', 5)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (44, N'Morsø Kommune', 3)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (28, N'Næstved Kommune', 2)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (9, N'Norddjurs Kommune', 1)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (91, N'Nordfyns Kommune', 5)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (92, N'Nyborg Kommune', 5)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (10, N'Odder Kommune', 1)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (93, N'Odense Kommune', 5)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (29, N'Odsherred Kommune', 2)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (11, N'Randers Kommune', 1)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (45, N'Rebild Kommune', 3)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (12, N'Ringkøbing-Skjern Kommune', 1)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (30, N'Ringsted Kommune', 2)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (74, N'Rødovre Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (31, N'Roskilde Kommune', 2)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (75, N'Rudersdal Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (13, N'Samsø Kommune', 1)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (14, N'Silkeborg Kommune', 1)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (15, N'Skanderborg Kommune', 1)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (16, N'Skive Kommune', 1)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (32, N'Slagelse Kommune', 2)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (33, N'Solrød Kommune', 2)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (94, N'Sønderborg Kommune', 5)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (34, N'Sorø Kommune', 2)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (35, N'Stevns Kommune', 2)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (17, N'Struer Kommune', 1)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (95, N'Svendborg Kommune', 5)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (18, N'Syddjurs Kommune', 1)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (76, N'Tårnby Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (46, N'Thisted Kommune', 3)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (96, N'Tønder Kommune', 5)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (77, N'Vallensbæk Kommune', 4)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (97, N'Varde Kommune', 5)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (98, N'Vejen Kommune', 5)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (99, N'Vejle Kommune', 5)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (47, N'Vesthimmerlands Kommune', 3)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (19, N'Viborg Kommune', 1)
GO
INSERT [dbo].[Municipality] ([Id], [Name], [RegionId]) VALUES (36, N'Vordingborg Kommune', 2)
GO
SET IDENTITY_INSERT [dbo].[Municipality] OFF
GO
SET IDENTITY_INSERT [dbo].[Region] ON 

GO
INSERT [dbo].[Region] ([Id], [Name], [CountryId]) VALUES (4, N'Region Hovedstaden', 1)
GO
INSERT [dbo].[Region] ([Id], [Name], [CountryId]) VALUES (1, N'Region Midtjylland', 1)
GO
INSERT [dbo].[Region] ([Id], [Name], [CountryId]) VALUES (3, N'Region Nordjylland', 1)
GO
INSERT [dbo].[Region] ([Id], [Name], [CountryId]) VALUES (2, N'Region Sjælland', 1)
GO
INSERT [dbo].[Region] ([Id], [Name], [CountryId]) VALUES (5, N'Region Syddanmark', 1)
GO
SET IDENTITY_INSERT [dbo].[Region] OFF
GO
SET IDENTITY_INSERT [dbo].[Town] ON 

GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (621, N'Aabenraa', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (622, N'Aabybro', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (623, N'Aakirkeby', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (624, N'Aalborg', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (625, N'Aalborg Øst', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (626, N'Aalborg SØ', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (627, N'Aalborg SV', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (628, N'Aalestrup', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (629, N'Aalestrup', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (630, N'Aarhus C', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (631, N'Aarhus N', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (632, N'Aarhus V', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (633, N'Aars', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (634, N'Aarup', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (635, N'Åbyhøj', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (636, N'Ærøskøbing', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (637, N'Agedrup', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (638, N'Agerbæk', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (639, N'Agerskov', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (640, N'Ålbæk', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (641, N'Albertslund', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (642, N'Allerød', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (643, N'Allingåbro', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (644, N'Allinge', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (645, N'Almind', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (646, N'Ålsgårde', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (647, N'Anholt', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (648, N'Ans By', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (649, N'Ansager', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (650, N'Arden', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (651, N'Årre', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (652, N'Årslev', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (653, N'Asaa', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (654, N'Askeby', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (655, N'Asnæs', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (656, N'Asperup', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (657, N'Assens', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (658, N'Augustenborg', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (659, N'Aulum', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (660, N'Auning', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (661, N'Bække', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (662, N'Bækmarksbro', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (663, N'Bælum', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (664, N'Bagenkop', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (665, N'Bagsværd', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (666, N'Balle', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (667, N'Ballerup', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (668, N'Bandholm', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (669, N'Barrit', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (670, N'Beder', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (671, N'Bedsted Thy', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (672, N'Bevtoft', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (673, N'Billum', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (674, N'Billund', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (675, N'Bindslev', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (676, N'Birkerød', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (677, N'Bjæverskov', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (678, N'Bjerringbro', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (679, N'Bjert', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (680, N'Blåvand', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (681, N'Blokhus', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (682, N'Blommenslyst', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (683, N'Boeslunde', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (684, N'Bogense', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (685, N'Bogø By', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (686, N'Bolderslev', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (687, N'Bording', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (688, N'Børkop', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (689, N'Borre', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (690, N'Borup', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (691, N'Bøvlingbjerg', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (692, N'Brabrand', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (693, N'Brædstrup', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (694, N'Bramming', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (695, N'Brande', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (696, N'Brande', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (697, N'Branderup J', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (698, N'Bredebro', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (699, N'Bredsten', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (700, N'Brenderup Fyn', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (701, N'Broager', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (702, N'Broby', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (703, N'Brøndby', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (704, N'Brøndby Strand', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (705, N'Brønderslev', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (706, N'Brønshøj', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (707, N'Brørup', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (708, N'Brovst', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (709, N'Bryrup', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (710, N'Bylderup-Bov', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (711, N'Charlottenlund', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (712, N'Christiansfeld', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (713, N'Dalby', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (714, N'Dalmose', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (715, N'Dannemare', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (716, N'Daugård', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (717, N'Dianalund', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (718, N'Dragør', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (719, N'Dronninglund', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (720, N'Dronningmølle', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (721, N'Dybvad', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (722, N'Dyssegård', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (723, N'Ebberup', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (724, N'Ebeltoft', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (725, N'Egå', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (726, N'Egernsund', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (727, N'Egtved', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (728, N'Ejby', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (729, N'Ejstrupholm', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (730, N'Ejstrupholm', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (731, N'Engesvang', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (732, N'Errindlev', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (733, N'Erslev', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (734, N'Esbjerg', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (735, N'Esbjerg N', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (736, N'Esbjerg Ø', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (737, N'Esbjerg V', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (738, N'Eskebjerg', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (739, N'Eskilstrup', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (740, N'Espergærde', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (741, N'Faaborg', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (742, N'Fanø', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (743, N'Fårevejle', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (744, N'Farsø', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (745, N'Farum', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (746, N'Fårup', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (747, N'Fårup', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (748, N'Fårvang', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (749, N'Faxe', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (750, N'Faxe Ladeplads', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (751, N'Fejø', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (752, N'Ferritslev Fyn', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (753, N'Fjenneslev', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (754, N'Fjerritslev', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (755, N'Flemming', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (756, N'Føllenslev', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (757, N'Føvling', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (758, N'Fredensborg', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (759, N'Fredericia', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (760, N'Frederiksberg', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (761, N'Frederiksberg C', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (762, N'Frederikshavn', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (763, N'Frederikssund', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (764, N'Frederiksværk', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (765, N'Frørup', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (766, N'Frøstrup', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (767, N'Fuglebjerg', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (768, N'Fur', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (769, N'Gadbjerg', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (770, N'Gadstrup', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (771, N'Galten', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (772, N'Gandrup', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (773, N'Gedser', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (774, N'Gedsted', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (775, N'Gedsted', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (776, N'Gedved', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (777, N'Gelsted', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (778, N'Gentofte', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (779, N'Gesten', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (780, N'Gilleleje', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (781, N'Gislev', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (782, N'Gislinge', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (783, N'Gistrup', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (784, N'Give', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (785, N'Give', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (786, N'Gjerlev J', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (787, N'Gjern', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (788, N'Glamsbjerg', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (789, N'Glejbjerg', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (790, N'Glesborg', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (791, N'Glostrup', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (792, N'Glumsø', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (793, N'Gørding', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (794, N'Gørlev', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (795, N'Gørløse', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (796, N'Græsted', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (797, N'Gram', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (798, N'Gråsten', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (799, N'Gredstedbro', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (800, N'Grenaa', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (801, N'Greve', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (802, N'Grevinge', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (803, N'Grindsted', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (804, N'Gudbjerg Sydfyn', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (805, N'Gudhjem', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (806, N'Gudme', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (807, N'Guldborg', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (808, N'Haarby', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (809, N'Haderslev', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (810, N'Haderup', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (811, N'Hadsten', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (812, N'Hadsund', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (813, N'Hals', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (814, N'Hammel', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (815, N'Hampen', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (816, N'Hanstholm', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (817, N'Harboøre', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (818, N'Hårlev', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (819, N'Harlev J', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (820, N'Harndrup', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (821, N'Harpelunde', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (822, N'Hasle', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (823, N'Haslev', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (824, N'Hasselager', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (825, N'Havdrup', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (826, N'Havndal', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (827, N'Havndal', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (828, N'Hedehusene', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (829, N'Hedehusene', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (830, N'Hedensted', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (831, N'Hejls', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (832, N'Hejnsvig', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (833, N'Hellebæk', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (834, N'Hellerup', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (835, N'Helsinge', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (836, N'Helsingør', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (837, N'Hemmet', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (838, N'Henne', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (839, N'Herfølge', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (840, N'Herlev', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (841, N'Herlufmagle', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (842, N'Herning', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (843, N'Hesselager', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (844, N'Hillerød', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (845, N'Hinnerup', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (846, N'Hirtshals', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (847, N'Hjallerup', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (848, N'Hjerm', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (849, N'Hjørring', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (850, N'Hjortshøj', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (851, N'Hobro', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (852, N'Hobro', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (853, N'Højbjerg', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (854, N'Højby', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (855, N'Høje Taastrup', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (856, N'Højer', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (857, N'Højslev', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (858, N'Holbæk', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (859, N'Holeby', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (860, N'Holmegaard', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (861, N'Holstebro', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (862, N'Holsted', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (863, N'Holte', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (864, N'Høng', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (865, N'Horbelev', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (866, N'Hornbæk', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (867, N'Hørning', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (868, N'Hornslet', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (869, N'Hornsyld', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (870, N'Horsens', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (871, N'Hørsholm', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (872, N'Horslunde', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (873, N'Hørve', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (874, N'Hovborg', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (875, N'Hovedgård', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (876, N'Humble', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (877, N'Humlebæk', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (878, N'Hundested', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (879, N'Hundslund', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (880, N'Hurup Thy', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (881, N'Hurup Thy', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (882, N'Hvalsø', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (883, N'Hvide Sande', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (884, N'Hvidovre', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (885, N'Idestrup', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (886, N'Ikast', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (887, N'Ishøj', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (888, N'Jægerspris', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (889, N'Janderup Vestj', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (890, N'Jelling', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (891, N'Jerslev J', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (892, N'Jerslev Sjælland', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (893, N'Jerup', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (894, N'Jordrup', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (895, N'Juelsminde', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (896, N'Jyderup', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (897, N'Jyllinge', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (898, N'Jystrup Midtsj', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (899, N'Kalundborg', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (900, N'Kalvehave', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (901, N'Karby', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (902, N'Karise', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (903, N'Karlslunde', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (904, N'Karrebæksminde', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (905, N'Karup J', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (906, N'Kastrup', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (907, N'Kerteminde', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (908, N'Kettinge', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (909, N'Kibæk', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (910, N'Kirke Eskilstrup', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (911, N'Kirke Hyllinge', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (912, N'Kirke Såby', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (913, N'Kjellerup', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (914, N'Klampenborg', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (915, N'Klarup', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (916, N'Klemensker', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (917, N'Klippinge', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (918, N'Klovborg', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (919, N'Knebel', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (920, N'København C', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (921, N'København K', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (922, N'København N', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (923, N'København NV', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (924, N'København Ø', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (925, N'København S', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (926, N'København SV', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (927, N'København V', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (928, N'Københavns Pakkecent', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (929, N'Køge', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (930, N'Kokkedal', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (931, N'Kolding', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (932, N'Kolind', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (933, N'Kongens Lyngby', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (934, N'Kongerslev', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (935, N'Korsør', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (936, N'Kruså', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (937, N'Kværndrup', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (938, N'Kvistgård', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (939, N'Læsø', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (940, N'Langå', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (941, N'Langebæk', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (942, N'Langeskov', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (943, N'Låsby', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (944, N'Lejre', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (945, N'Lem St', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (946, N'Lemming', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (947, N'Lemvig', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (948, N'Lille Skensved', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (949, N'Lintrup', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (950, N'Liseleje', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (951, N'Løgstør', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (952, N'Løgstrup', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (953, N'Løgumkloster', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (954, N'Løkken', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (955, N'Løsning', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (956, N'Lundby', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (957, N'Lunderskov', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (958, N'Lynge', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (959, N'Lystrup', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (960, N'Malling', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (961, N'Måløv', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (962, N'Mariager', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (963, N'Mariager', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (964, N'Maribo', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (965, N'Mårslet', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (966, N'Marslev', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (967, N'Marstal', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (968, N'Martofte', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (969, N'Melby', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (970, N'Mern', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (971, N'Mesinge', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (972, N'Middelfart', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (973, N'Millinge', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (974, N'Møldrup', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (975, N'Møldrup', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (976, N'Mørke', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (977, N'Mørkøv', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (978, N'Morud', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (979, N'Munke Bjergby', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (980, N'Munkebo', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (981, N'Nærum', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (982, N'Næstved', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (983, N'Nakskov', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (984, N'Nexø', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (985, N'Nibe', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (986, N'Nimtofte', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (987, N'Nivå', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (988, N'Nørager', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (989, N'Nordborg', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (990, N'Nordhavn', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (991, N'Nørre Aaby', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (992, N'Nørre Alslev', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (993, N'Nørre Asmindrup', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (994, N'Nørre Nebel', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (995, N'Nørre Nebel', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (996, N'Nørre Snede', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (997, N'Nørreballe', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (998, N'Nørresundby', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (999, N'Nyborg', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1000, N'Nykøbing F', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1001, N'Nykøbing M', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1002, N'Nykøbing Sj', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1003, N'Nyrup', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1004, N'Nysted', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1005, N'Odder', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1006, N'Odense C', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1007, N'Odense M', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1008, N'Odense N', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1009, N'Odense NØ', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1010, N'Odense NV', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1011, N'Odense S', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1012, N'Odense SØ', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1013, N'Odense SV', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1014, N'Odense V', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1015, N'Oksbøl', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1016, N'Ølgod', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1017, N'Ølgod', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1018, N'Ølsted', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1019, N'Ølstykke', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1020, N'Ørbæk', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1021, N'Ørnhøj', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1022, N'Ørsted', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1023, N'Ørum Djurs', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1024, N'Østbirk', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1025, N'Øster Assels', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1026, N'Øster Ulslev', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1027, N'Østermarie', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1028, N'Østervrå', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1029, N'Otterup', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1030, N'Oure', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1031, N'Outrup', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1032, N'Padborg', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1033, N'Pandrup', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1034, N'Præstø', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1035, N'Randbøl', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1036, N'Randers C', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1037, N'Randers NØ', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1038, N'Randers NV', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1039, N'Randers SØ', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1040, N'Randers SV', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1041, N'Ranum', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1042, N'Rask Mølle', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1043, N'Redsted M', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1044, N'Regstrup', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1045, N'Ribe', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1046, N'Ringe', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1047, N'Ringkøbing', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1048, N'Ringsted', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1049, N'Risskov', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1050, N'Risskov Ø', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1051, N'Rødby', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1052, N'Rødding', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1053, N'Rødekro', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1054, N'Rødkærsbro', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1055, N'Rødovre', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1056, N'Rødvig Stevns', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1057, N'Rømø', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1058, N'Rønde', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1059, N'Rønne', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1060, N'Rønnede', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1061, N'Rørvig', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1062, N'Roskilde', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1063, N'Roskilde', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1064, N'Roslev', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1065, N'Rude', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1066, N'Rudkøbing', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1067, N'Ruds Vedby', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1068, N'Rungsted Kyst', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1069, N'Ry', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1070, N'Rynkeby', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1071, N'Ryomgård', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1072, N'Ryslinge', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1073, N'Sabro', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1074, N'Sæby', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1075, N'Sakskøbing', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1076, N'Saltum', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1077, N'Samsø', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1078, N'Sandved', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1079, N'Sejerø', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1080, N'Silkeborg', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1081, N'Sindal', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1082, N'Sjællands Odde', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1083, N'Sjølund', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1084, N'Skælskør', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1085, N'Skærbæk', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1086, N'Skævinge', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1087, N'Skagen', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1088, N'Skals', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1089, N'Skamby', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1090, N'Skanderborg', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1091, N'Skårup Fyn', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1092, N'Skibby', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1093, N'Skive', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1094, N'Skjern', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1095, N'Skodsborg', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1096, N'Skødstrup', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1097, N'Skørping', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1098, N'Skovlunde', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1099, N'Slagelse', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1100, N'Slangerup', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1101, N'Smørum', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1102, N'Snedsted', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1103, N'Snekkersten', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1104, N'Snertinge', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1105, N'Søborg', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1106, N'Søby Ærø', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1107, N'Solbjerg', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1108, N'Søllested', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1109, N'Solrød Strand', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1110, N'Sommersted', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1111, N'Sønder Felding', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1112, N'Sønder Omme', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1113, N'Sønder Omme', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1114, N'Sønder Stenderup', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1115, N'Sønderborg', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1116, N'Søndersø', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1117, N'Sorø', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1118, N'Sorring', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1119, N'Sørvad', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1120, N'Spentrup', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1121, N'Spjald', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1122, N'Sporup', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1123, N'Spøttrup', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1124, N'Stakroge', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1125, N'Stakroge', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1126, N'Stege', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1127, N'Stenderup', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1128, N'Stenlille', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1129, N'Stenløse', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1130, N'Stenstrup', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1131, N'Stensved', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1132, N'Stoholm Jyll', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1133, N'Stokkemarke', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1134, N'Store Fuglede', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1135, N'Store Heddinge', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1136, N'Store Merløse', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1137, N'Storvorde', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1138, N'Stouby', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1139, N'Støvring', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1140, N'Strandby', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1141, N'Strøby', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1142, N'Struer', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1143, N'Stubbekøbing', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1144, N'Suldrup', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1145, N'Sulsted', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1146, N'Sunds', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1147, N'Svaneke', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1148, N'Svebølle', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1149, N'Svendborg', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1150, N'Svenstrup J', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1151, N'Svinninge', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1152, N'Sydals', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1153, N'Taastrup', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1154, N'Tappernøje', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1155, N'Tarm', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1156, N'Tarm', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1157, N'Tårs', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1158, N'Terndrup', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1159, N'Them', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1160, N'Thisted', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1161, N'Thorsø', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1162, N'Thyborøn', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1163, N'Thyholm', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1164, N'Tikøb', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1165, N'Tilst', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1166, N'Tim', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1167, N'Tinglev', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1168, N'Tistrup', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1169, N'Tisvildeleje', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1170, N'Tjæreborg', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1171, N'Tjele', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1172, N'Toftlund', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1173, N'Tølløse', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1174, N'Tommerup', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1175, N'Tønder', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1176, N'Toreby L', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1177, N'Torrig L', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1178, N'Tørring', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1179, N'Tørring', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1180, N'Tranbjerg J', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1181, N'Tranekær', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1182, N'Trige', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1183, N'Trustrup', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1184, N'Tune', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1185, N'Tureby', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1186, N'Tylstrup', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1187, N'Udland', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1188, N'Ugerløse', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1189, N'Uldum', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1190, N'Ulfborg', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1191, N'Ullerslev', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1192, N'Ulstrup', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1193, N'Vadum', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1194, N'Væggerløse', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1195, N'Værløse', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1196, N'Valby', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1197, N'Vallensbæk', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1198, N'Vallensbæk Strand', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1199, N'Vamdrup', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1200, N'Vandel', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1201, N'Vanløse', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1202, N'Varde', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1203, N'Vedbæk', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1204, N'Veflinge', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1205, N'Vejby', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1206, N'Vejen', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1207, N'Vejers Strand', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1208, N'Vejle', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1209, N'Vejle', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1210, N'Vejle Øst', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1211, N'Vejle Øst', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1212, N'Vejstrup', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1213, N'Veksø Sjælland', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1214, N'Veksø Sjælland', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1215, N'Vemb', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1216, N'Vemmelev', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1217, N'Vesløs', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1218, N'Vestbjerg', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1219, N'Vester Skerninge', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1220, N'Vesterborg', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1221, N'Vestervig', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1222, N'Viborg', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1223, N'Viby J', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1224, N'Viby Sjælland', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1225, N'Videbæk', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1226, N'Vig', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1227, N'Vildbjerg', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1228, N'Vildbjerg', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1229, N'Vils', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1230, N'Vinderup', 1)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1231, N'Vipperød', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1232, N'Virum', 4)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1233, N'Vissenbjerg', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1234, N'Viuf', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1235, N'Vodskov', 3)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1236, N'Vojens', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1237, N'Vonge', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1238, N'Vorbasse', 5)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1239, N'Vordingborg', 2)
GO
INSERT [dbo].[Town] ([Id], [Name], [RegionId]) VALUES (1240, N'Vrå', 3)
GO
SET IDENTITY_INSERT [dbo].[Town] OFF
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (621, 78)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (622, 37)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (622, 38)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (622, 41)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (623, 51)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (624, 37)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (625, 37)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (626, 37)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (627, 37)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (628, 19)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (628, 43)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (628, 45)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (628, 47)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (629, 19)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (629, 43)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (629, 45)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (629, 47)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (630, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (631, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (632, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (633, 45)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (633, 47)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (634, 80)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (634, 90)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (634, 91)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (635, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (636, 79)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (637, 93)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (638, 97)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (638, 98)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (639, 78)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (639, 86)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (639, 96)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (640, 39)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (640, 40)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (641, 48)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (641, 52)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (642, 49)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (642, 56)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (642, 67)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (643, 9)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (644, 51)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (645, 88)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (646, 65)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (647, 9)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (648, 14)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (648, 19)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (649, 81)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (649, 97)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (650, 43)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (650, 45)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (651, 82)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (651, 97)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (652, 83)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (653, 38)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (653, 39)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (654, 36)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (655, 29)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (656, 90)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (657, 80)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (658, 94)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (659, 4)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (660, 9)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (660, 18)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (661, 98)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (662, 8)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (662, 17)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (663, 45)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (664, 89)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (665, 59)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (665, 61)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (665, 66)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (666, 9)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (666, 18)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (667, 48)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (667, 50)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (667, 55)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (668, 27)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (669, 3)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (670, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (671, 46)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (672, 86)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (672, 96)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (673, 97)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (674, 81)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (674, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (675, 39)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (675, 40)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (676, 49)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (676, 59)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (676, 75)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (677, 25)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (678, 2)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (678, 19)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (679, 88)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (680, 97)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (681, 41)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (682, 91)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (682, 93)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (683, 32)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (684, 91)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (685, 36)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (686, 78)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (687, 7)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (687, 14)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (688, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (689, 36)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (690, 25)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (690, 30)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (690, 31)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (691, 8)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (692, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (693, 6)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (693, 14)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (694, 82)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (695, 4)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (695, 7)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (695, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (696, 4)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (696, 7)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (696, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (697, 96)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (698, 96)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (699, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (700, 90)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (701, 94)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (702, 83)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (703, 52)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (704, 52)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (704, 70)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (705, 38)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (705, 41)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (706, 72)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (707, 98)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (708, 41)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (709, 6)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (709, 7)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (709, 14)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (710, 78)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (711, 60)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (712, 86)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (712, 88)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (713, 87)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (714, 28)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (714, 32)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (715, 27)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (716, 3)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (717, 24)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (717, 34)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (718, 54)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (718, 76)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (719, 38)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (719, 39)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (720, 63)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (721, 38)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (721, 39)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (722, 60)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (723, 80)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (724, 18)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (725, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (726, 94)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (727, 88)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (727, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (728, 90)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (729, 7)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (729, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (730, 7)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (730, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (731, 7)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (731, 14)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (732, 27)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (733, 44)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (734, 82)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (735, 82)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (736, 82)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (737, 82)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (738, 24)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (739, 22)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (740, 56)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (740, 65)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (741, 83)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (742, 84)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (743, 29)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (744, 47)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (745, 49)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (745, 55)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (745, 59)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (746, 11)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (746, 43)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (747, 11)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (747, 43)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (748, 2)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (748, 14)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (749, 20)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (749, 28)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (750, 20)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (751, 27)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (752, 83)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (752, 87)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (753, 30)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (753, 34)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (754, 41)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (755, 3)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (755, 6)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (756, 24)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (756, 29)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (757, 82)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (757, 98)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (758, 56)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (758, 65)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (758, 67)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (759, 85)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (759, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (760, 57)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (760, 72)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (761, 57)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (761, 72)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (762, 39)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (762, 40)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (763, 58)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (763, 64)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (763, 67)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (764, 63)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (764, 64)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (765, 92)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (766, 46)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (767, 28)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (767, 32)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (768, 16)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (769, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (770, 31)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (771, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (771, 15)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (772, 37)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (773, 22)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (774, 19)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (774, 47)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (775, 19)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (775, 47)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (776, 6)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (776, 15)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (777, 90)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (778, 60)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (778, 61)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (779, 98)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (780, 63)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (781, 83)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (781, 95)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (782, 23)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (783, 37)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (783, 45)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (784, 3)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (784, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (785, 3)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (785, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (786, 11)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (787, 14)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (788, 80)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (789, 98)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (790, 9)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (791, 48)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (791, 52)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (791, 62)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (792, 28)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (793, 82)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (793, 98)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (794, 24)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (795, 67)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (796, 63)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (796, 65)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (796, 67)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (797, 86)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (798, 94)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (799, 82)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (800, 9)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (801, 21)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (802, 29)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (803, 81)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (803, 97)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (803, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (804, 95)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (805, 51)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (805, 53)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (806, 95)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (807, 22)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (808, 80)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (809, 86)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (809, 88)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (810, 4)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (810, 5)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (810, 19)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (811, 2)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (812, 43)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (812, 45)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (813, 37)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (813, 38)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (814, 2)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (814, 14)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (815, 7)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (815, 14)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (816, 46)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (817, 8)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (818, 20)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (818, 35)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (819, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (820, 90)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (821, 27)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (822, 51)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (823, 20)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (823, 28)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (823, 30)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (824, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (825, 31)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (825, 33)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (826, 11)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (826, 43)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (827, 11)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (827, 43)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (828, 21)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (828, 31)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (828, 68)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (828, 71)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (829, 21)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (829, 31)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (829, 68)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (829, 71)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (830, 3)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (831, 86)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (831, 88)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (832, 81)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (833, 65)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (834, 60)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (834, 72)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (835, 63)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (835, 67)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (836, 65)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (837, 12)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (838, 97)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (839, 25)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (840, 50)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (840, 61)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (840, 66)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (840, 74)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (841, 20)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (841, 28)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (842, 4)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (842, 7)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (842, 12)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (843, 92)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (843, 95)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (844, 49)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (844, 56)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (844, 67)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (845, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (845, 2)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (846, 40)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (847, 37)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (847, 38)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (848, 5)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (848, 17)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (849, 40)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (850, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (851, 19)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (851, 43)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (851, 45)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (852, 19)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (852, 43)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (852, 45)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (853, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (854, 29)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (855, 68)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (856, 96)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (857, 16)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (857, 19)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (858, 23)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (859, 27)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (860, 20)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (860, 28)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (861, 4)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (861, 5)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (861, 17)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (862, 82)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (862, 98)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (863, 73)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (863, 75)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (864, 24)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (864, 32)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (865, 22)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (866, 63)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (866, 65)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (867, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (867, 15)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (868, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (868, 18)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (869, 3)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (869, 6)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (870, 3)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (870, 6)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (871, 56)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (871, 69)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (871, 75)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (872, 27)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (873, 24)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (873, 29)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (874, 81)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (874, 97)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (874, 98)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (875, 6)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (876, 89)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (877, 56)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (877, 65)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (878, 64)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (879, 10)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (880, 17)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (880, 46)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (881, 17)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (881, 46)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (882, 23)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (882, 26)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (882, 30)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (883, 12)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (884, 52)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (884, 70)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (885, 22)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (886, 7)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (887, 71)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (888, 58)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (889, 97)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (890, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (891, 38)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (891, 40)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (892, 24)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (893, 39)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (894, 88)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (895, 3)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (896, 23)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (896, 24)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (897, 31)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (898, 25)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (898, 30)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (899, 24)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (900, 36)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (901, 44)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (902, 20)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (902, 35)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (903, 21)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (903, 33)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (904, 28)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (905, 4)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (905, 14)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (905, 19)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (906, 72)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (906, 76)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (907, 87)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (908, 22)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (909, 4)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (909, 12)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (910, 23)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (910, 30)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (911, 26)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (912, 26)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (913, 14)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (913, 19)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (914, 60)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (914, 73)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (915, 37)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (916, 51)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (917, 35)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (918, 6)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (918, 7)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (919, 18)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (920, 72)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (921, 72)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (922, 57)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (922, 72)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (923, 72)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (924, 72)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (925, 72)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (925, 76)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (926, 72)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (927, 72)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (927, 76)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (928, 52)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (929, 25)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (929, 35)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (930, 56)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (930, 69)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (931, 88)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (932, 9)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (932, 18)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (933, 60)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (933, 61)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (933, 73)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (933, 75)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (934, 37)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (934, 45)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (935, 32)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (936, 78)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (937, 83)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (937, 95)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (938, 56)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (938, 65)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (939, 42)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (940, 2)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (940, 11)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (941, 36)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (942, 83)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (942, 87)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (942, 92)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (943, 15)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (944, 25)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (944, 26)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (944, 31)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (945, 12)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (946, 14)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (947, 8)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (948, 25)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (948, 31)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (948, 33)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (949, 98)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (950, 64)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (951, 41)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (951, 47)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (952, 19)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (953, 96)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (954, 38)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (954, 40)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (954, 41)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (955, 3)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (956, 28)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (956, 36)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (957, 88)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (958, 49)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (958, 55)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (958, 59)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (958, 67)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (959, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (960, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (960, 10)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (961, 50)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (962, 11)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (962, 43)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (963, 11)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (963, 43)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (964, 22)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (964, 27)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (965, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (966, 87)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (967, 79)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (968, 87)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (969, 64)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (970, 36)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (971, 87)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (972, 90)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (973, 80)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (973, 83)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (974, 19)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (974, 43)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (975, 19)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (975, 43)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (976, 18)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (977, 23)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (978, 91)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (979, 32)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (979, 34)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (980, 87)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (980, 93)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (981, 75)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (982, 28)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (983, 27)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (984, 51)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (985, 37)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (985, 45)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (985, 47)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (986, 9)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (986, 18)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (987, 56)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (988, 45)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (988, 47)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (989, 88)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (989, 94)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (990, 72)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (991, 90)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (992, 22)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (993, 29)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (994, 12)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (994, 97)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (995, 12)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (995, 97)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (996, 3)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (996, 7)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (997, 27)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (998, 37)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (999, 92)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1000, 22)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1001, 44)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1002, 29)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1003, 23)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1003, 34)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1004, 22)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1005, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1005, 10)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1006, 93)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1007, 93)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1008, 91)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1008, 93)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1009, 93)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1010, 93)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1011, 93)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1012, 93)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1013, 93)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1014, 93)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1015, 97)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1016, 12)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1016, 97)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1017, 12)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1017, 97)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1018, 64)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1018, 67)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1019, 55)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1020, 83)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1020, 92)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1021, 4)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1021, 12)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1022, 9)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1023, 9)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1024, 6)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1025, 44)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1026, 22)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1026, 27)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1027, 51)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1028, 38)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1028, 39)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1028, 40)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1029, 91)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1030, 95)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1031, 97)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1032, 78)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1033, 41)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1034, 36)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1035, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1036, 11)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1037, 11)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1038, 11)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1039, 2)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1039, 11)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1040, 2)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1040, 11)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1041, 47)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1042, 3)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1043, 44)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1044, 23)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1045, 82)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1046, 83)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1047, 12)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1048, 20)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1048, 23)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1048, 25)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1048, 28)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1048, 30)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1048, 34)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1049, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1050, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1051, 27)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1052, 86)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1052, 98)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1053, 78)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1054, 14)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1054, 19)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1055, 70)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1055, 72)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1055, 74)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1056, 35)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1057, 96)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1058, 18)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1059, 51)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1060, 20)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1060, 28)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1061, 29)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1062, 26)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1062, 31)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1062, 68)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1063, 26)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1063, 31)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1063, 68)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1064, 16)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1065, 28)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1065, 32)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1066, 89)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1067, 24)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1067, 34)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1068, 69)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1069, 6)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1069, 14)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1069, 15)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1070, 87)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1071, 9)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1071, 18)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1072, 83)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1073, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1073, 2)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1073, 15)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1074, 39)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1075, 22)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1076, 41)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1077, 13)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1078, 28)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1078, 32)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1079, 24)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1080, 7)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1080, 14)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1080, 15)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1081, 39)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1081, 40)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1082, 29)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1083, 88)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1084, 32)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1085, 96)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1086, 64)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1086, 67)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1087, 39)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1088, 19)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1089, 91)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1090, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1090, 6)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1090, 10)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1090, 15)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1091, 95)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1092, 58)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1093, 5)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1093, 16)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1093, 19)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1094, 12)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1095, 75)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1096, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1097, 45)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1098, 50)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1098, 66)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1099, 24)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1099, 28)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1099, 32)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1099, 34)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1100, 49)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1100, 55)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1100, 58)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1100, 67)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1101, 55)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1102, 46)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1103, 65)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1104, 23)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1104, 24)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1105, 61)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1105, 72)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1106, 79)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1107, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1108, 27)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1109, 33)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1110, 86)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1110, 88)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1111, 4)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1111, 12)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1112, 4)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1112, 81)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1113, 4)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1113, 81)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1114, 88)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1115, 94)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1116, 91)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1117, 30)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1117, 32)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1117, 34)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1118, 2)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1118, 14)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1119, 4)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1120, 11)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1121, 12)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1122, 2)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1122, 14)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1122, 15)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1123, 16)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1124, 4)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1124, 12)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1124, 81)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1125, 4)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1125, 12)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1125, 81)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1126, 36)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1127, 3)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1127, 6)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1128, 23)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1128, 34)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1129, 55)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1130, 83)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1130, 95)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1131, 36)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1132, 19)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1133, 27)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1134, 24)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1135, 35)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1136, 23)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1136, 30)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1136, 34)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1137, 37)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1138, 3)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1139, 37)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1139, 45)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1140, 39)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1141, 35)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1142, 5)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1142, 8)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1142, 17)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1143, 22)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1144, 45)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1144, 47)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1145, 37)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1145, 41)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1146, 4)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1146, 7)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1147, 51)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1148, 23)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1148, 24)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1149, 95)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1150, 37)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1150, 45)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1151, 23)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1152, 94)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1153, 68)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1154, 20)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1154, 28)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1154, 36)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1155, 12)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1155, 97)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1156, 12)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1156, 97)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1157, 39)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1157, 40)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1158, 45)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1159, 14)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1160, 46)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1161, 2)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1161, 14)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1162, 8)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1163, 17)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1164, 65)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1165, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1166, 12)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1167, 78)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1168, 97)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1169, 63)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1170, 82)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1171, 19)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1172, 86)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1172, 96)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1173, 23)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1173, 26)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1174, 80)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1175, 96)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1176, 22)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1177, 27)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1178, 3)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1178, 7)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1178, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1179, 3)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1179, 7)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1179, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1180, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1181, 89)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1182, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1182, 2)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1183, 9)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1183, 18)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1184, 21)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1184, 31)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1185, 20)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1185, 25)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1185, 35)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1186, 37)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1186, 38)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1186, 41)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1187, 72)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1188, 23)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1189, 3)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1190, 4)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1190, 5)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1190, 8)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1190, 12)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1191, 87)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1191, 92)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1192, 2)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1192, 11)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1192, 19)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1193, 37)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1193, 41)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1194, 22)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1195, 50)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1195, 55)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1195, 59)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1195, 61)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1195, 73)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1196, 57)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1196, 72)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1197, 77)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1198, 77)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1199, 88)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1200, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1201, 57)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1201, 72)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1202, 97)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1203, 69)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1203, 75)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1204, 91)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1205, 63)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1206, 98)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1207, 97)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1208, 3)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1208, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1209, 3)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1209, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1210, 3)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1210, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1211, 3)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1211, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1212, 95)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1213, 31)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1213, 55)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1214, 31)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1214, 55)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1215, 5)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1215, 8)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1216, 32)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1217, 46)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1218, 37)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1219, 83)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1219, 95)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1220, 27)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1221, 46)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1222, 14)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1222, 19)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1223, 1)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1224, 25)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1224, 31)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1225, 12)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1226, 29)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1227, 4)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1227, 12)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1227, 72)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1228, 4)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1228, 12)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1228, 72)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1229, 44)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1230, 4)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1230, 5)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1230, 16)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1230, 17)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1231, 23)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1232, 73)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1232, 75)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1233, 80)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1233, 91)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1233, 93)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1234, 88)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1234, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1235, 37)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1236, 86)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1237, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1238, 81)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1238, 98)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1238, 99)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1239, 36)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1240, 38)
GO
INSERT [dbo].[TownMunicipality] ([TownId], [MunicipalityId]) VALUES (1240, 40)
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (621, N'6200')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (622, N'9440')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (623, N'3720')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (624, N'9000')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (625, N'9220')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (626, N'9210')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (627, N'9200')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (628, N'9620')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (629, N'9620')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (630, N'8000')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (631, N'8200')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (632, N'8210')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (633, N'9600')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (634, N'5560')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (635, N'8230')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (636, N'5970')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (637, N'5320')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (638, N'6753')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (639, N'6534')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (640, N'9982')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (641, N'2620')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (642, N'3450')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (643, N'8961')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (644, N'3770')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (645, N'6051')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (646, N'3140')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (647, N'8592')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (648, N'8643')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (649, N'6823')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (650, N'9510')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (651, N'6818')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (652, N'5792')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (653, N'9340')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (654, N'4792')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (655, N'4550')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (656, N'5466')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (657, N'5610')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (658, N'6440')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (659, N'7490')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (660, N'8963')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (661, N'6622')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (662, N'7660')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (663, N'9574')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (664, N'5935')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (665, N'2880')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (666, N'8444')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (667, N'2750')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (668, N'4941')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (669, N'7150')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (670, N'8330')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (671, N'7755')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (672, N'6541')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (673, N'6852')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (674, N'7190')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (675, N'9881')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (676, N'3460')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (677, N'4632')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (678, N'8850')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (679, N'6091')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (680, N'6857')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (681, N'9492')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (682, N'5491')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (683, N'4242')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (684, N'5400')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (685, N'4793')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (686, N'6392')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (687, N'7441')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (688, N'7080')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (689, N'4791')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (690, N'4140')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (691, N'7650')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (692, N'8220')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (693, N'8740')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (694, N'6740')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (695, N'7330')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (696, N'7330')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (697, N'6535')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (698, N'6261')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (699, N'7182')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (700, N'5464')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (701, N'6310')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (702, N'5672')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (703, N'2605')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (704, N'2660')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (705, N'9700')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (706, N'2700')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (707, N'6650')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (708, N'9460')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (709, N'8654')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (710, N'6372')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (711, N'2920')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (712, N'6070')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (713, N'5380')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (714, N'4261')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (715, N'4983')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (716, N'8721')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (717, N'4293')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (718, N'2791')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (719, N'9330')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (720, N'3120')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (721, N'9352')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (722, N'2870')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (723, N'5631')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (724, N'8400')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (725, N'8250')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (726, N'6320')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (727, N'6040')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (728, N'5592')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (729, N'7361')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (730, N'7361')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (731, N'7442')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (732, N'4895')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (733, N'7950')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (734, N'6700')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (735, N'6715')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (736, N'6705')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (737, N'6710')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (738, N'4593')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (739, N'4863')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (740, N'3060')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (741, N'5600')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (742, N'6720')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (743, N'4540')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (744, N'9640')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (745, N'3520')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (746, N'8990')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (747, N'8990')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (748, N'8882')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (749, N'4640')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (750, N'4654')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (751, N'4944')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (752, N'5863')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (753, N'4173')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (754, N'9690')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (755, N'8762')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (756, N'4591')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (757, N'6683')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (758, N'3480')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (759, N'7000')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (759, N'7007')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (760, N'2000')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1800')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1801')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1802')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1803')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1804')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1805')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1806')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1807')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1808')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1809')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1810')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1811')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1812')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1813')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1814')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1815')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1816')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1817')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1818')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1819')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1820')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1822')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1823')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1824')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1825')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1826')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1827')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1828')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1829')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1850')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1851')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1852')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1853')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1854')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1855')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1856')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1857')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1860')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1861')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1862')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1863')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1864')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1865')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1866')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1867')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1868')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1870')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1871')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1872')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1873')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1874')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1875')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1876')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1877')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1878')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1879')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1900')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1901')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1902')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1903')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1904')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1905')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1906')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1908')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1909')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1910')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1911')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1912')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1913')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1914')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1915')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1916')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1917')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1920')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1921')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1922')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1923')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1924')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1925')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1926')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1927')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1928')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1950')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1951')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1952')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1953')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1954')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1955')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1956')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1957')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1958')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1959')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1960')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1961')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1962')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1963')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1964')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1965')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1966')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1967')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1970')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1971')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1972')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1973')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (761, N'1974')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (762, N'9900')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (763, N'3600')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (764, N'3300')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (765, N'5871')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (766, N'7741')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (767, N'4250')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (768, N'7884')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (769, N'7321')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (770, N'4621')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (771, N'8464')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (772, N'9362')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (773, N'4874')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (774, N'9631')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (775, N'9631')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (776, N'8751')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (777, N'5591')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (778, N'2820')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (779, N'6621')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (780, N'3250')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (781, N'5854')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (782, N'4532')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (783, N'9260')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (784, N'7323')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (785, N'7323')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (786, N'8983')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (787, N'8883')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (788, N'5620')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (789, N'6752')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (790, N'8585')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (791, N'2600')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (792, N'4171')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (793, N'6690')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (794, N'4281')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (795, N'3330')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (796, N'3230')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (797, N'6510')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (798, N'6300')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (799, N'6771')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (800, N'8500')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (801, N'2670')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (802, N'4571')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (803, N'7200')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (804, N'5892')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (805, N'3760')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (806, N'5884')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (807, N'4862')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (808, N'5683')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (809, N'6100')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (810, N'7540')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (811, N'8370')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (812, N'9560')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (813, N'9370')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (814, N'8450')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (815, N'7362')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (816, N'7730')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (817, N'7673')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (818, N'4652')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (819, N'8462')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (820, N'5463')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (821, N'4912')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (822, N'3790')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (823, N'4690')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (824, N'8361')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (825, N'4622')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (826, N'8970')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (827, N'8970')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (828, N'2640')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (829, N'2640')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (830, N'8722')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (831, N'6094')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (832, N'7250')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (833, N'3150')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (834, N'2900')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (835, N'3200')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (836, N'3000')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (837, N'6893')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (838, N'6854')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (839, N'4681')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (840, N'2730')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (841, N'4160')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (842, N'7400')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (843, N'5874')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (844, N'3400')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (845, N'8382')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (846, N'9850')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (847, N'9320')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (848, N'7560')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (849, N'9800')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (850, N'8530')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (851, N'9500')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (852, N'9500')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (853, N'8270')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (854, N'4573')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (855, N'800')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (856, N'6280')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (857, N'7840')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (858, N'4300')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (859, N'4960')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (860, N'4684')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (861, N'7500')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (862, N'6670')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (863, N'2840')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (864, N'4270')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (865, N'4871')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (866, N'3100')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (867, N'8362')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (868, N'8543')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (869, N'8783')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (870, N'8700')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (871, N'2970')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (872, N'4913')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (873, N'4534')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (874, N'6682')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (875, N'8732')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (876, N'5932')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (877, N'3050')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (878, N'3390')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (879, N'8350')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (880, N'7760')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (881, N'7760')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (882, N'4330')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (883, N'6960')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (884, N'2650')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (885, N'4872')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (886, N'7430')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (887, N'2635')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (888, N'3630')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (889, N'6851')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (890, N'7300')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (891, N'9740')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (892, N'4490')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (893, N'9981')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (894, N'6064')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (895, N'7130')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (896, N'4450')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (897, N'4040')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (898, N'4174')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (899, N'4400')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (900, N'4771')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (901, N'7960')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (902, N'4653')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (903, N'2690')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (904, N'4736')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (905, N'7470')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (906, N'2770')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (907, N'5300')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (908, N'4892')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (909, N'6933')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (910, N'4360')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (911, N'4070')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (912, N'4060')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (913, N'8620')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (914, N'2930')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (915, N'9270')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (916, N'3782')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (917, N'4672')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (918, N'8765')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (919, N'8420')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (920, N'900')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (920, N'999')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1000')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1050')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1051')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1052')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1053')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1054')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1055')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1056')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1057')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1058')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1059')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1060')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1061')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1062')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1063')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1064')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1065')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1066')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1067')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1068')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1069')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1070')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1071')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1072')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1073')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1074')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1092')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1093')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1095')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1098')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1100')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1101')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1102')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1103')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1104')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1105')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1106')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1107')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1110')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1111')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1112')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1113')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1114')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1115')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1116')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1117')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1118')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1119')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1120')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1121')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1122')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1123')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1124')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1125')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1126')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1127')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1128')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1129')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1130')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1131')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1140')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1147')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1148')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1150')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1151')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1152')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1153')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1154')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1155')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1156')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1157')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1158')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1159')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1160')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1161')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1162')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1164')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1165')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1166')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1167')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1168')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1169')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1170')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1171')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1172')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1173')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1174')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1175')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1200')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1201')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1202')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1203')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1204')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1205')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1206')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1207')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1208')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1209')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1210')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1211')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1213')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1214')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1215')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1216')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1217')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1218')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1219')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1220')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1221')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1240')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1250')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1251')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1253')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1254')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1255')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1256')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1257')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1259')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1260')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1261')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1263')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1264')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1265')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1266')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1267')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1268')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1270')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1271')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1291')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1300')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1301')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1302')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1303')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1304')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1306')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1307')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1308')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1309')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1310')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1311')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1312')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1313')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1314')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1315')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1316')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1317')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1318')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1319')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1320')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1321')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1322')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1323')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1324')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1325')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1326')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1327')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1328')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1329')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1350')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1352')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1353')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1354')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1355')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1356')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1357')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1358')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1359')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1360')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1361')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1362')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1363')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1364')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1365')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1366')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1367')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1368')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1369')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1370')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1371')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1400')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1401')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1402')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1403')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1406')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1407')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1408')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1409')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1410')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1411')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1412')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1413')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1414')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1415')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1416')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1417')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1418')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1419')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1420')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1421')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1422')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1423')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1424')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1425')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1426')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1427')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1428')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1429')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1430')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1431')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1432')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1433')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1434')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1435')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1436')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1437')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1438')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1439')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1440')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1441')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1448')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1450')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1451')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1452')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1453')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1454')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1455')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1456')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1457')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1458')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1459')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1460')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1462')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1463')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1464')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1466')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1467')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1468')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1470')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1471')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (921, N'1472')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (922, N'2200')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (923, N'2400')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (924, N'2100')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (925, N'2300')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (926, N'2450')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1500')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1532')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1533')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1550')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1551')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1552')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1553')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1554')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1555')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1556')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1557')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1558')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1559')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1560')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1561')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1562')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1563')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1564')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1566')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1567')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1568')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1569')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1570')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1571')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1572')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1573')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1574')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1575')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1576')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1577')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1592')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1599')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1600')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1601')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1602')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1603')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1604')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1606')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1607')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1608')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1609')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1610')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1611')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1612')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1613')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1614')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1615')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1616')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1617')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1618')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1619')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1620')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1621')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1622')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1623')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1624')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1630')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1631')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1632')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1633')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1634')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1635')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1650')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1651')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1652')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1653')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1654')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1655')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1656')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1657')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1658')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1659')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1660')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1661')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1662')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1663')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1664')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1665')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1666')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1667')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1668')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1669')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1670')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1671')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1672')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1673')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1674')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1675')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1676')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1677')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1699')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1700')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1701')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1702')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1703')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1704')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1705')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1706')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1707')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1708')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1709')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1710')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1711')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1712')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1714')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1715')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1716')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1717')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1718')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1719')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1720')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1721')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1722')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1723')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1724')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1725')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1726')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1727')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1728')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1729')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1730')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1731')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1732')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1733')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1734')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1735')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1736')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1737')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1738')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1739')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1749')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1750')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1751')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1752')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1753')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1754')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1755')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1756')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1757')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1758')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1759')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1760')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1761')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1762')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1763')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1764')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1765')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1766')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1770')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1771')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1772')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1773')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1774')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1775')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1777')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1780')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1785')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1786')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1787')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1790')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (927, N'1799')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (928, N'917')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (929, N'4600')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (930, N'2980')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (931, N'6000')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (932, N'8560')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (933, N'2800')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (934, N'9293')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (935, N'4220')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (936, N'6340')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (937, N'5772')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (938, N'3490')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (939, N'9940')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (940, N'8870')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (941, N'4772')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (942, N'5550')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (943, N'8670')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (944, N'4320')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (945, N'6940')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (946, N'8632')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (947, N'7620')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (948, N'4623')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (949, N'6660')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (950, N'3360')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (951, N'9670')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (952, N'8831')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (953, N'6240')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (954, N'9480')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (955, N'8723')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (956, N'4750')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (957, N'6640')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (958, N'3540')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (959, N'8520')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (960, N'8340')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (961, N'2760')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (962, N'9550')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (963, N'9550')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (964, N'4930')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (965, N'8320')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (966, N'5290')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (967, N'5960')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (968, N'5390')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (969, N'3370')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (970, N'4735')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (971, N'5370')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (972, N'5500')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (973, N'5642')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (974, N'9632')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (975, N'9632')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (976, N'8544')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (977, N'4440')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (978, N'5462')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (979, N'4190')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (980, N'5330')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (981, N'2850')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (982, N'4700')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (983, N'4900')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (984, N'3730')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (985, N'9240')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (986, N'8581')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (987, N'2990')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (988, N'9610')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (989, N'6430')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (990, N'2150')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (991, N'5580')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (992, N'4840')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (993, N'4572')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (994, N'6830')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (995, N'6830')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (996, N'8766')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (997, N'4951')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (998, N'9400')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (999, N'5800')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1000, N'4800')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1001, N'7900')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1002, N'4500')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1003, N'4296')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1004, N'4880')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1005, N'8300')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1006, N'5000')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1007, N'5230')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1008, N'5270')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1009, N'5240')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1010, N'5210')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1011, N'5260')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1012, N'5220')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1013, N'5250')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1014, N'5200')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1015, N'6840')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1016, N'6870')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1017, N'6870')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1018, N'3310')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1019, N'3650')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1020, N'5853')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1021, N'6973')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1022, N'8950')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1023, N'8586')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1024, N'8752')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1025, N'7990')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1026, N'4894')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1027, N'3751')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1028, N'9750')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1029, N'5450')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1030, N'5883')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1031, N'6855')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1032, N'6330')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1033, N'9490')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1034, N'4720')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1035, N'7183')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1036, N'8900')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1037, N'8930')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1038, N'8920')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1039, N'8960')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1040, N'8940')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1041, N'9681')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1042, N'8763')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1043, N'7970')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1044, N'4420')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1045, N'6760')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1046, N'5750')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1047, N'6950')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1048, N'4100')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1049, N'8240')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1050, N'8245')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1051, N'4970')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1052, N'6630')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1053, N'6230')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1054, N'8840')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1055, N'2610')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1056, N'4673')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1057, N'6792')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1058, N'8410')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1059, N'3700')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1060, N'4683')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1061, N'4581')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1062, N'4000')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1063, N'4000')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1064, N'7870')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1065, N'4243')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1066, N'5900')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1067, N'4291')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1068, N'2960')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1069, N'8680')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1070, N'5350')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1071, N'8550')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1072, N'5856')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1073, N'8471')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1074, N'9300')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1075, N'4990')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1076, N'9493')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1077, N'8305')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1078, N'4262')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1079, N'4592')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1080, N'8600')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1081, N'9870')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1082, N'4583')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1083, N'6093')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1084, N'4230')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1085, N'6780')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1086, N'3320')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1087, N'9990')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1088, N'8832')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1089, N'5485')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1090, N'8660')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1091, N'5881')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1092, N'4050')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1093, N'7800')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1094, N'6900')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1095, N'2942')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1096, N'8541')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1097, N'9520')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1098, N'2740')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1099, N'4200')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1100, N'3550')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1101, N'2765')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1102, N'7752')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1103, N'3070')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1104, N'4460')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1105, N'2860')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1106, N'5985')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1107, N'8355')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1108, N'4920')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1109, N'2680')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1110, N'6560')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1111, N'7280')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1112, N'7260')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1113, N'7260')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1114, N'6092')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1115, N'6400')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1116, N'5471')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1117, N'4180')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1118, N'8641')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1119, N'7550')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1120, N'8981')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1121, N'6971')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1122, N'8472')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1123, N'7860')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1124, N'7270')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1125, N'7270')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1126, N'4780')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1127, N'8781')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1128, N'4295')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1129, N'3660')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1130, N'5771')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1131, N'4773')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1132, N'7850')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1133, N'4952')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1134, N'4480')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1135, N'4660')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1136, N'4370')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1137, N'9280')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1138, N'7140')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1139, N'9530')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1140, N'9970')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1141, N'4671')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1142, N'7600')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1143, N'4850')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1144, N'9541')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1145, N'9381')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1146, N'7451')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1147, N'3740')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1148, N'4470')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1149, N'5700')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1150, N'9230')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1151, N'4520')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1152, N'6470')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1153, N'2630')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1154, N'4733')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1155, N'6880')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1156, N'6880')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1157, N'9830')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1158, N'9575')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1159, N'8653')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1160, N'7700')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1161, N'8881')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1162, N'7680')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1163, N'7790')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1164, N'3080')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1165, N'8381')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1166, N'6980')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1167, N'6360')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1168, N'6862')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1169, N'3220')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1170, N'6731')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1171, N'8830')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1172, N'6520')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1173, N'4340')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1174, N'5690')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1175, N'6270')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1176, N'4891')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1177, N'4943')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1178, N'7160')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1179, N'7160')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1180, N'8310')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1181, N'5953')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1182, N'8380')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1183, N'8570')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1184, N'4030')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1185, N'4682')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1186, N'9382')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1187, N'960')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1188, N'4350')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1189, N'7171')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1190, N'6990')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1191, N'5540')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1192, N'8860')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1193, N'9430')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1194, N'4873')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1195, N'3500')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1196, N'2500')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1197, N'2625')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1198, N'2665')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1199, N'6580')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1200, N'7184')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1201, N'2720')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1202, N'6800')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1203, N'2950')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1204, N'5474')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1205, N'3210')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1206, N'6600')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1207, N'6853')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1208, N'7100')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1209, N'7100')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1210, N'7120')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1211, N'7120')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1212, N'5882')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1213, N'3670')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1214, N'3670')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1215, N'7570')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1216, N'4241')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1217, N'7742')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1218, N'9380')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1219, N'5762')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1220, N'4953')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1221, N'7770')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1222, N'8800')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1223, N'8260')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1224, N'4130')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1225, N'6920')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1226, N'4560')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1227, N'7480')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1228, N'7480')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1229, N'7980')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1230, N'7830')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1231, N'4390')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1232, N'2830')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1233, N'5492')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1234, N'6052')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1235, N'9310')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1236, N'6500')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1237, N'7173')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1238, N'6623')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1239, N'4760')
GO
INSERT [dbo].[TownPostalcode] ([TownId], [Postalcode]) VALUES (1240, N'9760')
GO
ALTER TABLE [dbo].[Municipality]  WITH CHECK ADD  CONSTRAINT [FK_Municipality_Region] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Region] ([Id])
GO
ALTER TABLE [dbo].[Municipality] CHECK CONSTRAINT [FK_Municipality_Region]
GO
ALTER TABLE [dbo].[Region]  WITH CHECK ADD  CONSTRAINT [FK_Region_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
GO
ALTER TABLE [dbo].[Region] CHECK CONSTRAINT [FK_Region_Country]
GO
ALTER TABLE [dbo].[Town]  WITH CHECK ADD  CONSTRAINT [FK_Town_Region] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Region] ([Id])
GO
ALTER TABLE [dbo].[Town] CHECK CONSTRAINT [FK_Town_Region]
GO
ALTER TABLE [dbo].[TownMunicipality]  WITH CHECK ADD  CONSTRAINT [FK_TownMunicipality_Municipality] FOREIGN KEY([MunicipalityId])
REFERENCES [dbo].[Municipality] ([Id])
GO
ALTER TABLE [dbo].[TownMunicipality] CHECK CONSTRAINT [FK_TownMunicipality_Municipality]
GO
ALTER TABLE [dbo].[TownMunicipality]  WITH CHECK ADD  CONSTRAINT [FK_TownMunicipality_Town] FOREIGN KEY([TownId])
REFERENCES [dbo].[Town] ([Id])
GO
ALTER TABLE [dbo].[TownMunicipality] CHECK CONSTRAINT [FK_TownMunicipality_Town]
GO
ALTER TABLE [dbo].[TownPostalcode]  WITH CHECK ADD  CONSTRAINT [FK_TownPostalcode_Town] FOREIGN KEY([TownId])
REFERENCES [dbo].[Town] ([Id])
GO
ALTER TABLE [dbo].[TownPostalcode] CHECK CONSTRAINT [FK_TownPostalcode_Town]
GO
