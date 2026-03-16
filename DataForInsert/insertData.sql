USE ECommerceTech;
GO

-- ======================================================
-- Insert Roles (4 rows)
-- ======================================================
SET IDENTITY_INSERT Roles ON;
INSERT INTO Roles (roleId, roleName, description) VALUES
(1, N'Admin', N'Quản trị viên hệ thống'),
(2, N'Customer', N'Khách hàng mua sắm'),
(3, N'Shop', N'Người bán hàng'),
(4, N'Shipper', N'Nhân viên giao hàng');
SET IDENTITY_INSERT Roles OFF;
GO

-- ======================================================
-- Insert Hubs (20 rows)
-- ======================================================
SET IDENTITY_INSERT Hubs ON;
INSERT INTO Hubs (hubId, hubName, hubType, hubAddress, distanceMark) VALUES
(1, N'Hub Trung tâm Hà Nội', N'Gốc', N'123 Đường Láng, Đống Đa, Hà Nội', 0),
(2, N'Hub Cầu Giấy', N'Chi nhánh', N'456 Đường Cầu Giấy, Cầu Giấy, Hà Nội', 5),
(3, N'Hub Thanh Xuân', N'Chi nhánh', N'789 Đường Nguyễn Trãi, Thanh Xuân, Hà Nội', 8),
(4, N'Hub Hai Bà Trưng', N'Chi nhánh', N'321 Đường Bạch Mai, Hai Bà Trưng, Hà Nội', 6),
(5, N'Hub Hoàn Kiếm', N'Chi nhánh', N'654 Đường Trần Hưng Đạo, Hoàn Kiếm, Hà Nội', 3),
(6, N'Hub Trung tâm TP.HCM', N'Gốc', N'123 Đường Nguyễn Văn Cừ, Quận 5, TP.HCM', 0),
(7, N'Hub Quận 1', N'Chi nhánh', N'456 Đường Lê Lợi, Quận 1, TP.HCM', 4),
(8, N'Hub Quận 3', N'Chi nhánh', N'789 Đường Cách Mạng Tháng 8, Quận 3, TP.HCM', 7),
(9, N'Hub Quận Thủ Đức', N'Chi nhánh', N'321 Đường Võ Văn Ngân, Thủ Đức, TP.HCM', 12),
(10, N'Hub Quận Bình Thạnh', N'Chi nhánh', N'654 Đường Xô Viết Nghệ Tĩnh, Bình Thạnh, TP.HCM', 9),
(11, N'Hub Đà Nẵng', N'Gốc', N'123 Đường Nguyễn Văn Linh, Hải Châu, Đà Nẵng', 0),
(12, N'Hub Hải Châu', N'Chi nhánh', N'456 Đường 2/9, Hải Châu, Đà Nẵng', 3),
(13, N'Hub Sơn Trà', N'Chi nhánh', N'789 Đường Võ Nguyên Giáp, Sơn Trà, Đà Nẵng', 6),
(14, N'Hub Hải Phòng', N'Gốc', N'123 Đường Lê Hồng Phong, Ngô Quyền, Hải Phòng', 0),
(15, N'Hub Ngô Quyền', N'Chi nhánh', N'456 Đường Đà Nẵng, Ngô Quyền, Hải Phòng', 4),
(16, N'Hub Cần Thơ', N'Gốc', N'123 Đường Nguyễn Trãi, Ninh Kiều, Cần Thơ', 0),
(17, N'Hub Ninh Kiều', N'Chi nhánh', N'456 Đường 30/4, Ninh Kiều, Cần Thơ', 2),
(18, N'Hub Bình Dương', N'Gốc', N'123 Đường Bình Dương, Thủ Dầu Một, Bình Dương', 0),
(19, N'Hub Thủ Dầu Một', N'Chi nhánh', N'456 Đường Nguyễn Văn Tiết, Thủ Dầu Một, Bình Dương', 5),
(20, N'Hub Đồng Nai', N'Gốc', N'123 Đường 30/4, Biên Hòa, Đồng Nai', 0);
SET IDENTITY_INSERT Hubs OFF;
GO

-- ======================================================
-- Insert Accounts (80 rows)
-- ======================================================
SET IDENTITY_INSERT Accounts ON;
INSERT INTO Accounts (accountId, username, passwordHashed, email, phoneNumber, status, createdAt, lastLogin) VALUES
(1, N'admin1', N'hash1', N'admin1@techshop.com', N'0901000001', N'Active', '2023-01-01 08:00:00', '2024-01-15 10:30:00'),
(2, N'admin2', N'hash2', N'admin2@techshop.com', N'0901000002', N'Active', '2023-01-02 09:00:00', '2024-01-14 11:20:00'),
(3, N'admin3', N'hash3', N'admin3@techshop.com', N'0901000003', N'Active', '2023-01-03 10:00:00', '2024-01-13 14:15:00'),
(4, N'admin4', N'hash4', N'admin4@techshop.com', N'0901000004', N'Active', '2023-01-04 11:00:00', '2024-01-12 09:45:00'),
(5, N'admin5', N'hash5', N'admin5@techshop.com', N'0901000005', N'Active', '2023-01-05 12:00:00', '2024-01-11 16:30:00'),
(6, N'admin6', N'hash6', N'admin6@techshop.com', N'0901000006', N'Active', '2023-01-06 13:00:00', '2024-01-10 08:50:00'),
(7, N'admin7', N'hash7', N'admin7@techshop.com', N'0901000007', N'Active', '2023-01-07 14:00:00', '2024-01-09 12:10:00'),
(8, N'admin8', N'hash8', N'admin8@techshop.com', N'0901000008', N'Active', '2023-01-08 15:00:00', '2024-01-08 15:40:00'),
(9, N'admin9', N'hash9', N'admin9@techshop.com', N'0901000009', N'Active', '2023-01-09 16:00:00', '2024-01-07 17:20:00'),
(10, N'admin10', N'hash10', N'admin10@techshop.com', N'0901000010', N'Active', '2023-01-10 17:00:00', '2024-01-06 18:30:00'),
(11, N'admin11', N'hash11', N'admin11@techshop.com', N'0901000011', N'Active', '2023-01-11 18:00:00', '2024-01-05 19:45:00'),
(12, N'admin12', N'hash12', N'admin12@techshop.com', N'0901000012', N'Active', '2023-01-12 19:00:00', '2024-01-04 20:15:00'),
(13, N'admin13', N'hash13', N'admin13@techshop.com', N'0901000013', N'Active', '2023-01-13 20:00:00', '2024-01-03 21:30:00'),
(14, N'admin14', N'hash14', N'admin14@techshop.com', N'0901000014', N'Active', '2023-01-14 21:00:00', '2024-01-02 22:10:00'),
(15, N'admin15', N'hash15', N'admin15@techshop.com', N'0901000015', N'Active', '2023-01-15 22:00:00', '2024-01-01 23:55:00'),
(16, N'admin16', N'hash16', N'admin16@techshop.com', N'0901000016', N'Active', '2023-01-16 23:00:00', '2023-12-31 08:25:00'),
(17, N'admin17', N'hash17', N'admin17@techshop.com', N'0901000017', N'Active', '2023-01-17 08:30:00', '2023-12-30 09:35:00'),
(18, N'admin18', N'hash18', N'admin18@techshop.com', N'0901000018', N'Active', '2023-01-18 09:45:00', '2023-12-29 10:50:00'),
(19, N'admin19', N'hash19', N'admin19@techshop.com', N'0901000019', N'Active', '2023-01-19 10:55:00', '2023-12-28 11:40:00'),
(20, N'admin20', N'hash20', N'admin20@techshop.com', N'0901000020', N'Active', '2023-01-20 12:05:00', '2023-12-27 13:15:00'),
(21, N'customer1', N'hash21', N'customer1@email.com', N'0902000021', N'Active', '2023-02-01 08:00:00', '2024-01-10 09:20:00'),
(22, N'customer2', N'hash22', N'customer2@email.com', N'0902000022', N'Active', '2023-02-02 09:00:00', '2024-01-09 10:30:00'),
(23, N'customer3', N'hash23', N'customer3@email.com', N'0902000023', N'Active', '2023-02-03 10:00:00', '2024-01-08 11:40:00'),
(24, N'customer4', N'hash24', N'customer4@email.com', N'0902000024', N'Active', '2023-02-04 11:00:00', '2024-01-07 12:50:00'),
(25, N'customer5', N'hash25', N'customer5@email.com', N'0902000025', N'Active', '2023-02-05 12:00:00', '2024-01-06 14:00:00'),
(26, N'customer6', N'hash26', N'customer6@email.com', N'0902000026', N'Active', '2023-02-06 13:00:00', '2024-01-05 15:10:00'),
(27, N'customer7', N'hash27', N'customer7@email.com', N'0902000027', N'Active', '2023-02-07 14:00:00', '2024-01-04 16:20:00'),
(28, N'customer8', N'hash28', N'customer8@email.com', N'0902000028', N'Active', '2023-02-08 15:00:00', '2024-01-03 17:30:00'),
(29, N'customer9', N'hash29', N'customer9@email.com', N'0902000029', N'Active', '2023-02-09 16:00:00', '2024-01-02 18:40:00'),
(30, N'customer10', N'hash30', N'customer10@email.com', N'0902000030', N'Active', '2023-02-10 17:00:00', '2024-01-01 19:50:00'),
(31, N'customer11', N'hash31', N'customer11@email.com', N'0902000031', N'Active', '2023-02-11 18:00:00', '2023-12-31 20:00:00'),
(32, N'customer12', N'hash32', N'customer12@email.com', N'0902000032', N'Active', '2023-02-12 19:00:00', '2023-12-30 21:10:00'),
(33, N'customer13', N'hash33', N'customer13@email.com', N'0902000033', N'Inactive', '2023-02-13 20:00:00', NULL),
(34, N'customer14', N'hash34', N'customer14@email.com', N'0902000034', N'Inactive', '2023-02-14 21:00:00', NULL),
(35, N'customer15', N'hash35', N'customer15@email.com', N'0902000035', N'Banned', '2023-02-15 22:00:00', '2023-11-01 08:00:00'),
(36, N'customer16', N'hash36', N'customer16@email.com', N'0902000036', N'Active', '2023-02-16 23:00:00', '2024-01-09 22:30:00'),
(37, N'customer17', N'hash37', N'customer17@email.com', N'0902000037', N'Active', '2023-02-17 08:30:00', '2024-01-08 23:45:00'),
(38, N'customer18', N'hash38', N'customer18@email.com', N'0902000038', N'Active', '2023-02-18 09:45:00', '2024-01-07 07:55:00'),
(39, N'customer19', N'hash39', N'customer19@email.com', N'0902000039', N'Active', '2023-02-19 10:55:00', '2024-01-06 08:15:00'),
(40, N'customer20', N'hash40', N'customer20@email.com', N'0902000040', N'Active', '2023-02-20 12:05:00', '2024-01-05 09:35:00'),
(41, N'shop1', N'hash41', N'shop1@techseller.com', N'0903000041', N'Active', '2023-03-01 08:00:00', '2024-01-14 10:10:00'),
(42, N'shop2', N'hash42', N'shop2@techseller.com', N'0903000042', N'Active', '2023-03-02 09:00:00', '2024-01-13 11:20:00'),
(43, N'shop3', N'hash43', N'shop3@techseller.com', N'0903000043', N'Active', '2023-03-03 10:00:00', '2024-01-12 12:30:00'),
(44, N'shop4', N'hash44', N'shop4@techseller.com', N'0903000044', N'Active', '2023-03-04 11:00:00', '2024-01-11 13:40:00'),
(45, N'shop5', N'hash45', N'shop5@techseller.com', N'0903000045', N'Active', '2023-03-05 12:00:00', '2024-01-10 14:50:00'),
(46, N'shop6', N'hash46', N'shop6@techseller.com', N'0903000046', N'Active', '2023-03-06 13:00:00', '2024-01-09 15:55:00'),
(47, N'shop7', N'hash47', N'shop7@techseller.com', N'0903000047', N'Active', '2023-03-07 14:00:00', '2024-01-08 16:05:00'),
(48, N'shop8', N'hash48', N'shop8@techseller.com', N'0903000048', N'Active', '2023-03-08 15:00:00', '2024-01-07 17:15:00'),
(49, N'shop9', N'hash49', N'shop9@techseller.com', N'0903000049', N'Active', '2023-03-09 16:00:00', '2024-01-06 18:25:00'),
(50, N'shop10', N'hash50', N'shop10@techseller.com', N'0903000050', N'Active', '2023-03-10 17:00:00', '2024-01-05 19:35:00'),
(51, N'shop11', N'hash51', N'shop11@techseller.com', N'0903000051', N'Active', '2023-03-11 18:00:00', '2024-01-04 20:45:00'),
(52, N'shop12', N'hash52', N'shop12@techseller.com', N'0903000052', N'Active', '2023-03-12 19:00:00', '2024-01-03 21:55:00'),
(53, N'shop13', N'hash53', N'shop13@techseller.com', N'0903000053', N'Active', '2023-03-13 20:00:00', '2024-01-02 22:10:00'),
(54, N'shop14', N'hash54', N'shop14@techseller.com', N'0903000054', N'Active', '2023-03-14 21:00:00', '2024-01-01 23:20:00'),
(55, N'shop15', N'hash55', N'shop15@techseller.com', N'0903000055', N'Active', '2023-03-15 22:00:00', '2023-12-31 08:30:00'),
(56, N'shop16', N'hash56', N'shop16@techseller.com', N'0903000056', N'Active', '2023-03-16 23:00:00', '2023-12-30 09:40:00'),
(57, N'shop17', N'hash57', N'shop17@techseller.com', N'0903000057', N'Active', '2023-03-17 08:30:00', '2023-12-29 10:50:00'),
(58, N'shop18', N'hash58', N'shop18@techseller.com', N'0903000058', N'Active', '2023-03-18 09:45:00', '2023-12-28 11:55:00'),
(59, N'shop19', N'hash59', N'shop19@techseller.com', N'0903000059', N'Active', '2023-03-19 10:55:00', '2023-12-27 13:05:00'),
(60, N'shop20', N'hash60', N'shop20@techseller.com', N'0903000060', N'Active', '2023-03-20 12:05:00', '2023-12-26 14:15:00'),
(61, N'shipper1', N'hash61', N'shipper1@delivery.com', N'0904000061', N'Active', '2023-04-01 08:00:00', '2024-01-13 09:25:00'),
(62, N'shipper2', N'hash62', N'shipper2@delivery.com', N'0904000062', N'Active', '2023-04-02 09:00:00', '2024-01-12 10:35:00'),
(63, N'shipper3', N'hash63', N'shipper3@delivery.com', N'0904000063', N'Active', '2023-04-03 10:00:00', '2024-01-11 11:45:00'),
(64, N'shipper4', N'hash64', N'shipper4@delivery.com', N'0904000064', N'Active', '2023-04-04 11:00:00', '2024-01-10 12:55:00'),
(65, N'shipper5', N'hash65', N'shipper5@delivery.com', N'0904000065', N'Active', '2023-04-05 12:00:00', '2024-01-09 14:05:00'),
(66, N'shipper6', N'hash66', N'shipper6@delivery.com', N'0904000066', N'Active', '2023-04-06 13:00:00', '2024-01-08 15:15:00'),
(67, N'shipper7', N'hash67', N'shipper7@delivery.com', N'0904000067', N'Active', '2023-04-07 14:00:00', '2024-01-07 16:25:00'),
(68, N'shipper8', N'hash68', N'shipper8@delivery.com', N'0904000068', N'Active', '2023-04-08 15:00:00', '2024-01-06 17:35:00'),
(69, N'shipper9', N'hash69', N'shipper9@delivery.com', N'0904000069', N'Active', '2023-04-09 16:00:00', '2024-01-05 18:45:00'),
(70, N'shipper10', N'hash70', N'shipper10@delivery.com', N'0904000070', N'Active', '2023-04-10 17:00:00', '2024-01-04 19:55:00'),
(71, N'shipper11', N'hash71', N'shipper11@delivery.com', N'0904000071', N'Active', '2023-04-11 18:00:00', '2024-01-03 21:05:00'),
(72, N'shipper12', N'hash72', N'shipper12@delivery.com', N'0904000072', N'Active', '2023-04-12 19:00:00', '2024-01-02 22:15:00'),
(73, N'shipper13', N'hash73', N'shipper13@delivery.com', N'0904000073', N'Active', '2023-04-13 20:00:00', '2024-01-01 23:25:00'),
(74, N'shipper14', N'hash74', N'shipper14@delivery.com', N'0904000074', N'Active', '2023-04-14 21:00:00', '2023-12-31 08:35:00'),
(75, N'shipper15', N'hash75', N'shipper15@delivery.com', N'0904000075', N'Active', '2023-04-15 22:00:00', '2023-12-30 09:45:00'),
(76, N'shipper16', N'hash76', N'shipper16@delivery.com', N'0904000076', N'Active', '2023-04-16 23:00:00', '2023-12-29 10:55:00'),
(77, N'shipper17', N'hash77', N'shipper17@delivery.com', N'0904000077', N'Active', '2023-04-17 08:30:00', '2023-12-28 12:05:00'),
(78, N'shipper18', N'hash78', N'shipper18@delivery.com', N'0904000078', N'Active', '2023-04-18 09:45:00', '2023-12-27 13:15:00'),
(79, N'shipper19', N'hash79', N'shipper19@delivery.com', N'0904000079', N'Active', '2023-04-19 10:55:00', '2023-12-26 14:25:00'),
(80, N'shipper20', N'hash80', N'shipper20@delivery.com', N'0904000080', N'Active', '2023-04-20 12:05:00', '2023-12-25 15:35:00');
SET IDENTITY_INSERT Accounts OFF;
GO

-- ======================================================
-- Insert Profiles (80 rows)
-- ======================================================
SET IDENTITY_INSERT Profiles ON;
INSERT INTO Profiles (profileId, fullName, dateOfBirth, gender, avatarURL, citizenID, accountId) VALUES
(1, N'Nguyễn Văn An', '1980-01-01', N'Nam', N'https://example.com/avatar1.jpg', N'001201000001', 1),
(2, N'Trần Thị Bình', '1981-02-02', N'Nữ', N'https://example.com/avatar2.jpg', N'001201000002', 2),
(3, N'Lê Văn Cường', '1982-03-03', N'Nam', N'https://example.com/avatar3.jpg', N'001201000003', 3),
(4, N'Phạm Thị Dung', '1983-04-04', N'Nữ', N'https://example.com/avatar4.jpg', N'001201000004', 4),
(5, N'Hoàng Văn Em', '1984-05-05', N'Nam', N'https://example.com/avatar5.jpg', N'001201000005', 5),
(6, N'Ngô Thị Phương', '1985-06-06', N'Nữ', N'https://example.com/avatar6.jpg', N'001201000006', 6),
(7, N'Đỗ Văn Giàu', '1986-07-07', N'Nam', N'https://example.com/avatar7.jpg', N'001201000007', 7),
(8, N'Vũ Thị Hạnh', '1987-08-08', N'Nữ', N'https://example.com/avatar8.jpg', N'001201000008', 8),
(9, N'Bùi Văn Inh', '1988-09-09', N'Nam', N'https://example.com/avatar9.jpg', N'001201000009', 9),
(10, N'Lý Thị Kim', '1989-10-10', N'Nữ', N'https://example.com/avatar10.jpg', N'001201000010', 10),
(11, N'Dương Văn Long', '1990-11-11', N'Nam', N'https://example.com/avatar11.jpg', N'001201000011', 11),
(12, N'Mai Thị Mai', '1991-12-12', N'Nữ', N'https://example.com/avatar12.jpg', N'001201000012', 12),
(13, N'Tô Văn Nhã', '1992-01-13', N'Nam', N'https://example.com/avatar13.jpg', N'001201000013', 13),
(14, N'Trịnh Thị Oanh', '1993-02-14', N'Nữ', N'https://example.com/avatar14.jpg', N'001201000014', 14),
(15, N'Đinh Văn Phú', '1994-03-15', N'Nam', N'https://example.com/avatar15.jpg', N'001201000015', 15),
(16, N'Phan Thị Quỳnh', '1995-04-16', N'Nữ', N'https://example.com/avatar16.jpg', N'001201000016', 16),
(17, N'Hà Văn Sang', '1996-05-17', N'Nam', N'https://example.com/avatar17.jpg', N'001201000017', 17),
(18, N'Lâm Thị Trang', '1997-06-18', N'Nữ', N'https://example.com/avatar18.jpg', N'001201000018', 18),
(19, N'Cao Văn Út', '1998-07-19', N'Nam', N'https://example.com/avatar19.jpg', N'001201000019', 19),
(20, N'Lương Thị Vân', '1999-08-20', N'Nữ', N'https://example.com/avatar20.jpg', N'001201000020', 20),
(21, N'Nguyễn Thành Đạt', '2000-01-01', N'Nam', N'https://example.com/avatar21.jpg', N'002202000021', 21),
(22, N'Trần Minh Hiếu', '2000-02-02', N'Nam', N'https://example.com/avatar22.jpg', N'002202000022', 22),
(23, N'Lê Thị Thu', '2000-03-03', N'Nữ', N'https://example.com/avatar23.jpg', N'002202000023', 23),
(24, N'Phạm Văn Khánh', '2000-04-04', N'Nam', N'https://example.com/avatar24.jpg', N'002202000024', 24),
(25, N'Hoàng Thị Lan', '2000-05-05', N'Nữ', N'https://example.com/avatar25.jpg', N'002202000025', 25),
(26, N'Ngô Văn Minh', '2000-06-06', N'Nam', N'https://example.com/avatar26.jpg', N'002202000026', 26),
(27, N'Đỗ Thị Ngọc', '2000-07-07', N'Nữ', N'https://example.com/avatar27.jpg', N'002202000027', 27),
(28, N'Vũ Văn Phúc', '2000-08-08', N'Nam', N'https://example.com/avatar28.jpg', N'002202000028', 28),
(29, N'Bùi Thị Quyên', '2000-09-09', N'Nữ', N'https://example.com/avatar29.jpg', N'002202000029', 29),
(30, N'Lý Văn Sơn', '2000-10-10', N'Nam', N'https://example.com/avatar30.jpg', N'002202000030', 30),
(31, N'Dương Thị Trúc', '2000-11-11', N'Nữ', N'https://example.com/avatar31.jpg', N'002202000031', 31),
(32, N'Mai Văn Vũ', '2000-12-12', N'Nam', N'https://example.com/avatar32.jpg', N'002202000032', 32),
(33, N'Tô Thị Xuân', '2000-01-13', N'Nữ', N'https://example.com/avatar33.jpg', N'002202000033', 33),
(34, N'Trịnh Văn Ý', '2000-02-14', N'Nam', N'https://example.com/avatar34.jpg', N'002202000034', 34),
(35, N'Đinh Thị Yến', '2000-03-15', N'Nữ', N'https://example.com/avatar35.jpg', N'002202000035', 35),
(36, N'Phan Văn An', '2000-04-16', N'Nam', N'https://example.com/avatar36.jpg', N'002202000036', 36),
(37, N'Hà Thị Bích', '2000-05-17', N'Nữ', N'https://example.com/avatar37.jpg', N'002202000037', 37),
(38, N'Lâm Văn Cần', '2000-06-18', N'Nam', N'https://example.com/avatar38.jpg', N'002202000038', 38),
(39, N'Cao Thị Duyên', '2000-07-19', N'Nữ', N'https://example.com/avatar39.jpg', N'002202000039', 39),
(40, N'Lương Văn Đạt', '2000-08-20', N'Nam', N'https://example.com/avatar40.jpg', N'002202000040', 40),
(41, N'Nguyễn Thị Hồng', '1990-01-01', N'Nữ', N'https://example.com/avatar41.jpg', N'003203000041', 41),
(42, N'Trần Văn Bảy', '1991-02-02', N'Nam', N'https://example.com/avatar42.jpg', N'003203000042', 42),
(43, N'Lê Thị Tám', '1992-03-03', N'Nữ', N'https://example.com/avatar43.jpg', N'003203000043', 43),
(44, N'Phạm Văn Chín', '1993-04-04', N'Nam', N'https://example.com/avatar44.jpg', N'003203000044', 44),
(45, N'Hoàng Thị Mười', '1994-05-05', N'Nữ', N'https://example.com/avatar45.jpg', N'003203000045', 45),
(46, N'Ngô Văn Nhất', '1995-06-06', N'Nam', N'https://example.com/avatar46.jpg', N'003203000046', 46),
(47, N'Đỗ Thị Nhị', '1996-07-07', N'Nữ', N'https://example.com/avatar47.jpg', N'003203000047', 47),
(48, N'Vũ Văn Ba', '1997-08-08', N'Nam', N'https://example.com/avatar48.jpg', N'003203000048', 48),
(49, N'Bùi Thị Tư', '1998-09-09', N'Nữ', N'https://example.com/avatar49.jpg', N'003203000049', 49),
(50, N'Lý Văn Năm', '1999-10-10', N'Nam', N'https://example.com/avatar50.jpg', N'003203000050', 50),
(51, N'Dương Thị Sáu', '1985-11-11', N'Nữ', N'https://example.com/avatar51.jpg', N'003203000051', 51),
(52, N'Mai Văn Bảy', '1986-12-12', N'Nam', N'https://example.com/avatar52.jpg', N'003203000052', 52),
(53, N'Tô Thị Tám', '1987-01-13', N'Nữ', N'https://example.com/avatar53.jpg', N'003203000053', 53),
(54, N'Trịnh Văn Chín', '1988-02-14', N'Nam', N'https://example.com/avatar54.jpg', N'003203000054', 54),
(55, N'Đinh Thị Mười', '1989-03-15', N'Nữ', N'https://example.com/avatar55.jpg', N'003203000055', 55),
(56, N'Phan Văn Một', '1990-04-16', N'Nam', N'https://example.com/avatar56.jpg', N'003203000056', 56),
(57, N'Hà Thị Hai', '1991-05-17', N'Nữ', N'https://example.com/avatar57.jpg', N'003203000057', 57),
(58, N'Lâm Văn Ba', '1992-06-18', N'Nam', N'https://example.com/avatar58.jpg', N'003203000058', 58),
(59, N'Cao Thị Bốn', '1993-07-19', N'Nữ', N'https://example.com/avatar59.jpg', N'003203000059', 59),
(60, N'Lương Văn Năm', '1994-08-20', N'Nam', N'https://example.com/avatar60.jpg', N'003203000060', 60),
(61, N'Nguyễn Văn Phước', '1995-01-01', N'Nam', N'https://example.com/avatar61.jpg', N'004204000061', 61),
(62, N'Trần Thị Lộc', '1996-02-02', N'Nữ', N'https://example.com/avatar62.jpg', N'004204000062', 62),
(63, N'Lê Văn Thọ', '1997-03-03', N'Nam', N'https://example.com/avatar63.jpg', N'004204000063', 63),
(64, N'Phạm Thị An', '1998-04-04', N'Nữ', N'https://example.com/avatar64.jpg', N'004204000064', 64),
(65, N'Hoàng Văn Bình', '1999-05-05', N'Nam', N'https://example.com/avatar65.jpg', N'004204000065', 65),
(66, N'Ngô Thị Cúc', '2000-06-06', N'Nữ', N'https://example.com/avatar66.jpg', N'004204000066', 66),
(67, N'Đỗ Văn Danh', '2001-07-07', N'Nam', N'https://example.com/avatar67.jpg', N'004204000067', 67),
(68, N'Vũ Thị Đào', '2002-08-08', N'Nữ', N'https://example.com/avatar68.jpg', N'004204000068', 68),
(69, N'Bùi Văn Em', '2003-09-09', N'Nam', N'https://example.com/avatar69.jpg', N'004204000069', 69),
(70, N'Lý Thị Phượng', '2004-10-10', N'Nữ', N'https://example.com/avatar70.jpg', N'004204000070', 70),
(71, N'Dương Văn Giàu', '2005-11-11', N'Nam', N'https://example.com/avatar71.jpg', N'004204000071', 71),
(72, N'Mai Thị Hoa', '2006-12-12', N'Nữ', N'https://example.com/avatar72.jpg', N'004204000072', 72),
(73, N'Tô Văn Hùng', '2007-01-13', N'Nam', N'https://example.com/avatar73.jpg', N'004204000073', 73),
(74, N'Trịnh Thị Hương', '2008-02-14', N'Nữ', N'https://example.com/avatar74.jpg', N'004204000074', 74),
(75, N'Đinh Văn Khải', '2009-03-15', N'Nam', N'https://example.com/avatar75.jpg', N'004204000075', 75),
(76, N'Phan Thị Lan', '2010-04-16', N'Nữ', N'https://example.com/avatar76.jpg', N'004204000076', 76),
(77, N'Hà Văn Long', '2011-05-17', N'Nam', N'https://example.com/avatar77.jpg', N'004204000077', 77),
(78, N'Lâm Thị Mỹ', '2012-06-18', N'Nữ', N'https://example.com/avatar78.jpg', N'004204000078', 78),
(79, N'Cao Văn Nhân', '2013-07-19', N'Nam', N'https://example.com/avatar79.jpg', N'004204000079', 79),
(80, N'Lương Thị Oanh', '2014-08-20', N'Nữ', N'https://example.com/avatar80.jpg', N'004204000080', 80);
SET IDENTITY_INSERT Profiles OFF;
GO

-- ======================================================
-- Insert Admins (20 rows)
-- ======================================================
INSERT INTO Admins (profileId) VALUES
(1), (2), (3), (4), (5), (6), (7), (8), (9), (10),
(11), (12), (13), (14), (15), (16), (17), (18), (19), (20);
GO

-- ======================================================
-- Insert Customers (20 rows)
-- ======================================================
INSERT INTO Customers (profileId, memberTier, rewardPoints) VALUES
(21, N'Đồng', 1200),
(22, N'Bạc', 3500),
(23, N'Vàng', 8700),
(24, N'Bạch kim', 15000),
(25, N'Đồng', 500),
(26, N'Bạc', 4200),
(27, N'Vàng', 9300),
(28, N'Bạch kim', 21000),
(29, N'Đồng', 800),
(30, N'Bạc', 2800),
(31, N'Vàng', 7600),
(32, N'Bạch kim', 18900),
(33, N'Đồng', 0),
(34, N'Đồng', 100),
(35, N'Đồng', 0),
(36, N'Bạc', 3100),
(37, N'Vàng', 8200),
(38, N'Bạch kim', 17300),
(39, N'Đồng', 650),
(40, N'Bạc', 2900);
GO

-- ======================================================
-- Insert Shops (20 rows)
-- ======================================================
INSERT INTO Shops (profileId, shopName, taxCode, businessLicense, shopDescription) VALUES
(41, N'Điện tử An Phát', N'0101234567', N'GP001', N'Chuyên bán điện thoại, laptop chính hãng'),
(42, N'TechStore Hà Nội', N'0102345678', N'GP002', N'Laptop và phụ kiện công nghệ'),
(43, N'SmartPhone Sài Gòn', N'0103456789', N'GP003', N'Điện thoại thông minh giá tốt'),
(44, N'Laptop 24/7', N'0104567890', N'GP004', N'Laptop các hãng, bảo hành uy tín'),
(45, N'Phụ kiện số Hoàng Long', N'0105678901', N'GP005', N'Phụ kiện chính hãng Apple, Samsung'),
(46, N'Điện máy Xanh', N'0106789012', N'GP006', N'Điện máy, gia dụng, công nghệ'),
(47, N'Thế giới di động', N'0107890123', N'GP007', N'Smartphone, tablet, phụ kiện'),
(48, N'FPT Shop', N'0108901234', N'GP008', N'Laptop, máy tính bảng, đồng hồ thông minh'),
(49, N'CellphoneS', N'0109012345', N'GP009', N'Điện thoại, laptop, âm thanh'),
(50, N'MediaMart', N'0110123456', N'GP010', N'Điện tử tiêu dùng, gia dụng'),
(51, N'Điện tử Phong Vũ', N'0111234567', N'GP011', N'Máy tính, linh kiện, màn hình'),
(52, N'An Khang Digital', N'0112345678', N'GP012', N'Điện thoại, laptop, đồng hồ'),
(53, N'Minh Tuấn Mobile', N'0113456789', N'GP013', N'Điện thoại cũ mới, thu mua'),
(54, N'Hoàng Hà Mobile', N'0114567890', N'GP014', N'Smartphone, phụ kiện, sửa chữa'),
(55, N'Điện tử Chợ Lớn', N'0115678901', N'GP015', N'Điện máy, công nghệ giá sỉ'),
(56, N'TechOne', N'0116789012', N'GP016', N'Máy tính, linh kiện, thiết bị văn phòng'),
(57, N'Nam Anh Computer', N'0117890123', N'GP017', N'Laptop, PC, màn hình, linh kiện'),
(58, N'Phúc Anh', N'0118901234', N'GP018', N'Laptop, máy in, thiết bị văn phòng'),
(59, N'Nguyễn Kim', N'0119012345', N'GP019', N'Điện máy, gia dụng, công nghệ'),
(60, N'Điện tử Đức Thanh', N'0120123456', N'GP020', N'Âm thanh, loa, tai nghe, micro');
GO

-- ======================================================
-- Insert Shippers (20 rows)
-- ======================================================
INSERT INTO Shippers (profileId, vehiclePlate, licenseNumber, currentStatus, hubId) VALUES
(61, N'29A-12345', N'GH001', N'Đang rảnh', 1),
(62, N'29B-23456', N'GH002', N'Đang giao hàng', 2),
(63, N'30C-34567', N'GH003', N'Nghỉ phép', 3),
(64, N'31D-45678', N'GH004', N'Đang rảnh', 4),
(65, N'32E-56789', N'GH005', N'Đang giao hàng', 5),
(66, N'33F-67890', N'GH006', N'Đang rảnh', 6),
(67, N'34G-78901', N'GH007', N'Đang giao hàng', 7),
(68, N'35H-89012', N'GH008', N'Nghỉ phép', 8),
(69, N'36I-90123', N'GH009', N'Đang rảnh', 9),
(70, N'37J-01234', N'GH010', N'Đang giao hàng', 10),
(71, N'38K-12345', N'GH011', N'Đang rảnh', 11),
(72, N'39L-23456', N'GH012', N'Đang giao hàng', 12),
(73, N'40M-34567', N'GH013', N'Đang rảnh', 13),
(74, N'41N-45678', N'GH014', N'Nghỉ phép', 14),
(75, N'42O-56789', N'GH015', N'Đang rảnh', 15),
(76, N'43P-67890', N'GH016', N'Đang giao hàng', 16),
(77, N'44Q-78901', N'GH017', N'Đang rảnh', 17),
(78, N'45R-89012', N'GH018', N'Đang giao hàng', 18),
(79, N'46S-90123', N'GH019', N'Đang rảnh', 19),
(80, N'47T-01234', N'GH020', N'Nghỉ phép', 20);
GO

-- ======================================================
-- Insert AccountRoles (80 rows)
-- ======================================================
INSERT INTO AccountRoles (accountId, roleId) VALUES
(1,1), (2,1), (3,1), (4,1), (5,1), (6,1), (7,1), (8,1), (9,1), (10,1),
(11,1), (12,1), (13,1), (14,1), (15,1), (16,1), (17,1), (18,1), (19,1), (20,1),
(21,2), (22,2), (23,2), (24,2), (25,2), (26,2), (27,2), (28,2), (29,2), (30,2),
(31,2), (32,2), (33,2), (34,2), (35,2), (36,2), (37,2), (38,2), (39,2), (40,2),
(41,3), (42,3), (43,3), (44,3), (45,3), (46,3), (47,3), (48,3), (49,3), (50,3),
(51,3), (52,3), (53,3), (54,3), (55,3), (56,3), (57,3), (58,3), (59,3), (60,3),
(61,4), (62,4), (63,4), (64,4), (65,4), (66,4), (67,4), (68,4), (69,4), (70,4),
(71,4), (72,4), (73,4), (74,4), (75,4), (76,4), (77,4), (78,4), (79,4), (80,4);
GO

-- ======================================================
-- Insert DeliveryAddresses (40 rows)
-- ======================================================
SET IDENTITY_INSERT DeliveryAddresses ON;
INSERT INTO DeliveryAddresses (addressId, customerId, receiverName, receiverPhone, addressType, provinceCity, district, wardCommune, specificAddress, isDefault) VALUES
(1, 21, N'Nguyễn Thành Đạt', N'0902000021', N'Nhà riêng', N'Hà Nội', N'Cầu Giấy', N'Dịch Vọng', N'Số 1, ngõ 12, đường Trần Kim Xuyến', 1),
(2, 21, N'Nguyễn Thành Đạt', N'0902000021', N'Văn phòng', N'Hà Nội', N'Đống Đa', N'Láng Hạ', N'Tòa nhà BIDV, tầng 5', 0),
(3, 22, N'Trần Minh Hiếu', N'0902000022', N'Nhà riêng', N'Hà Nội', N'Thanh Xuân', N'Thanh Xuân Trung', N'123 đường Nguyễn Trãi', 1),
(4, 23, N'Lê Thị Thu', N'0902000023', N'Nhà riêng', N'TP.HCM', N'Quận 1', N'Bến Nghé', N'456 đường Lê Lợi', 1),
(5, 24, N'Phạm Văn Khánh', N'0902000024', N'Nhà riêng', N'TP.HCM', N'Quận 3', N'Võ Thị Sáu', N'789 đường Võ Thị Sáu', 1),
(6, 25, N'Hoàng Thị Lan', N'0902000025', N'Nhà riêng', N'Đà Nẵng', N'Hải Châu', N'Bình Hiên', N'12 đường 2/9', 1),
(7, 26, N'Ngô Văn Minh', N'0902000026', N'Nhà riêng', N'Hà Nội', N'Ba Đình', N'Quán Thánh', N'45 đường Hoàng Diệu', 1),
(8, 27, N'Đỗ Thị Ngọc', N'0902000027', N'Nhà riêng', N'Hải Phòng', N'Ngô Quyền', N'Máy Chai', N'67 đường Lê Lai', 1),
(9, 28, N'Vũ Văn Phúc', N'0902000028', N'Nhà riêng', N'Cần Thơ', N'Ninh Kiều', N'An Khánh', N'89 đường 30/4', 1),
(10, 29, N'Bùi Thị Quyên', N'0902000029', N'Nhà riêng', N'Bình Dương', N'Thủ Dầu Một', N'Phú Cường', N'101 đường Cách Mạng Tháng 8', 1),
(11, 30, N'Lý Văn Sơn', N'0902000030', N'Nhà riêng', N'Đồng Nai', N'Biên Hòa', N'Trảng Dài', N'202 đường Phạm Văn Thuận', 1),
(12, 31, N'Dương Thị Trúc', N'0902000031', N'Nhà riêng', N'Hà Nội', N'Long Biên', N'Ngọc Lâm', N'33 đường Ngọc Lâm', 1),
(13, 32, N'Mai Văn Vũ', N'0902000032', N'Nhà riêng', N'TP.HCM', N'Quận 2', N'Thảo Điền', N'55 đường Nguyễn Hoàng', 1),
(14, 33, N'Tô Thị Xuân', N'0902000033', N'Nhà riêng', N'Hà Nội', N'Hà Đông', N'La Khê', N'77 đường Quang Trung', 1),
(15, 34, N'Trịnh Văn Ý', N'0902000034', N'Nhà riêng', N'TP.HCM', N'Quận 5', N'Phường 5', N'99 đường Trần Hưng Đạo', 1),
(16, 35, N'Đinh Thị Yến', N'0902000035', N'Nhà riêng', N'Đà Nẵng', N'Thanh Khê', N'Xuân Hà', N'111 đường Nguyễn Văn Linh', 1),
(17, 36, N'Phan Văn An', N'0902000036', N'Nhà riêng', N'Hải Phòng', N'Hồng Bàng', N'Hoàng Văn Thụ', N'222 đường Đà Nẵng', 1),
(18, 37, N'Hà Thị Bích', N'0902000037', N'Nhà riêng', N'Cần Thơ', N'Cái Răng', N'Lê Bình', N'333 đường Võ Nguyên Giáp', 1),
(19, 38, N'Lâm Văn Cần', N'0902000038', N'Nhà riêng', N'Bình Dương', N'Thuận An', N'Lái Thiêu', N'444 đường Nguyễn Chí Thanh', 1),
(20, 39, N'Cao Thị Duyên', N'0902000039', N'Nhà riêng', N'Đồng Nai', N'Long Thành', N'Tam An', N'555 đường Hùng Vương', 1),
(21, 40, N'Lương Văn Đạt', N'0902000040', N'Nhà riêng', N'Hà Nội', N'Hoàng Mai', N'Đại Kim', N'666 đường Giải Phóng', 1),
(22, 21, N'Nguyễn Thành Đạt', N'0902000021', N'Nhà riêng', N'Hà Nội', N'Cầu Giấy', N'Dịch Vọng Hậu', N'Số 2 ngõ 123 đường Trần Thái Tông', 0),
(23, 22, N'Trần Minh Hiếu', N'0902000022', N'Văn phòng', N'Hà Nội', N'Cầu Giấy', N'Dịch Vọng', N'Tòa nhà Keangnam, tầng 10', 0),
(24, 23, N'Lê Thị Thu', N'0902000023', N'Nhà riêng', N'TP.HCM', N'Quận 1', N'Đa Kao', N'777 đường Nguyễn Thị Minh Khai', 0),
(25, 24, N'Phạm Văn Khánh', N'0902000024', N'Nhà riêng', N'TP.HCM', N'Quận 10', N'Phường 12', N'888 đường 3/2', 0),
(26, 25, N'Hoàng Thị Lan', N'0902000025', N'Nhà riêng', N'Đà Nẵng', N'Sơn Trà', N'An Hải Bắc', N'999 đường Võ Nguyên Giáp', 0),
(27, 26, N'Ngô Văn Minh', N'0902000026', N'Nhà riêng', N'Hà Nội', N'Tây Hồ', N'Quảng An', N'123 đường Âu Cơ', 0),
(28, 27, N'Đỗ Thị Ngọc', N'0902000027', N'Nhà riêng', N'Hải Phòng', N'Lê Chân', N'Niệm Nghĩa', N'234 đường Lê Thánh Tông', 0),
(29, 28, N'Vũ Văn Phúc', N'0902000028', N'Nhà riêng', N'Cần Thơ', N'Bình Thủy', N'Bùi Hữu Nghĩa', N'345 đường Nguyễn Văn Cừ', 0),
(30, 29, N'Bùi Thị Quyên', N'0902000029', N'Nhà riêng', N'Bình Dương', N'Dĩ An', N'Tân Đông Hiệp', N'456 đường Mỹ Phước Tân Vạn', 0),
(31, 30, N'Lý Văn Sơn', N'0902000030', N'Nhà riêng', N'Đồng Nai', N'Long Khánh', N'Xuân Trung', N'567 đường 27/4', 0),
(32, 31, N'Dương Thị Trúc', N'0902000031', N'Nhà riêng', N'Hà Nội', N'Bắc Từ Liêm', N'Phú Diễn', N'678 đường Phạm Văn Đồng', 0),
(33, 32, N'Mai Văn Vũ', N'0902000032', N'Nhà riêng', N'TP.HCM', N'Quận 7', N'Tân Phong', N'789 đường Nguyễn Thị Thập', 0),
(34, 33, N'Tô Thị Xuân', N'0902000033', N'Nhà riêng', N'Hà Nội', N'Nam Từ Liêm', N'Mỹ Đình 2', N'890 đường Lê Đức Thọ', 0),
(35, 34, N'Trịnh Văn Ý', N'0902000034', N'Nhà riêng', N'TP.HCM', N'Quận 12', N'Thạnh Xuân', N'901 đường Nguyễn Ảnh Thủ', 0),
(36, 35, N'Đinh Thị Yến', N'0902000035', N'Nhà riêng', N'Đà Nẵng', N'Ngũ Hành Sơn', N'Mỹ An', N'123 đường Trần Hưng Đạo', 0),
(37, 36, N'Phan Văn An', N'0902000036', N'Nhà riêng', N'Hải Phòng', N'Dương Kinh', N'Hưng Đạo', N'234 đường Phạm Văn Đồng', 0),
(38, 37, N'Hà Thị Bích', N'0902000037', N'Nhà riêng', N'Cần Thơ', N'Ô Môn', N'Châu Văn Liêm', N'345 đường Cách Mạng Tháng 8', 0),
(39, 38, N'Lâm Văn Cần', N'0902000038', N'Nhà riêng', N'Bình Dương', N'Bến Cát', N'Mỹ Phước', N'456 đường ĐT741', 0),
(40, 39, N'Cao Thị Duyên', N'0902000039', N'Nhà riêng', N'Đồng Nai', N'Nhơn Trạch', N'Phú Hội', N'567 đường Nguyễn Văn Cừ', 0);
SET IDENTITY_INSERT DeliveryAddresses OFF;
GO

-- ======================================================
-- Insert PaymentAccounts (40 rows)
-- ======================================================
SET IDENTITY_INSERT PaymentAccounts ON;
INSERT INTO PaymentAccounts (bankAccountId, accountId, bankName, accountNumber, accountHolder) VALUES
(1, 1, N'Vietcombank', N'1010101011', N'Nguyễn Văn An'),
(2, 2, N'Techcombank', N'1020202022', N'Trần Thị Bình'),
(3, 3, N'BIDV', N'1030303033', N'Lê Văn Cường'),
(4, 4, N'VietinBank', N'1040404044', N'Phạm Thị Dung'),
(5, 5, N'MB Bank', N'1050505055', N'Hoàng Văn Em'),
(6, 6, N'ACB', N'1060606066', N'Ngô Thị Phương'),
(7, 7, N'Sacombank', N'1070707077', N'Đỗ Văn Giàu'),
(8, 8, N'VPBank', N'1080808088', N'Vũ Thị Hạnh'),
(9, 9, N'TPBank', N'1090909099', N'Bùi Văn Inh'),
(10, 10, N'OCB', N'1101010100', N'Lý Thị Kim'),
(11, 11, N'Vietcombank', N'1111111111', N'Dương Văn Long'),
(12, 12, N'Techcombank', N'1121212122', N'Mai Thị Mai'),
(13, 13, N'BIDV', N'1131313133', N'Tô Văn Nhã'),
(14, 14, N'VietinBank', N'1141414144', N'Trịnh Thị Oanh'),
(15, 15, N'MB Bank', N'1151515155', N'Đinh Văn Phú'),
(16, 16, N'ACB', N'1161616166', N'Phan Thị Quỳnh'),
(17, 17, N'Sacombank', N'1171717177', N'Hà Văn Sang'),
(18, 18, N'VPBank', N'1181818188', N'Lâm Thị Trang'),
(19, 19, N'TPBank', N'1191919199', N'Cao Văn Út'),
(20, 20, N'OCB', N'1202020200', N'Lương Thị Vân'),
(21, 21, N'Vietcombank', N'1212121211', N'Nguyễn Thành Đạt'),
(22, 22, N'Techcombank', N'1222222222', N'Trần Minh Hiếu'),
(23, 23, N'BIDV', N'1232323233', N'Lê Thị Thu'),
(24, 24, N'VietinBank', N'1242424244', N'Phạm Văn Khánh'),
(25, 25, N'MB Bank', N'1252525255', N'Hoàng Thị Lan'),
(26, 26, N'ACB', N'1262626266', N'Ngô Văn Minh'),
(27, 27, N'Sacombank', N'1272727277', N'Đỗ Thị Ngọc'),
(28, 28, N'VPBank', N'1282828288', N'Vũ Văn Phúc'),
(29, 29, N'TPBank', N'1292929299', N'Bùi Thị Quyên'),
(30, 30, N'OCB', N'1303030300', N'Lý Văn Sơn'),
(31, 31, N'Vietcombank', N'1313131311', N'Dương Thị Trúc'),
(32, 32, N'Techcombank', N'1323232322', N'Mai Văn Vũ'),
(33, 33, N'BIDV', N'1333333333', N'Tô Thị Xuân'),
(34, 34, N'VietinBank', N'1343434344', N'Trịnh Văn Ý'),
(35, 35, N'MB Bank', N'1353535355', N'Đinh Thị Yến'),
(36, 36, N'ACB', N'1363636366', N'Phan Văn An'),
(37, 37, N'Sacombank', N'1373737377', N'Hà Thị Bích'),
(38, 38, N'VPBank', N'1383838388', N'Lâm Văn Cần'),
(39, 39, N'TPBank', N'1393939399', N'Cao Thị Duyên'),
(40, 40, N'OCB', N'1404040400', N'Lương Văn Đạt');
SET IDENTITY_INSERT PaymentAccounts OFF;
GO

-- ======================================================
-- Insert Categories (20 rows)
-- ======================================================
SET IDENTITY_INSERT Categories ON;
INSERT INTO Categories (categoryId, categoryName, categoryDescription) VALUES
(1, N'Điện thoại thông minh', N'Smartphone các hãng'),
(2, N'Laptop', N'Máy tính xách tay'),
(3, N'Máy tính bảng', N'Tablet'),
(4, N'Đồng hồ thông minh', N'Smartwatch'),
(5, N'Tai nghe', N'Tai nghe có dây, không dây'),
(6, N'Loa', N'Loa bluetooth, loa kéo'),
(7, N'Phụ kiện điện thoại', N'Ốp lưng, cường lực, sạc dự phòng'),
(8, N'Phụ kiện laptop', N'Chuột, bàn phím, túi chống sốc'),
(9, N'Màn hình', N'Màn hình máy tính'),
(10, N'Máy in', N'Máy in laser, phun màu'),
(11, N'Thiết bị mạng', N'Router, switch, modem'),
(12, N'Camera giám sát', N'Camera an ninh'),
(13, N'Máy chơi game', N'Console, tay cầm'),
(14, N'Linh kiện máy tính', N'CPU, RAM, ổ cứng, mainboard'),
(15, N'Thiết bị lưu trữ', N'USB, thẻ nhớ, ổ cứng di động'),
(16, N'Thiết bị âm thanh', N'Micro, amply, cục đẩy'),
(17, N'Điện gia dụng', N'Nồi cơm, lò vi sóng, máy lọc không khí'),
(18, N'Thiết bị nhà thông minh', N'Đèn, cảm biến, ổ cắm thông minh'),
(19, N'Sạc pin', N'Sạc không dây, củ sạc nhanh'),
(20, N'Dây cáp', N'Cáp sạc, cáp chuyển đổi');
SET IDENTITY_INSERT Categories OFF;
GO

-- ======================================================
-- Insert Brands (20 rows)
-- ======================================================
SET IDENTITY_INSERT Brands ON;
INSERT INTO Brands (brandId, brandName) VALUES
(1, N'Apple'),
(2, N'Samsung'),
(3, N'Xiaomi'),
(4, N'Oppo'),
(5, N'Vivo'),
(6, N'Huawei'),
(7, N'Dell'),
(8, N'HP'),
(9, N'Lenovo'),
(10, N'Asus'),
(11, N'Acer'),
(12, N'MSI'),
(13, N'LG'),
(14, N'Sony'),
(15, N'JBL'),
(16, N'Logitech'),
(17, N'Kingston'),
(18, N'Sandisk'),
(19, N'Canon'),
(20, N'Epson');
SET IDENTITY_INSERT Brands OFF;
GO

-- ======================================================
-- Insert Products (40 rows)
-- ======================================================
SET IDENTITY_INSERT Products ON;
INSERT INTO Products (productId, productName, productDescription, productImageUrl, categoryId, brandId, shopId) VALUES
(1, N'iPhone 14 Pro Max 256GB', N'Điện thoại Apple chính hãng, màu tím', N'https://example.com/iphone14pm.jpg', 1, 1, 41),
(2, N'Samsung Galaxy S23 Ultra', N'Điện thoại Samsung flagship, camera 200MP', N'https://example.com/s23u.jpg', 1, 2, 41),
(3, N'Xiaomi 13 Pro', N'Điện thoại Xiaomi cao cấp', N'https://example.com/xiaomi13pro.jpg', 1, 3, 42),
(4, N'Oppo Find N2 Flip', N'Điện thoại gập Oppo', N'https://example.com/oppofindn2.jpg', 1, 4, 42),
(5, N'MacBook Pro 14 M2', N'Laptop Apple M2 Pro, 16GB RAM', N'https://example.com/mbp14.jpg', 2, 1, 43),
(6, N'Dell XPS 13 Plus', N'Laptop Dell mỏng nhẹ, cấu hình mạnh', N'https://example.com/xps13.jpg', 2, 7, 43),
(7, N'HP Spectre x360', N'Laptop HP 2 trong 1, cảm ứng', N'https://example.com/spectre.jpg', 2, 8, 44),
(8, N'Lenovo Legion 5 Pro', N'Laptop gaming Legion', N'https://example.com/legion5pro.jpg', 2, 9, 44),
(9, N'iPad Pro 12.9 M2', N'Máy tính bảng Apple, màn hình Liquid Retina', N'https://example.com/ipadpro.jpg', 3, 1, 45),
(10, N'Samsung Tab S9 Ultra', N'Máy tính bảng Samsung, màn hình lớn', N'https://example.com/tabs9u.jpg', 3, 2, 45),
(11, N'Apple Watch Series 8', N'Đồng hồ thông minh Apple', N'https://example.com/aw8.jpg', 4, 1, 46),
(12, N'Samsung Galaxy Watch 5', N'Đồng hồ thông minh Samsung', N'https://example.com/gw5.jpg', 4, 2, 46),
(13, N'AirPods Pro 2', N'Tai nghe không dây Apple', N'https://example.com/airpodspro2.jpg', 5, 1, 47),
(14, N'Samsung Galaxy Buds2 Pro', N'Tai nghe không dây Samsung', N'https://example.com/buds2pro.jpg', 5, 2, 47),
(15, N'JBL Charge 5', N'Loa Bluetooth JBL', N'https://example.com/jblcharge5.jpg', 6, 15, 48),
(16, N'Sony SRS-XB43', N'Loa Bluetooth Sony', N'https://example.com/sonyxb43.jpg', 6, 14, 48),
(17, N'Ốp lưng iPhone 14', N'Ốp lưng silicon chính hãng', N'https://example.com/oplung.jpg', 7, 1, 49),
(18, N'Cường lực Samsung S23', N'Kính cường lực cao cấp', N'https://example.com/cuongluc.jpg', 7, 2, 49),
(19, N'Chuột Logitech MX Master 3S', N'Chuột không dây cao cấp', N'https://example.com/mxmaster3s.jpg', 8, 16, 50),
(20, N'Bàn phím cơ Keychron K2', N'Bàn phím cơ không dây', N'https://example.com/keychronk2.jpg', 8, 16, 50),
(21, N'Màn hình Dell UltraSharp U2723QE', N'Màn hình 4K 27 inch', N'https://example.com/dellu2723qe.jpg', 9, 7, 51),
(22, N'Màn hình LG 27UP850N', N'Màn hình 4K LG', N'https://example.com/lg27up850n.jpg', 9, 13, 51),
(23, N'Máy in Canon Pixma G6020', N'Máy in phun màu đa năng', N'https://example.com/canong6020.jpg', 10, 19, 52),
(24, N'Máy in Epson L3150', N'Máy in phun màu wifi', N'https://example.com/epsonl3150.jpg', 10, 20, 52),
(25, N'Router Asus RT-AX86U', N'Router wifi 6 chơi game', N'https://example.com/ax86u.jpg', 11, 10, 53),
(26, N'Router TP-Link Archer AX73', N'Router wifi 6', N'https://example.com/archer.jpg', 11, 13, 53),
(27, N'Camera EZVIZ C6N', N'Camera xoay 360 độ', N'https://example.com/ezvizc6n.jpg', 12, 6, 54),
(28, N'Camera Xiaomi 360', N'Camera thông minh Xiaomi', N'https://example.com/xiaomicamera.jpg', 12, 3, 54),
(29, N'PlayStation 5', N'Máy chơi game Sony PS5', N'https://example.com/ps5.jpg', 13, 14, 55),
(30, N'Xbox Series X', N'Máy chơi game Microsoft', N'https://example.com/xbox.jpg', 13, 14, 55),
(31, N'Tay cầm PS5 DualSense', N'Tay cầm không dây', N'https://example.com/dualsense.jpg', 13, 14, 56),
(32, N'RAM Kingston Fury 32GB DDR5', N'RAM máy tính', N'https://example.com/kingstonfury.jpg', 14, 17, 56),
(33, N'Ổ cứng SSD Samsung 980 Pro 1TB', N'SSD NVMe cao cấp', N'https://example.com/samsung980.jpg', 14, 2, 57),
(34, N'USB SanDisk 64GB 3.0', N'USB 3.0', N'https://example.com/sandisk64.jpg', 15, 18, 57),
(35, N'Micro Shure SM7B', N'Micro thu âm chuyên nghiệp', N'https://example.com/shuresm7b.jpg', 16, 14, 58),
(36, N'Nồi cơm điện Cuckoo', N'Nồi cơm điện cao tần', N'https://example.com/cuckoo.jpg', 17, 13, 58),
(37, N'Bóng đèn thông minh Philips Hue', N'Đèn LED thông minh', N'https://example.com/philipshue.jpg', 18, 13, 59),
(38, N'Sạc không dây Anker', N'Sạc không dây 15W', N'https://example.com/ankerwireless.jpg', 19, 16, 59),
(39, N'Cáp sạc Anker 2m', N'Cáp sạc bền bỉ', N'https://example.com/ankercable.jpg', 20, 16, 60),
(40, N'Cáp chuyển USB-C to HDMI', N'Cáp chuyển đổi', N'https://example.com/usbchdmi.jpg', 20, 17, 60);
SET IDENTITY_INSERT Products OFF;
GO

-- ======================================================
-- Insert Attributes (10 rows)
-- ======================================================
SET IDENTITY_INSERT Attributes ON;
INSERT INTO Attributes (attributeId, attributeName) VALUES
(1, N'Màu sắc'),
(2, N'Dung lượng'),
(3, N'RAM'),
(4, N'Kích thước màn hình'),
(5, N'CPU'),
(6, N'Ổ cứng'),
(7, N'Pin'),
(8, N'Bluetooth'),
(9, N'Kết nối'),
(10, N'Trọng lượng');
SET IDENTITY_INSERT Attributes OFF;
GO

-- ======================================================
-- Insert Variants (80 rows)
-- ======================================================
SET IDENTITY_INSERT Variants ON;
INSERT INTO Variants (variantId, SKU, sellPrice, costPrice, status, imageUrl, unit, productId) VALUES
(1, 'IP14PM-256-TIM', 34990000, 30000000, N'Đang bán', NULL, N'cái', 1),
(2, 'IP14PM-256-VANG', 34990000, 30000000, N'Đang bán', NULL, N'cái', 1),
(3, 'IP14PM-256-DEN', 34990000, 30000000, N'Đang bán', NULL, N'cái', 1),
(4, 'S23U-256-GREEN', 26990000, 24000000, N'Đang bán', NULL, N'cái', 2),
(5, 'S23U-256-BLACK', 26990000, 24000000, N'Đang bán', NULL, N'cái', 2),
(6, 'S23U-512-BLACK', 30990000, 27000000, N'Đang bán', NULL, N'cái', 2),
(7, 'X13P-256-BLACK', 18990000, 16000000, N'Đang bán', NULL, N'cái', 3),
(8, 'X13P-512-BLACK', 20990000, 18000000, N'Đang bán', NULL, N'cái', 3),
(9, 'OP-FINDN2-BLACK', 22990000, 20000000, N'Đang bán', NULL, N'cái', 4),
(10, 'OP-FINDN2-PURPLE', 22990000, 20000000, N'Đang bán', NULL, N'cái', 4),
(11, 'MBP14-M2-16-512', 52990000, 48000000, N'Đang bán', NULL, N'cái', 5),
(12, 'MBP14-M2-16-1T', 58990000, 53000000, N'Đang bán', NULL, N'cái', 5),
(13, 'DELL-XPS13-I7-16-512', 36990000, 32000000, N'Đang bán', NULL, N'cái', 6),
(14, 'DELL-XPS13-I7-32-1T', 42990000, 38000000, N'Đang bán', NULL, N'cái', 6),
(15, 'HP-SPECTRE-I7-16-512', 32990000, 29000000, N'Đang bán', NULL, N'cái', 7),
(16, 'HP-SPECTRE-I7-16-1T', 35990000, 32000000, N'Đang bán', NULL, N'cái', 7),
(17, 'LEN-LEGION5-I7-16-512', 28990000, 25000000, N'Đang bán', NULL, N'cái', 8),
(18, 'LEN-LEGION5-I7-32-1T', 32990000, 29000000, N'Đang bán', NULL, N'cái', 8),
(19, 'IPADPRO-128-WIFI', 27990000, 24000000, N'Đang bán', NULL, N'cái', 9),
(20, 'IPADPRO-256-WIFI', 30990000, 27000000, N'Đang bán', NULL, N'cái', 9),
(21, 'TABS9U-256', 23990000, 21000000, N'Đang bán', NULL, N'cái', 10),
(22, 'TABS9U-512', 27990000, 24000000, N'Đang bán', NULL, N'cái', 10),
(23, 'AW8-41-GPS', 10990000, 9000000, N'Đang bán', NULL, N'cái', 11),
(24, 'AW8-45-GPS', 11990000, 10000000, N'Đang bán', NULL, N'cái', 11),
(25, 'GW5-40-BT', 6990000, 6000000, N'Đang bán', NULL, N'cái', 12),
(26, 'GW5-44-BT', 7990000, 7000000, N'Đang bán', NULL, N'cái', 12),
(27, 'APP2-WHITE', 5990000, 5000000, N'Đang bán', NULL, N'cái', 13),
(28, 'APP2-BLACK', 5990000, 5000000, N'Đang bán', NULL, N'cái', 13),
(29, 'BUDS2P-BORA', 3990000, 3300000, N'Đang bán', NULL, N'cái', 14),
(30, 'BUDS2P-BLACK', 3990000, 3300000, N'Đang bán', NULL, N'cái', 14),
(31, 'JBL-C5-BLUE', 2990000, 2500000, N'Đang bán', NULL, N'cái', 15),
(32, 'JBL-C5-BLACK', 2990000, 2500000, N'Đang bán', NULL, N'cái', 15),
(33, 'SONY-XB43-BLUE', 3490000, 3000000, N'Đang bán', NULL, N'cái', 16),
(34, 'SONY-XB43-BLACK', 3490000, 3000000, N'Đang bán', NULL, N'cái', 16),
(35, 'OPLUNG-IP14-TIM', 299000, 200000, N'Đang bán', NULL, N'cái', 17),
(36, 'OPLUNG-IP14-DEN', 299000, 200000, N'Đang bán', NULL, N'cái', 17),
(37, 'CUONGLUC-S23', 199000, 120000, N'Đang bán', NULL, N'cái', 18),
(38, 'CUONGLUC-S23U', 249000, 150000, N'Đang bán', NULL, N'cái', 18),
(39, 'MX3S-GREY', 2490000, 2000000, N'Đang bán', NULL, N'cái', 19),
(40, 'MX3S-BLACK', 2490000, 2000000, N'Đang bán', NULL, N'cái', 19),
(41, 'KEYCHRON-K2-RGB', 1890000, 1500000, N'Đang bán', NULL, N'cái', 20),
(42, 'KEYCHRON-K2-WHITE', 1790000, 1400000, N'Đang bán', NULL, N'cái', 20),
(43, 'DELL-U2723QE', 12990000, 11000000, N'Đang bán', NULL, N'cái', 21),
(44, 'LG-27UP850N', 9990000, 8500000, N'Đang bán', NULL, N'cái', 22),
(45, 'CANON-G6020', 7990000, 6800000, N'Đang bán', NULL, N'cái', 23),
(46, 'EPSON-L3150', 5490000, 4600000, N'Đang bán', NULL, N'cái', 24),
(47, 'ASUS-AX86U', 4990000, 4200000, N'Đang bán', NULL, N'cái', 25),
(48, 'TPLINK-AX73', 2990000, 2500000, N'Đang bán', NULL, N'cái', 26),
(49, 'EZVIZ-C6N', 1890000, 1500000, N'Đang bán', NULL, N'cái', 27),
(50, 'XIAOMI-360', 1290000, 1000000, N'Đang bán', NULL, N'cái', 28),
(51, 'PS5-DISC', 14990000, 13000000, N'Đang bán', NULL, N'cái', 29),
(52, 'PS5-DIGITAL', 11990000, 10000000, N'Đang bán', NULL, N'cái', 29),
(53, 'XBOX-SERIESX', 12990000, 11000000, N'Đang bán', NULL, N'cái', 30),
(54, 'DUALSENSE-WHITE', 1890000, 1500000, N'Đang bán', NULL, N'cái', 31),
(55, 'DUALSENSE-BLACK', 1890000, 1500000, N'Đang bán', NULL, N'cái', 31),
(56, 'KINGSTON-32GB-DDR5', 3990000, 3300000, N'Đang bán', NULL, N'cái', 32),
(57, 'SSD-SAMSUNG-1TB', 3290000, 2800000, N'Đang bán', NULL, N'cái', 33),
(58, 'USB-SANDISK-64G', 299000, 220000, N'Đang bán', NULL, N'cái', 34),
(59, 'SHURE-SM7B', 10990000, 9500000, N'Đang bán', NULL, N'cái', 35),
(60, 'CUCKOO-CR-0632', 4990000, 4200000, N'Đang bán', NULL, N'cái', 36),
(61, 'PHILIPS-HUE-COLOR', 1290000, 1000000, N'Đang bán', NULL, N'cái', 37),
(62, 'ANKER-WIRELESS-PAD', 890000, 700000, N'Đang bán', NULL, N'cái', 38),
(63, 'ANKER-CABLE-2M', 290000, 200000, N'Đang bán', NULL, N'cái', 39),
(64, 'CABLE-USBC-HDMI', 350000, 250000, N'Đang bán', NULL, N'cái', 40),
(65, 'IP14PM-512-TIM', 38990000, 34000000, N'Đang bán', NULL, N'cái', 1),
(66, 'S23U-1TB-BLACK', 35990000, 32000000, N'Đang bán', NULL, N'cái', 2),
(67, 'X13P-512-BLUE', 20990000, 18000000, N'Đang bán', NULL, N'cái', 3),
(68, 'MBP14-M2-32-1T', 65990000, 60000000, N'Đang bán', NULL, N'cái', 5),
(69, 'DELL-XPS13-I9-32-2T', 49990000, 44000000, N'Đang bán', NULL, N'cái', 6),
(70, 'IPADPRO-512-WIFI', 35990000, 31000000, N'Đang bán', NULL, N'cái', 9),
(71, 'TABS9U-1TB', 32990000, 29000000, N'Đang bán', NULL, N'cái', 10),
(72, 'AW8-45-CELL', 13990000, 12000000, N'Đang bán', NULL, N'cái', 11),
(73, 'GW5-44-LTE', 8990000, 7800000, N'Đang bán', NULL, N'cái', 12),
(74, 'JBL-C5-RED', 2990000, 2500000, N'Đang bán', NULL, N'cái', 15),
(75, 'SONY-XB43-RED', 3490000, 3000000, N'Đang bán', NULL, N'cái', 16),
(76, 'MX3S-WHITE', 2490000, 2000000, N'Đang bán', NULL, N'cái', 19),
(77, 'KEYCHRON-K2-BLUE', 1890000, 1500000, N'Đang bán', NULL, N'cái', 20),
(78, 'DELL-U4323QE', 18990000, 16000000, N'Đang bán', NULL, N'cái', 21),
(79, 'LG-32UN880', 14990000, 13000000, N'Đang bán', NULL, N'cái', 22),
(80, 'ANKER-CABLE-1M', 190000, 130000, N'Đang bán', NULL, N'cái', 39);
SET IDENTITY_INSERT Variants OFF;
GO

-- ======================================================
-- Insert VariantAttributes (many rows)
-- ======================================================
INSERT INTO VariantAttributes (variantId, attributeId, attributeValue) VALUES
(1, 1, N'Tím'), (1, 2, N'256GB'),
(2, 1, N'Vàng'), (2, 2, N'256GB'),
(3, 1, N'Đen'), (3, 2, N'256GB'),
(4, 1, N'Xanh lá'), (4, 2, N'256GB'),
(5, 1, N'Đen'), (5, 2, N'256GB'),
(6, 1, N'Đen'), (6, 2, N'512GB'),
(7, 1, N'Đen'), (7, 2, N'256GB'),
(8, 1, N'Đen'), (8, 2, N'512GB'),
(9, 1, N'Đen'), (9, 2, N'256GB'),
(10, 1, N'Tím'), (10, 2, N'256GB'),
(11, 3, N'16GB'), (11, 6, N'512GB'),
(12, 3, N'16GB'), (12, 6, N'1TB'),
(13, 3, N'16GB'), (13, 6, N'512GB'), (13, 5, N'i7'),
(14, 3, N'32GB'), (14, 6, N'1TB'), (14, 5, N'i7'),
(15, 3, N'16GB'), (15, 6, N'512GB'), (15, 5, N'i7'),
(16, 3, N'16GB'), (16, 6, N'1TB'), (16, 5, N'i7'),
(17, 3, N'16GB'), (17, 6, N'512GB'), (17, 5, N'i7'),
(18, 3, N'32GB'), (18, 6, N'1TB'), (18, 5, N'i7'),
(19, 2, N'128GB'), (19, 4, N'12.9 inch'),
(20, 2, N'256GB'), (20, 4, N'12.9 inch'),
(21, 2, N'256GB'), (21, 4, N'14.6 inch'),
(22, 2, N'512GB'), (22, 4, N'14.6 inch'),
(23, 4, N'41mm'), (23, 8, N'GPS'),
(24, 4, N'45mm'), (24, 8, N'GPS'),
(25, 4, N'40mm'), (25, 8, N'Bluetooth'),
(26, 4, N'44mm'), (26, 8, N'Bluetooth'),
(27, 1, N'Trắng'), (27, 8, N'Bluetooth'),
(28, 1, N'Đen'), (28, 8, N'Bluetooth'),
(29, 1, N'Bora tím'), (29, 8, N'Bluetooth'),
(30, 1, N'Đen'), (30, 8, N'Bluetooth'),
(31, 1, N'Xanh'), (31, 8, N'Bluetooth'),
(32, 1, N'Đen'), (32, 8, N'Bluetooth'),
(33, 1, N'Xanh'), (33, 8, N'Bluetooth'),
(34, 1, N'Đen'), (34, 8, N'Bluetooth'),
(35, 1, N'Tím'), (35, 2, N'iPhone 14 Pro Max'),
(36, 1, N'Đen'), (36, 2, N'iPhone 14 Pro Max'),
(37, 1, N'Trong suốt'), (37, 2, N'S23'),
(38, 1, N'Trong suốt'), (38, 2, N'S23 Ultra'),
(39, 1, N'Xám'), (39, 9, N'USB Unifying'),
(40, 1, N'Đen'), (40, 9, N'USB Unifying'),
(41, 1, N'RGB'), (41, 9, N'Bluetooth/USB'),
(42, 1, N'Trắng'), (42, 9, N'Bluetooth/USB'),
(43, 4, N'27 inch'), (43, 9, N'HDMI/DP/USB-C'),
(44, 4, N'27 inch'), (44, 9, N'HDMI/DP/USB-C'),
(45, 9, N'Wifi, USB'), (45, 10, N'8kg'),
(46, 9, N'Wifi, USB'), (46, 10, N'5kg'),
(47, 8, N'Wifi 6'), (47, 9, N'Gigabit LAN'),
(48, 8, N'Wifi 6'), (48, 9, N'Gigabit LAN'),
(49, 9, N'Wifi'), (49, 4, N'2K'),
(50, 9, N'Wifi'), (50, 4, N'1080p'),
(51, 2, N'825GB'), (51, 9, N'HDMI, USB'),
(52, 2, N'825GB'), (52, 9, N'HDMI, USB (digital)'),
(53, 2, N'1TB'), (53, 9, N'HDMI, USB'),
(54, 1, N'Trắng'), (54, 9, N'Bluetooth'),
(55, 1, N'Đen'), (55, 9, N'Bluetooth'),
(56, 3, N'32GB'), (56, 6, N'DDR5'),
(57, 2, N'1TB'), (57, 6, N'NVMe'),
(58, 2, N'64GB'), (58, 9, N'USB 3.0'),
(59, 9, N'XLR'), (59, 10, N'1kg'),
(60, 2, N'1.8L'), (60, 7, N'Điện'),
(61, 1, N'Trắng'), (61, 9, N'Zigbee'),
(62, 9, N'Qi'), (62, 7, N'15W'),
(63, 9, N'Lightning'), (63, 10, N'2m'),
(64, 9, N'USB-C to HDMI'), (64, 10, N'1.5m'),
(65, 1, N'Tím'), (65, 2, N'512GB'),
(66, 1, N'Đen'), (66, 2, N'1TB'),
(67, 1, N'Xanh'), (67, 2, N'512GB'),
(68, 3, N'32GB'), (68, 6, N'1TB'),
(69, 3, N'32GB'), (69, 6, N'2TB'), (69, 5, N'i9'),
(70, 2, N'512GB'), (70, 4, N'12.9 inch'),
(71, 2, N'1TB'), (71, 4, N'14.6 inch'),
(72, 4, N'45mm'), (72, 8, N'GPS + Cellular'),
(73, 4, N'44mm'), (73, 8, N'LTE'),
(74, 1, N'Đỏ'), (74, 8, N'Bluetooth'),
(75, 1, N'Đỏ'), (75, 8, N'Bluetooth'),
(76, 1, N'Trắng'), (76, 9, N'USB Unifying'),
(77, 1, N'Xanh'), (77, 9, N'Bluetooth/USB'),
(78, 4, N'43 inch'), (78, 9, N'HDMI/DP/USB-C'),
(79, 4, N'32 inch'), (79, 9, N'HDMI/DP/USB-C'),
(80, 9, N'USB-C to Lightning'), (80, 10, N'1m');
GO

-- ======================================================
-- Insert Warehouses (20 rows)
-- ======================================================
SET IDENTITY_INSERT Warehouses ON;
INSERT INTO Warehouses (warehouseId, warehouseName, warehouseAddress, shopId) VALUES
(1, N'Kho An Phát - Hà Nội', N'KCN Bắc Thăng Long, Hà Nội', 41),
(2, N'Kho An Phát - HCM', N'KCN Tân Bình, TP.HCM', 41),
(3, N'Kho TechStore - Hà Nội', N'KCN Quang Minh, Hà Nội', 42),
(4, N'Kho SmartPhone Sài Gòn', N'KCN Tân Tạo, TP.HCM', 43),
(5, N'Kho Laptop 24/7', N'KCN Hòa Khánh, Đà Nẵng', 44),
(6, N'Kho Phụ kiện Hoàng Long', N'KCN Biên Hòa, Đồng Nai', 45),
(7, N'Kho Điện máy Xanh', N'KCN Vĩnh Lộc, TP.HCM', 46),
(8, N'Kho Thế giới di động', N'KCN Yên Phong, Bắc Ninh', 47),
(9, N'Kho FPT Shop', N'KCN Thạch Thất, Hà Nội', 48),
(10, N'Kho CellphoneS', N'KCN Tân Phú Trung, TP.HCM', 49),
(11, N'Kho MediaMart', N'KCN Đà Nẵng, Đà Nẵng', 50),
(12, N'Kho Điện tử Phong Vũ', N'KCN Sóng Thần, Bình Dương', 51),
(13, N'Kho An Khang Digital', N'KCN Long Bình, Đồng Nai', 52),
(14, N'Kho Minh Tuấn Mobile', N'KCN Tiên Sơn, Bắc Ninh', 53),
(15, N'Kho Hoàng Hà Mobile', N'KCN Quế Võ, Bắc Ninh', 54),
(16, N'Kho Điện tử Chợ Lớn', N'KCN Tân Tạo, TP.HCM', 55),
(17, N'Kho TechOne', N'KCN Hà Nội, Hà Nội', 56),
(18, N'Kho Nam Anh Computer', N'KCN Hòa Cầm, Đà Nẵng', 57),
(19, N'Kho Phúc Anh', N'KCN Bình Dương, Bình Dương', 58),
(20, N'Kho Nguyễn Kim', N'KCN Cát Lái, TP.HCM', 59);
SET IDENTITY_INSERT Warehouses OFF;
GO

-- ======================================================
-- Insert WarehouseVariant (many rows, at least 20)
-- ======================================================
INSERT INTO WarehouseVariant (warehouseId, variantId, quantity) VALUES
(1,1,50), (1,2,30), (1,3,40), (1,4,25), (1,5,35),
(2,6,20), (2,7,15), (2,8,18), (2,9,22), (2,10,12),
(3,11,10), (3,12,8), (3,13,14), (3,14,9), (3,15,16),
(4,16,7), (4,17,11), (4,18,13), (4,19,19), (4,20,21),
(5,21,5), (5,22,6), (5,23,24), (5,24,17), (5,25,28),
(6,26,32), (6,27,44), (6,28,23), (6,29,37), (6,30,41),
(7,31,29), (7,32,33), (7,33,27), (7,34,31), (7,35,26),
(8,36,38), (8,37,42), (8,38,39), (8,39,45), (8,40,48),
(9,41,52), (9,42,49), (9,43,53), (9,44,55), (9,45,47),
(10,46,51), (10,47,56), (10,48,58), (10,49,60), (10,50,62),
(11,51,64), (11,52,61), (11,53,63), (11,54,65), (11,55,67),
(12,56,66), (12,57,68), (12,58,70), (12,59,69), (12,60,71),
(13,61,72), (13,62,74), (13,63,73), (13,64,75), (13,65,77),
(14,66,76), (14,67,78), (14,68,80), (14,69,79), (14,70,81),
(15,71,82), (15,72,84), (15,73,83), (15,74,85), (15,75,87),
(16,76,86), (16,77,88), (16,78,90), (16,79,89), (16,80,91),
(17,1,100), (17,5,95), (17,10,88), (17,15,77), (17,20,66),
(18,25,55), (18,30,44), (18,35,33), (18,40,22), (18,45,11),
(19,50,23), (19,55,34), (19,60,45), (19,65,56), (19,70,67),
(20,75,78), (20,80,89), (20,4,92), (20,9,81), (20,14,70);
GO

-- ======================================================
-- Insert Vouchers (20 rows)
-- ======================================================
SET IDENTITY_INSERT Vouchers ON;
INSERT INTO Vouchers (voucherId, voucherName, voucherCode, description, startAt, endAt, createdAt, uses, maxUses, applyFor, minimumPrice, type) VALUES
(1, N'Giảm 10% đơn hàng', N'SAVE10', N'Giảm 10% tối đa 100k', '2024-01-01', '2024-12-31', GETDATE(), 150, 1000, N'product', 500000, N'Percentage'),
(2, N'Giảm 50k cho đơn từ 500k', N'GIAM50K', N'Giảm 50k', '2024-01-01', '2024-06-30', GETDATE(), 80, 500, N'product', 500000, N'Amount'),
(3, N'Miễn phí vận chuyển', N'FREESHIP', N'Miễn phí ship tối đa 30k', '2024-02-01', '2024-05-01', GETDATE(), 200, 2000, N'shipment', 200000, N'Amount'),
(4, N'Giảm 15% đơn hàng', N'SAVE15', N'Giảm 15% tối đa 150k', '2024-03-01', '2024-08-31', GETDATE(), 45, 300, N'product', 800000, N'Percentage'),
(5, N'Giảm 100k đơn từ 1 triệu', N'GIAM100K', N'Giảm 100k', '2024-04-01', '2024-07-31', GETDATE(), 120, 600, N'product', 1000000, N'Amount'),
(6, N'Giảm 5% đơn hàng', N'SAVE5', N'Giảm 5% tối đa 50k', '2024-01-15', '2024-03-15', GETDATE(), 300, 1000, N'product', 300000, N'Percentage'),
(7, N'Giảm 200k đơn từ 2 triệu', N'GIAM200K', N'Giảm 200k', '2024-05-01', '2024-08-01', GETDATE(), 60, 200, N'product', 2000000, N'Amount'),
(8, N'Giảm 20% đơn hàng', N'SAVE20', N'Giảm 20% tối đa 200k', '2024-06-01', '2024-09-30', GETDATE(), 25, 100, N'product', 1000000, N'Percentage'),
(9, N'Miễn phí vận chuyển 50k', N'FREESHIP50', N'Miễn phí ship tối đa 50k', '2024-07-01', '2024-10-01', GETDATE(), 90, 500, N'shipment', 300000, N'Amount'),
(10, N'Giảm 30k cho đơn từ 300k', N'GIAM30K', N'Giảm 30k', '2024-08-01', '2024-11-30', GETDATE(), 400, 2000, N'product', 300000, N'Amount'),
(11, N'Giảm 12% đơn hàng', N'SAVE12', N'Giảm 12% tối đa 120k', '2024-09-01', '2024-12-31', GETDATE(), 70, 400, N'product', 600000, N'Percentage'),
(12, N'Giảm 80k đơn từ 800k', N'GIAM80K', N'Giảm 80k', '2024-10-01', '2024-12-31', GETDATE(), 110, 700, N'product', 800000, N'Amount'),
(13, N'Giảm 7% đơn hàng', N'SAVE7', N'Giảm 7% tối đa 70k', '2024-01-01', '2024-03-31', GETDATE(), 220, 1500, N'product', 400000, N'Percentage'),
(14, N'Miễn phí vận chuyển 40k', N'FREESHIP40', N'Miễn phí ship tối đa 40k', '2024-02-15', '2024-05-15', GETDATE(), 130, 800, N'shipment', 250000, N'Amount'),
(15, N'Giảm 150k đơn từ 1.5 triệu', N'GIAM150K', N'Giảm 150k', '2024-03-15', '2024-06-15', GETDATE(), 55, 300, N'product', 1500000, N'Amount'),
(16, N'Giảm 25% đơn hàng', N'SAVE25', N'Giảm 25% tối đa 250k', '2024-04-15', '2024-07-15', GETDATE(), 20, 100, N'product', 1200000, N'Percentage'),
(17, N'Giảm 60k đơn từ 600k', N'GIAM60K', N'Giảm 60k', '2024-05-15', '2024-08-15', GETDATE(), 180, 900, N'product', 600000, N'Amount'),
(18, N'Giảm 8% đơn hàng', N'SAVE8', N'Giảm 8% tối đa 80k', '2024-06-15', '2024-09-15', GETDATE(), 95, 600, N'product', 500000, N'Percentage'),
(19, N'Miễn phí vận chuyển 60k', N'FREESHIP60', N'Miễn phí ship tối đa 60k', '2024-07-15', '2024-10-15', GETDATE(), 75, 400, N'shipment', 400000, N'Amount'),
(20, N'Giảm 250k đơn từ 2.5 triệu', N'GIAM250K', N'Giảm 250k', '2024-08-15', '2024-11-15', GETDATE(), 35, 150, N'product', 2500000, N'Amount');
SET IDENTITY_INSERT Vouchers OFF;
GO

-- ======================================================
-- Insert PercentageVouchers (for voucher type Percentage)
-- ======================================================
INSERT INTO PercentageVouchers (voucherId, discountPercentage, maxDiscount) VALUES
(1, 10.00, 100000),
(4, 15.00, 150000),
(6, 5.00, 50000),
(8, 20.00, 200000),
(11, 12.00, 120000),
(13, 7.00, 70000),
(16, 25.00, 250000),
(18, 8.00, 80000);
GO

-- ======================================================
-- Insert AmountVouchers (for voucher type Amount)
-- ======================================================
INSERT INTO AmountVouchers (voucherId, discountAmount) VALUES
(2, 50000),
(3, 30000),  -- but applyFor shipment, amount for shipment discount
(5, 100000),
(7, 200000),
(9, 50000),
(10, 30000),
(12, 80000),
(14, 40000),
(15, 150000),
(17, 60000),
(19, 60000),
(20, 250000);
GO

-- ======================================================
-- Insert CustomerVouchers (at least 20 rows)
-- ======================================================
INSERT INTO CustomerVouchers (customerId, voucherId) VALUES
(21,1), (21,2), (22,3), (22,4), (23,5), (23,6), (24,7), (24,8),
(25,9), (25,10), (26,11), (26,12), (27,13), (27,14), (28,15), (28,16),
(29,17), (29,18), (30,19), (30,20), (31,1), (31,3), (32,5), (32,7),
(33,9), (33,11), (34,13), (34,15), (35,17), (35,19), (36,2), (36,4),
(37,6), (37,8), (38,10), (38,12), (39,14), (39,16), (40,18), (40,20);
GO

-- ======================================================
-- Insert Orders (40 rows)
-- ======================================================
SET IDENTITY_INSERT Orders ON;
INSERT INTO Orders (orderId, orderAt, totalPrice, status, customerId, voucherId) VALUES
(1, '2024-01-15 10:30:00', 34990000, N'Hoàn thành', 21, 1),
(2, '2024-01-16 11:45:00', 26990000, N'Hoàn thành', 22, NULL),
(3, '2024-01-17 09:20:00', 52990000, N'Đã xác nhận', 23, 4),
(4, '2024-01-18 14:10:00', 28990000, N'Đang giao', 24, 5),
(5, '2024-01-19 16:30:00', 10990000, N'Chờ xác nhận', 25, 6),
(6, '2024-01-20 08:15:00', 5990000, N'Hoàn thành', 26, NULL),
(7, '2024-01-21 12:00:00', 3990000, N'Hoàn thành', 27, 8),
(8, '2024-01-22 13:45:00', 2990000, N'Đã hủy', 28, NULL),
(9, '2024-01-23 17:30:00', 3490000, N'Đã hủy', 29, 10),
(10, '2024-01-24 10:00:00', 299000, N'Đang giao', 30, NULL),
(11, '2024-01-25 11:20:00', 2490000, N'Hoàn thành', 31, 12),
(12, '2024-01-26 14:50:00', 1890000, N'Hoàn thành', 32, NULL),
(13, '2024-01-27 09:35:00', 12990000, N'Đã xác nhận', 33, 14),
(14, '2024-01-28 15:25:00', 9990000, N'Chờ xác nhận', 34, 15),
(15, '2024-01-29 16:40:00', 7990000, N'Đang giao', 35, NULL),
(16, '2024-01-30 08:55:00', 5490000, N'Hoàn thành', 36, 17),
(17, '2024-02-01 10:10:00', 4990000, N'Hoàn thành', 37, 18),
(18, '2024-02-02 11:30:00', 2990000, N'Đã xác nhận', 38, NULL),
(19, '2024-02-03 13:45:00', 1890000, N'Đang giao', 39, 20),
(20, '2024-02-04 15:00:00', 1290000, N'Chờ xác nhận', 40, NULL),
(21, '2024-02-05 09:25:00', 14990000, N'Hoàn thành', 21, 1),
(22, '2024-02-06 10:35:00', 11990000, N'Hoàn thành', 22, 2),
(23, '2024-02-07 11:50:00', 1890000, N'Đã hủy', 23, NULL),
(24, '2024-02-08 14:05:00', 3990000, N'Đã hủy', 24, 3),
(25, '2024-02-09 16:20:00', 3290000, N'Đang giao', 25, NULL),
(26, '2024-02-10 08:40:00', 299000, N'Hoàn thành', 26, 5),
(27, '2024-02-11 09:55:00', 10990000, N'Hoàn thành', 27, 6),
(28, '2024-02-12 11:15:00', 34990000, N'Đã xác nhận', 28, 7),
(29, '2024-02-13 13:30:00', 26990000, N'Đang giao', 29, NULL),
(30, '2024-02-14 14:50:00', 52990000, N'Chờ xác nhận', 30, 9),
(31, '2024-02-15 16:10:00', 28990000, N'Hoàn thành', 31, 10),
(32, '2024-02-16 08:30:00', 10990000, N'Hoàn thành', 32, 11),
(33, '2024-02-17 09:45:00', 5990000, N'Đã xác nhận', 33, NULL),
(34, '2024-02-18 11:00:00', 3990000, N'Đang giao', 34, 13),
(35, '2024-02-19 12:20:00', 2990000, N'Chờ xác nhận', 35, 14),
(36, '2024-02-20 14:35:00', 3490000, N'Hoàn thành', 36, 15),
(37, '2024-02-21 15:55:00', 2490000, N'Hoàn thành', 37, NULL),
(38, '2024-02-22 08:10:00', 1890000, N'Đã hủy', 38, 17),
(39, '2024-02-23 09:30:00', 12990000, N'Đã hủy', 39, 18),
(40, '2024-02-24 10:50:00', 9990000, N'Đang giao', 40, 19);
SET IDENTITY_INSERT Orders OFF;
GO

-- ======================================================
-- Insert Shipments (40 rows)
-- ======================================================
SET IDENTITY_INSERT Shipments ON;
INSERT INTO Shipments (shipmentId, orderId, senderAddress, receiverAddress, shippingFee, createdAt) VALUES
(1, 1, N'Kho An Phát - Hà Nội, KCN Bắc Thăng Long', N'Số 1, ngõ 12, đường Trần Kim Xuyến, Cầu Giấy, Hà Nội', 30000, '2024-01-15 11:00:00'),
(2, 2, N'Kho TechStore - Hà Nội, KCN Quang Minh', N'123 đường Nguyễn Trãi, Thanh Xuân, Hà Nội', 25000, '2024-01-16 12:30:00'),
(3, 3, N'Kho SmartPhone Sài Gòn, KCN Tân Tạo', N'456 đường Lê Lợi, Quận 1, TP.HCM', 35000, '2024-01-17 10:00:00'),
(4, 4, N'Kho Laptop 24/7, KCN Hòa Khánh, Đà Nẵng', N'789 đường Võ Thị Sáu, Quận 3, TP.HCM', 40000, '2024-01-18 15:00:00'),
(5, 5, N'Kho Phụ kiện Hoàng Long, KCN Biên Hòa', N'12 đường 2/9, Hải Châu, Đà Nẵng', 20000, '2024-01-19 17:00:00'),
(6, 6, N'Kho Điện máy Xanh, KCN Vĩnh Lộc', N'45 đường Hoàng Diệu, Ba Đình, Hà Nội', 28000, '2024-01-20 09:00:00'),
(7, 7, N'Kho Thế giới di động, KCN Yên Phong', N'67 đường Lê Lai, Ngô Quyền, Hải Phòng', 32000, '2024-01-21 13:00:00'),
(8, 8, N'Kho FPT Shop, KCN Thạch Thất', N'89 đường 30/4, Ninh Kiều, Cần Thơ', 30000, '2024-01-22 14:30:00'),
(9, 9, N'Kho CellphoneS, KCN Tân Phú Trung', N'101 đường Cách Mạng Tháng 8, Thủ Dầu Một, Bình Dương', 27000, '2024-01-23 18:00:00'),
(10, 10, N'Kho MediaMart, KCN Đà Nẵng', N'202 đường Phạm Văn Thuận, Biên Hòa, Đồng Nai', 22000, '2024-01-24 11:00:00'),
(11, 11, N'Kho Điện tử Phong Vũ, KCN Sóng Thần', N'33 đường Ngọc Lâm, Long Biên, Hà Nội', 26000, '2024-01-25 12:00:00'),
(12, 12, N'Kho An Khang Digital, KCN Long Bình', N'55 đường Nguyễn Hoàng, Quận 2, TP.HCM', 29000, '2024-01-26 15:30:00'),
(13, 13, N'Kho Minh Tuấn Mobile, KCN Tiên Sơn', N'77 đường Quang Trung, Hà Đông, Hà Nội', 31000, '2024-01-27 10:30:00'),
(14, 14, N'Kho Hoàng Hà Mobile, KCN Quế Võ', N'99 đường Trần Hưng Đạo, Quận 5, TP.HCM', 34000, '2024-01-28 16:00:00'),
(15, 15, N'Kho Điện tử Chợ Lớn, KCN Tân Tạo', N'111 đường Nguyễn Văn Linh, Thanh Khê, Đà Nẵng', 36000, '2024-01-29 17:30:00'),
(16, 16, N'Kho TechOne, KCN Hà Nội', N'222 đường Đà Nẵng, Hồng Bàng, Hải Phòng', 33000, '2024-01-30 09:30:00'),
(17, 17, N'Kho Nam Anh Computer, KCN Hòa Cầm', N'333 đường Võ Nguyên Giáp, Cái Răng, Cần Thơ', 38000, '2024-02-01 11:00:00'),
(18, 18, N'Kho Phúc Anh, KCN Bình Dương', N'444 đường Nguyễn Chí Thanh, Thuận An, Bình Dương', 30000, '2024-02-02 12:30:00'),
(19, 19, N'Kho Nguyễn Kim, KCN Cát Lái', N'555 đường Hùng Vương, Long Thành, Đồng Nai', 25000, '2024-02-03 14:30:00'),
(20, 20, N'Kho Điện tử Đức Thanh, KCN Tân Bình', N'666 đường Giải Phóng, Hoàng Mai, Hà Nội', 27000, '2024-02-04 16:00:00'),
(21, 21, N'Kho An Phát - HCM, KCN Tân Bình', N'Số 1, ngõ 12, đường Trần Kim Xuyến, Cầu Giấy, Hà Nội', 35000, '2024-02-05 10:00:00'),
(22, 22, N'Kho TechStore - Hà Nội, KCN Quang Minh', N'123 đường Nguyễn Trãi, Thanh Xuân, Hà Nội', 28000, '2024-02-06 11:30:00'),
(23, 23, N'Kho SmartPhone Sài Gòn, KCN Tân Tạo', N'456 đường Lê Lợi, Quận 1, TP.HCM', 32000, '2024-02-07 13:00:00'),
(24, 24, N'Kho Laptop 24/7, KCN Hòa Khánh', N'789 đường Võ Thị Sáu, Quận 3, TP.HCM', 30000, '2024-02-08 15:00:00'),
(25, 25, N'Kho Phụ kiện Hoàng Long, KCN Biên Hòa', N'12 đường 2/9, Hải Châu, Đà Nẵng', 26000, '2024-02-09 17:00:00'),
(26, 26, N'Kho Điện máy Xanh, KCN Vĩnh Lộc', N'45 đường Hoàng Diệu, Ba Đình, Hà Nội', 24000, '2024-02-10 09:30:00'),
(27, 27, N'Kho Thế giới di động, KCN Yên Phong', N'67 đường Lê Lai, Ngô Quyền, Hải Phòng', 29000, '2024-02-11 10:30:00'),
(28, 28, N'Kho FPT Shop, KCN Thạch Thất', N'89 đường 30/4, Ninh Kiều, Cần Thơ', 31000, '2024-02-12 12:00:00'),
(29, 29, N'Kho CellphoneS, KCN Tân Phú Trung', N'101 đường Cách Mạng Tháng 8, Thủ Dầu Một, Bình Dương', 27000, '2024-02-13 14:30:00'),
(30, 30, N'Kho MediaMart, KCN Đà Nẵng', N'202 đường Phạm Văn Thuận, Biên Hòa, Đồng Nai', 33000, '2024-02-14 15:30:00'),
(31, 31, N'Kho Điện tử Phong Vũ, KCN Sóng Thần', N'33 đường Ngọc Lâm, Long Biên, Hà Nội', 36000, '2024-02-15 17:00:00'),
(32, 32, N'Kho An Khang Digital, KCN Long Bình', N'55 đường Nguyễn Hoàng, Quận 2, TP.HCM', 30000, '2024-02-16 09:00:00'),
(33, 33, N'Kho Minh Tuấn Mobile, KCN Tiên Sơn', N'77 đường Quang Trung, Hà Đông, Hà Nội', 34000, '2024-02-17 10:30:00'),
(34, 34, N'Kho Hoàng Hà Mobile, KCN Quế Võ', N'99 đường Trần Hưng Đạo, Quận 5, TP.HCM', 38000, '2024-02-18 12:00:00'),
(35, 35, N'Kho Điện tử Chợ Lớn, KCN Tân Tạo', N'111 đường Nguyễn Văn Linh, Thanh Khê, Đà Nẵng', 25000, '2024-02-19 13:30:00'),
(36, 36, N'Kho TechOne, KCN Hà Nội', N'222 đường Đà Nẵng, Hồng Bàng, Hải Phòng', 29000, '2024-02-20 15:30:00'),
(37, 37, N'Kho Nam Anh Computer, KCN Hòa Cầm', N'333 đường Võ Nguyên Giáp, Cái Răng, Cần Thơ', 31000, '2024-02-21 16:30:00'),
(38, 38, N'Kho Phúc Anh, KCN Bình Dương', N'444 đường Nguyễn Chí Thanh, Thuận An, Bình Dương', 33000, '2024-02-22 09:00:00'),
(39, 39, N'Kho Nguyễn Kim, KCN Cát Lái', N'555 đường Hùng Vương, Long Thành, Đồng Nai', 28000, '2024-02-23 10:30:00'),
(40, 40, N'Kho Điện tử Đức Thanh, KCN Tân Bình', N'666 đường Giải Phóng, Hoàng Mai, Hà Nội', 30000, '2024-02-24 12:00:00');
SET IDENTITY_INSERT Shipments OFF;
GO

-- ======================================================
-- Insert OrderItems (100 rows)
-- ======================================================
SET IDENTITY_INSERT OrderItems ON;
INSERT INTO OrderItems (orderItemId, orderId, variantId, itemPrice, itemQuantity, isRated, shipmentId) VALUES
(1,1,1,34990000,1,1,1),
(2,2,4,26990000,1,1,2),
(3,3,11,52990000,1,0,3),
(4,4,17,28990000,1,0,4),
(5,5,23,10990000,1,0,5),
(6,6,27,5990000,1,1,6),
(7,7,29,3990000,1,1,7),
(8,8,31,2990000,1,0,8),
(9,9,33,3490000,1,0,9),
(10,10,35,299000,1,1,10),
(11,11,39,2490000,1,1,11),
(12,12,41,1890000,1,1,12),
(13,13,43,12990000,1,0,13),
(14,14,44,9990000,1,0,14),
(15,15,45,7990000,1,0,15),
(16,16,46,5490000,1,1,16),
(17,17,47,4990000,1,1,17),
(18,18,48,2990000,1,0,18),
(19,19,49,1890000,1,0,19),
(20,20,50,1290000,1,0,20),
(21,21,51,14990000,1,1,21),
(22,22,52,11990000,1,1,22),
(23,23,54,1890000,1,0,23),
(24,24,56,3990000,1,0,24),
(25,25,57,3290000,1,0,25),
(26,26,58,299000,1,1,26),
(27,27,59,10990000,1,1,27),
(28,28,1,34990000,1,0,28),
(29,29,4,26990000,1,0,29),
(30,30,11,52990000,1,0,30),
(31,31,17,28990000,1,1,31),
(32,32,23,10990000,1,1,32),
(33,33,27,5990000,1,0,33),
(34,34,29,3990000,1,0,34),
(35,35,31,2990000,1,0,35),
(36,36,33,3490000,1,1,36),
(37,37,39,2490000,1,1,37),
(38,38,41,1890000,1,0,38),
(39,39,43,12990000,1,0,39),
(40,40,44,9990000,1,0,40),
(41,1,2,34990000,1,1,1),  -- second item in order 1
(42,2,5,26990000,1,1,2),
(43,3,12,58990000,1,0,3),
(44,4,18,32990000,1,0,4),
(45,5,24,11990000,1,0,5),
(46,6,28,5990000,1,1,6),
(47,7,30,3990000,1,1,7),
(48,8,32,2990000,1,0,8),
(49,9,34,3490000,1,0,9),
(50,10,36,299000,1,1,10),
(51,11,40,2490000,1,1,11),
(52,12,42,1890000,1,1,12),
(53,13,78,18990000,1,0,13),
(54,14,79,14990000,1,0,14),
(55,15,80,190000,2,0,15), -- 2 items
(56,16,1,34990000,1,1,16),
(57,17,3,34990000,1,1,17),
(58,18,6,30990000,1,0,18),
(59,19,8,20990000,1,0,19),
(60,20,10,22990000,1,0,20),
(61,21,13,36990000,1,1,21),
(62,22,14,42990000,1,1,22),
(63,23,15,32990000,1,0,23),
(64,24,16,35990000,1,0,24),
(65,25,19,27990000,1,0,25),
(66,26,20,30990000,1,1,26),
(67,27,21,23990000,1,1,27),
(68,28,22,27990000,1,0,28),
(69,29,25,6990000,1,0,29),
(70,30,26,7990000,1,0,30),
(71,31,37,199000,3,1,31), -- 3 items
(72,32,38,249000,2,1,32),
(73,33,55,1890000,1,0,33),
(74,34,60,4990000,1,0,34),
(75,35,61,1290000,1,0,35),
(76,36,62,890000,1,1,36),
(77,37,63,290000,2,1,37),
(78,38,64,350000,1,0,38),
(79,39,65,38990000,1,0,39),
(80,40,66,35990000,1,0,40),
(81,1,67,20990000,1,1,1),
(82,2,68,65990000,1,1,2),
(83,3,69,49990000,1,0,3),
(84,4,70,35990000,1,0,4),
(85,5,71,32990000,1,0,5),
(86,6,72,13990000,1,1,6),
(87,7,73,8990000,1,1,7),
(88,8,74,2990000,1,0,8),
(89,9,75,3490000,1,0,9),
(90,10,76,2490000,1,1,10),
(91,11,77,1890000,1,1,11),
(92,12,7,18990000,1,1,12),
(93,13,9,22990000,1,0,13),
(94,14,2,34990000,1,0,14),
(95,15,3,34990000,1,0,15),
(96,16,4,26990000,1,1,16),
(97,17,5,26990000,1,1,17),
(98,18,6,30990000,1,0,18),
(99,19,8,20990000,1,0,19),
(100,20,10,22990000,1,0,20);
SET IDENTITY_INSERT OrderItems OFF;
GO

-- ======================================================
-- Insert Payments (40 rows)
-- ======================================================
SET IDENTITY_INSERT Payments ON;
INSERT INTO Payments (paymentId, orderId, method, status, amount, paidAt, createdAt, bankAccountId) VALUES
(1,1,N'Chuyển khoản',N'Đã thanh toán',34990000,'2024-01-15 10:35:00','2024-01-15 10:30:00',21),
(2,2,N'Tiền mặt',N'Đã thanh toán',26990000,'2024-01-16 11:50:00','2024-01-16 11:45:00',NULL),
(3,3,N'Ví điện tử',N'Đã thanh toán',52990000,'2024-01-17 09:25:00','2024-01-17 09:20:00',22),
(4,4,N'Thẻ tín dụng',N'Đã thanh toán',28990000,'2024-01-18 14:15:00','2024-01-18 14:10:00',23),
(5,5,N'Chuyển khoản',N'Chờ thanh toán',10990000,NULL,'2024-01-19 16:30:00',24),
(6,6,N'Tiền mặt',N'Đã thanh toán',5990000,'2024-01-20 08:20:00','2024-01-20 08:15:00',NULL),
(7,7,N'Ví điện tử',N'Đã thanh toán',3990000,'2024-01-21 12:05:00','2024-01-21 12:00:00',25),
(8,8,N'Chuyển khoản',N'Thất bại',2990000,NULL,'2024-01-22 13:45:00',26),
(9,9,N'Tiền mặt',N'Thất bại',3490000,NULL,'2024-01-23 17:30:00',NULL),
(10,10,N'Ví điện tử',N'Đã thanh toán',299000,'2024-01-24 10:05:00','2024-01-24 10:00:00',27),
(11,11,N'Chuyển khoản',N'Đã thanh toán',2490000,'2024-01-25 11:25:00','2024-01-25 11:20:00',28),
(12,12,N'Thẻ tín dụng',N'Đã thanh toán',1890000,'2024-01-26 14:55:00','2024-01-26 14:50:00',29),
(13,13,N'Chuyển khoản',N'Đã thanh toán',12990000,'2024-01-27 09:40:00','2024-01-27 09:35:00',30),
(14,14,N'Ví điện tử',N'Chờ thanh toán',9990000,NULL,'2024-01-28 15:25:00',31),
(15,15,N'Tiền mặt',N'Đã thanh toán',7990000,'2024-01-29 16:45:00','2024-01-29 16:40:00',NULL),
(16,16,N'Chuyển khoản',N'Đã thanh toán',5490000,'2024-01-30 09:00:00','2024-01-30 08:55:00',32),
(17,17,N'Thẻ tín dụng',N'Đã thanh toán',4990000,'2024-02-01 10:15:00','2024-02-01 10:10:00',33),
(18,18,N'Ví điện tử',N'Đã thanh toán',2990000,'2024-02-02 11:35:00','2024-02-02 11:30:00',34),
(19,19,N'Chuyển khoản',N'Đã thanh toán',1890000,'2024-02-03 13:50:00','2024-02-03 13:45:00',35),
(20,20,N'Tiền mặt',N'Chờ thanh toán',1290000,NULL,'2024-02-04 15:00:00',NULL),
(21,21,N'Chuyển khoản',N'Đã thanh toán',14990000,'2024-02-05 09:30:00','2024-02-05 09:25:00',36),
(22,22,N'Ví điện tử',N'Đã thanh toán',11990000,'2024-02-06 10:40:00','2024-02-06 10:35:00',37),
(23,23,N'Thẻ tín dụng',N'Thất bại',1890000,NULL,'2024-02-07 11:50:00',38),
(24,24,N'Chuyển khoản',N'Thất bại',3990000,NULL,'2024-02-08 14:05:00',39),
(25,25,N'Tiền mặt',N'Đã thanh toán',3290000,'2024-02-09 16:25:00','2024-02-09 16:20:00',NULL),
(26,26,N'Ví điện tử',N'Đã thanh toán',299000,'2024-02-10 08:45:00','2024-02-10 08:40:00',40),
(27,27,N'Chuyển khoản',N'Đã thanh toán',10990000,'2024-02-11 10:00:00','2024-02-11 09:55:00',21),
(28,28,N'Thẻ tín dụng',N'Đã thanh toán',34990000,'2024-02-12 11:20:00','2024-02-12 11:15:00',22),
(29,29,N'Ví điện tử',N'Đã thanh toán',26990000,'2024-02-13 13:35:00','2024-02-13 13:30:00',23),
(30,30,N'Chuyển khoản',N'Chờ thanh toán',52990000,NULL,'2024-02-14 14:50:00',24),
(31,31,N'Tiền mặt',N'Đã thanh toán',28990000,'2024-02-15 16:15:00','2024-02-15 16:10:00',NULL),
(32,32,N'Ví điện tử',N'Đã thanh toán',10990000,'2024-02-16 08:35:00','2024-02-16 08:30:00',25),
(33,33,N'Chuyển khoản',N'Đã thanh toán',5990000,'2024-02-17 09:50:00','2024-02-17 09:45:00',26),
(34,34,N'Thẻ tín dụng',N'Đã thanh toán',3990000,'2024-02-18 11:05:00','2024-02-18 11:00:00',27),
(35,35,N'Ví điện tử',N'Chờ thanh toán',2990000,NULL,'2024-02-19 12:20:00',28),
(36,36,N'Chuyển khoản',N'Đã thanh toán',3490000,'2024-02-20 14:40:00','2024-02-20 14:35:00',29),
(37,37,N'Tiền mặt',N'Đã thanh toán',2490000,'2024-02-21 16:00:00','2024-02-21 15:55:00',NULL),
(38,38,N'Ví điện tử',N'Thất bại',1890000,NULL,'2024-02-22 08:10:00',30),
(39,39,N'Chuyển khoản',N'Thất bại',12990000,NULL,'2024-02-23 09:30:00',31),
(40,40,N'Thẻ tín dụng',N'Đã thanh toán',9990000,'2024-02-24 10:55:00','2024-02-24 10:50:00',32);
SET IDENTITY_INSERT Payments OFF;
GO

-- ======================================================
-- Insert ShipmentHistories (200 rows)
-- ======================================================
SET IDENTITY_INSERT ShipmentHistories ON;
DECLARE @i INT = 1;
WHILE @i <= 200
BEGIN
    INSERT INTO ShipmentHistories (historyId, shipmentId, statusCode, locationDesc, createdAt, shipperId, hubId)
    VALUES (
        @i,
        ((@i-1) % 40) + 1,
        CASE WHEN @i % 5 = 0 THEN N'Đã giao'
             WHEN @i % 5 = 1 THEN N'Chờ lấy hàng'
             WHEN @i % 5 = 2 THEN N'Đã lấy hàng'
             WHEN @i % 5 = 3 THEN N'Đang vận chuyển'
             ELSE N'Đến trung tâm phân loại'
        END,
        N'Địa điểm ' + CAST(@i AS NVARCHAR(10)),
        DATEADD(hour, @i, '2024-01-15 08:00:00'),
        CASE WHEN @i % 20 = 0 THEN NULL ELSE ((@i-1) % 20) + 61 END,
        ((@i-1) % 20) + 1
    );
    SET @i = @i + 1;
END;
SET IDENTITY_INSERT ShipmentHistories OFF;
GO

-- ======================================================
-- Insert Comments (20 rows)
-- ======================================================
SET IDENTITY_INSERT Comments ON;
INSERT INTO Comments (commentId, commentText, commentPhoto, commentVideo, replyId, createdAt, modifyAt, likeCount, dislikeCount, accountId, productId) VALUES
(1, N'Sản phẩm rất tốt, đóng gói cẩn thận', NULL, NULL, NULL, '2024-01-16 10:00:00', NULL, 5, 0, 21, 1),
(2, N'Máy chạy mượt, pin trâu', NULL, NULL, NULL, '2024-01-17 11:30:00', NULL, 3, 1, 22, 2),
(3, N'Giao hàng nhanh, nhiệt tình', NULL, NULL, NULL, '2024-01-18 09:15:00', NULL, 7, 0, 23, 3),
(4, N'Giá hơi cao so với thị trường', NULL, NULL, NULL, '2024-01-19 14:20:00', NULL, 2, 2, 24, 4),
(5, N'Điện thoại đẹp, chụp ảnh xuất sắc', NULL, NULL, NULL, '2024-01-20 16:45:00', NULL, 10, 0, 25, 1),
(6, N'Laptop nhẹ, phù hợp di chuyển', NULL, NULL, NULL, '2024-01-21 08:30:00', NULL, 4, 1, 26, 5),
(7, N'Tai nghe hay, chống ồn tốt', NULL, NULL, NULL, '2024-01-22 12:10:00', NULL, 6, 0, 27, 13),
(8, N'Loa bass mạnh, pin lâu', NULL, NULL, NULL, '2024-01-23 13:55:00', NULL, 8, 1, 28, 15),
(9, N'Ốp lưng đẹp, vừa vặn', NULL, NULL, NULL, '2024-01-24 17:40:00', NULL, 2, 0, 29, 17),
(10, N'Chuột dùng êm, pin tốt', NULL, NULL, NULL, '2024-01-25 10:25:00', NULL, 3, 0, 30, 19),
(11, N'Màn hình sắc nét, màu đẹp', NULL, NULL, NULL, '2024-01-26 11:35:00', NULL, 5, 1, 31, 21),
(12, N'Máy in dễ cài đặt, in nhanh', NULL, NULL, NULL, '2024-01-27 15:05:00', NULL, 4, 0, 32, 23),
(13, N'Router sóng khỏe, ổn định', NULL, NULL, NULL, '2024-01-28 09:50:00', NULL, 6, 1, 33, 25),
(14, N'Camera ban đêm rõ, dễ lắp', NULL, NULL, NULL, '2024-01-29 16:15:00', NULL, 7, 0, 34, 27),
(15, N'PS5 chính hãng, shop uy tín', NULL, NULL, NULL, '2024-01-30 08:10:00', NULL, 9, 0, 35, 29),
(16, N'Tay cầm chắc chắn, cảm ứng tốt', NULL, NULL, NULL, '2024-02-01 09:20:00', NULL, 3, 0, 36, 31),
(17, N'RAM tốc độ cao, tương thích', NULL, NULL, NULL, '2024-02-02 10:40:00', NULL, 2, 1, 37, 32),
(18, N'USB nhỏ gọn, truyền nhanh', NULL, NULL, NULL, '2024-02-03 12:55:00', NULL, 4, 0, 38, 34),
(19, N'Nồi cơm nấu ngon, dễ vệ sinh', NULL, NULL, NULL, '2024-02-04 14:30:00', NULL, 5, 0, 39, 36),
(20, N'Đèn thông minh điều khiển qua app', NULL, NULL, NULL, '2024-02-05 15:45:00', NULL, 6, 1, 40, 37);
SET IDENTITY_INSERT Comments OFF;
GO

-- ======================================================
-- Insert Ratings (20 rows)
-- ======================================================
SET IDENTITY_INSERT Ratings ON;
INSERT INTO Ratings (ratingId, ratingStars, ratingText, ratingPhoto, ratingVideo, createdAt, modifyAt, helpfulCounter, orderItemId, customerId) VALUES
(1, 5, N'Sản phẩm tuyệt vời!', NULL, NULL, '2024-01-16 11:00:00', NULL, 2, 1, 21),
(2, 4, N'Tốt, nhưng hơi đắt', NULL, NULL, '2024-01-17 12:30:00', NULL, 1, 2, 22),
(3, 5, N'Đúng như mô tả', NULL, NULL, '2024-01-18 10:15:00', NULL, 3, 3, 23),
(4, 3, N'Bình thường, không có gì nổi bật', NULL, NULL, '2024-01-19 15:20:00', NULL, 0, 4, 24),
(5, 5, N'Rất hài lòng', NULL, NULL, '2024-01-20 17:45:00', NULL, 4, 5, 25),
(6, 5, N'Pin trâu, màn hình đẹp', NULL, NULL, '2024-01-21 09:30:00', NULL, 2, 6, 26),
(7, 4, N'Âm thanh tốt, giao hàng nhanh', NULL, NULL, '2024-01-22 13:10:00', NULL, 1, 7, 27),
(8, 2, N'Loa bị rè', NULL, NULL, '2024-01-23 14:55:00', NULL, 0, 8, 28),
(9, 5, N'Ốp lưng chất lượng', NULL, NULL, '2024-01-24 18:40:00', NULL, 1, 9, 29),
(10, 4, N'Chuột dùng ok', NULL, NULL, '2024-01-25 11:25:00', NULL, 0, 10, 30),
(11, 5, N'Màn hình quá đẹp', NULL, NULL, '2024-01-26 12:35:00', NULL, 2, 11, 31),
(12, 5, N'Máy in dễ dùng', NULL, NULL, '2024-01-27 16:05:00', NULL, 1, 12, 32),
(13, 4, N'Router ổn định', NULL, NULL, '2024-01-28 10:50:00', NULL, 0, 13, 33),
(14, 5, N'Camera rõ nét', NULL, NULL, '2024-01-29 17:15:00', NULL, 3, 14, 34),
(15, 5, N'PS5 chính hãng', NULL, NULL, '2024-01-30 09:10:00', NULL, 4, 15, 35),
(16, 4, N'Tay cầm tốt', NULL, NULL, '2024-02-01 10:20:00', NULL, 1, 16, 36),
(17, 5, N'RAM ngon', NULL, NULL, '2024-02-02 11:40:00', NULL, 0, 17, 37),
(18, 3, N'USB chậm', NULL, NULL, '2024-02-03 13:55:00', NULL, 0, 18, 38),
(19, 5, N'Nồi cơm tốt', NULL, NULL, '2024-02-04 15:30:00', NULL, 2, 19, 39),
(20, 4, N'Đèn dễ cài', NULL, NULL, '2024-02-05 16:45:00', NULL, 1, 20, 40);
SET IDENTITY_INSERT Ratings OFF;
GO

PRINT 'Sample data insertion completed successfully!';