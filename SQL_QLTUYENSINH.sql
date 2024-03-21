CREATE DATABASE QLTUYENSINH

Create table DiemThi
(
MaDT nvarchar(10) not null primary key,
DiaChi nvarchar(50)
)

Create table Phong
(
MaPhong nvarchar(10) not null primary key,
CB1 nvarchar(50),
CB2 nvarchar(50),
MaDT nvarchar(10) not null
)

Alter table Phong
Add constraint FR_P_DT_MaDT
foreign key (MaDT)
references DiemThi (MaDT)

Create table Nganh
(
MaNganh nvarchar(10) not null primary key,
TenNganh nvarchar(50)
)

Create table ThiSinh
(
SoBD nvarchar(10) not null primary key,
HoTen nvarchar(50),
NgaySinh date,
MaPhong nvarchar(10) not null,
MaNganh nvarchar(10) not null
)

Alter table ThiSinh
Add constraint FR_TS_P_MaPhong
foreign key (MaPhong)
references Phong (MaPhong)

  
Alter table ThiSinh
Add constraint FR_TS_N_MaNganh
foreign key (MaNganh)
references Nganh (MaNganh)
