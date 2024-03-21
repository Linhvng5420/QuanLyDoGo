CREATE DATABASE QLHSBH

Create table HoSo
(
MaHS nvarchar(10) not null primary key,
NamHS int,
TG_VC nvarchar(50),
BH_NG nvarchar(50),
BH_NN nvarchar(50),
TiLePT_Moi decimal,
TongGT_BH float
)

Create table TaiNan
(
MaHS nvarchar(10) not null primary key,
MucDo nvarchar(50),
NgayTN date,
ChiPhi_VC int,
ChiPhi_NG int,
ChiPhi_NN int
)

Alter table TaiNan
Add constraint FR_TN_HS_MaHS
foreign key (MaHS)
references HoSo(MaHS)

Create table MucBH
(
MaXe nvarchar(10) not null primary key,
MD_SD nvarchar(50),
BH_VC_100 nvarchar(50),
Gia_BH_NG int,
Gia_BH_NN int
)

Create table HoSo_BaoHiem
(
MaHS nvarchar(10) not null,
MaXe nvarchar(10) not null,
BangSo nvarchar(50),
NamBD_SD date,
NgayKy_HD date,
SoChoNgoi nvarchar(10),
primary key (MaHS,MaXe)
)

Alter table HoSo_BaoHiem
Add constraint FR_HSBH_HS_MaHS
foreign key (MaHS)
references HoSo (MaHS)

Alter table HoSo_BaoHiem
Add constraint FR_HSBH_MBH_MaXe
foreign key (MaXe)
references MucBH (MaXe)

