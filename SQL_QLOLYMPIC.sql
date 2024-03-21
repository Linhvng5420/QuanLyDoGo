CREATE DATABASE QLOLYMPIC

Create table TSDoi
(
MaTSD nvarchar(10) not null primary key,
TenDoi nvarchar(50),
SLTV int
)

Create table TSCaNhan
(
MaTSCN nvarchar(10) not null primary key,
TenTSCN nvarchar(50),
MaND nvarchar(10) not null,
MaGiai nvarchar(10) not null,
MaTSD nvarchar(10) not null
)

Alter table TSCaNhan
Add constraint FR_TSCN_TSD_MaTSD
foreign key (MaTSD)
references TSDoi (MaTSD)

Create table NoiDung
(
MaND nvarchar(10) not null primary key,
MoTa nvarchar(50),
Loai nvarchar(50)
)

Create table GiaiThuong
(
MaGiai nvarchar(10) not null primary key,
TenGiai nvarchar(50),
TriGia int,
MaND nvarchar(10) not null,
LoaiGiai nvarchar(50)
)

Create table DKThiDoi
(
MaTSD nvarchar(10) not null,
MaND nvarchar(10) not nulL,
MaGiai nvarchar(10) not null,
primary key(MaTSD,MaND,MaGiai)
)

Alter table GiaiThuong
Add constraint FR_GT_ND_MaNoiDung
foreign key (MaND)
references NoiDung (MaND)

Alter table TSCaNhan
Add constraint FR_TSCN_ND_MaNoiDung
foreign key (MaND)
references NoiDung (MaND)

Alter table TSCaNhan
Add constraint FR_TSCN_GT_MaGiai
foreign key (MaGiai)
references GiaiThuong (MaGiai)

Alter table DKThiDoi
Add constraint FR_DKTD_TSD_MaTSDoi
foreign key (MaTSD)
references TSDoi (MaTSD)

Alter table DKThiDoi
Add constraint FR_DKTD_ND_MaNoiDung
foreign key (MaND)
references NoiDung (MaND)

Alter table DKThiDoi
Add constraint FR_DKTD_GT_MaGiai
foreign key (MaGiai)
references GiaiThuong (MaGiai)

