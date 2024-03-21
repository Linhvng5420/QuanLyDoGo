CREATE DATABASE QLTHETHAO

Create table CuocThi
(
MaCT nvarchar(10) not null primary key,
TenCT nvarchar(50),
DiaDiem nvarchar(50),
DonVi nvarchar(50),
QuyMo nvarchar(50),
MoTa nvarchar(50),
NgayBD date,
NgayKT date
)

Create table MonThi
(
MaMon nvarchar(10) not null primary key,
TenMon nvarchar(50),
MoTa nvarchar(50),
MaCT nvarchar(10) not null
)

Alter table MonThi
Add constraint FR_MT_CT_MaCT
foreign key (MaCT)
references CuocThi(MaCT)

Create table TranDau
(
MaTran nvarchar(10) not null primary key,
TenTran nvarchar(50),
NgayGioTD date,
DiaDiem nvarchar,
ThoiLuong decimal,
MaCT nvarchar(10) not null
)

Alter table TranDau
Add constraint FR_TD_CT_MaCT
foreign key (MaCT)
references CuocThi(MaCT)

Create table Doi
(
MaDoi nvarchar(10) not null primary key,
TenDoi nvarchar(50)
)

Create table VDV
(
MaVDV nvarchar(10) not null primary key,
HoTen nvarchar(50),
NgaySinh date,
DiaChi nvarchar(50),
DienThoai decimal,
CanNang int,
ChieuCao int,
TieuSuBenh nvarchar(50),
GioiTinh nvarchar(10),
MaDoi nvarchar(10) not null,
)

Alter table VDV
Add constraint FR_VDV_D_MaDoi
foreign key (MaDoi)
references Doi(MaDoi)

Create table TrongTai
(
MaTT nvarchar(10) not null primary key,
TenTT nvarchar(50),
NgaySinh date,
ChuyenMon nvarchar(50),
DiaChi1 nvarchar(50),
DiaChi2 nvarchar(50),
QuocTich nvarchar(50)
)

Create table TD_TT
(
MaTran nvarchar(10) not null,
MaTT nvarchar(10) not null
primary key(MaTran,MaTT)
)

Alter table TD_TT
Add constraint FR_TDTT_MaTran
foreign key (MaTran)
references TranDau(MaTran)

Alter table TD_TT
Add constraint FR_TDTT_MaTT
foreign key (MaTT)
references TrongTai(MaTT)