CREATE DATABASE ECommerceTech;
GO

USE ECommerceTech;
GO
-- Sau khi tạo các bảng hoàn tất
-- Sử dụng Query trong file insertData.sql để nhập các bản ghi 
-- ======================================================
-- 1. Bảng Accounts (Tài khoản đăng nhập)
-- ======================================================
CREATE TABLE Accounts (
    accountId INT IDENTITY(1,1) PRIMARY KEY,
    username NVARCHAR(50) NOT NULL UNIQUE,
    passwordHashed NVARCHAR(255) NOT NULL,
    email NVARCHAR(100) NOT NULL UNIQUE,
    phoneNumber NVARCHAR(20) NOT NULL UNIQUE,
    status NVARCHAR(20) NOT NULL DEFAULT 'Active' CHECK (status IN ('Active', 'Banned', 'Inactive')),
    createdAt DATETIME2 NOT NULL DEFAULT GETDATE(),
    lastLogin DATETIME2 NULL,
);

-- ======================================================
-- 2. Bảng Roles (Vai trò)
-- ======================================================
CREATE TABLE Roles (
    roleId INT IDENTITY(1,1) PRIMARY KEY,
    roleName NVARCHAR(50) NOT NULL UNIQUE,
    description NVARCHAR(255)
);

-- ======================================================
-- 3. Bảng Profiles (Hồ sơ cá nhân)
-- ======================================================
CREATE TABLE Profiles (
    profileId INT IDENTITY(1,1) PRIMARY KEY,
    fullName NVARCHAR(100) NOT NULL,
    dateOfBirth DATE NULL,
    gender NVARCHAR(10) CHECK (gender IN (N'Nam', N'Nữ', N'Khác')),
    avatarURL NVARCHAR(500),
    citizenID NVARCHAR(20) UNIQUE,
    accountId INT NOT NULL UNIQUE,
    FOREIGN KEY (accountId) REFERENCES Accounts(accountId) ON DELETE CASCADE
);

-- ======================================================
-- 4. Bảng Admins
-- ======================================================
CREATE TABLE Admins (
    profileId INT PRIMARY KEY,
    FOREIGN KEY (profileId) REFERENCES Profiles(profileId) ON DELETE CASCADE
);

-- ======================================================
-- 5. Bảng Customers
-- ======================================================
CREATE TABLE Customers (
    profileId INT PRIMARY KEY,
    memberTier NVARCHAR(20) DEFAULT N'Đồng' CHECK (memberTier IN (N'Đồng', N'Bạc', N'Vàng', N'Bạch kim')),
    rewardPoints INT DEFAULT 0,
    FOREIGN KEY (profileId) REFERENCES Profiles(profileId) ON DELETE CASCADE
);

-- ======================================================
-- 6. Bảng Shops
-- ======================================================
CREATE TABLE Shops (
    profileId INT PRIMARY KEY,
    shopName NVARCHAR(200) NOT NULL,
    taxCode NVARCHAR(50) UNIQUE,
    businessLicense NVARCHAR(100),
    shopDescription NVARCHAR(MAX),
    FOREIGN KEY (profileId) REFERENCES Profiles(profileId) ON DELETE CASCADE
);

-- ======================================================
-- 7. Bảng Shippers
-- ======================================================
CREATE TABLE Shippers (
    profileId INT PRIMARY KEY,
    vehiclePlate NVARCHAR(50),
    licenseNumber NVARCHAR(50),
    currentStatus NVARCHAR(20) DEFAULT N'Đang rảnh' CHECK (currentStatus IN (N'Đang rảnh', N'Đang giao hàng', N'Nghỉ phép')),
    hubId INT NOT NULL,
    FOREIGN KEY (profileId) REFERENCES Profiles(profileId) ON DELETE CASCADE
);

-- ======================================================
-- 8. Bảng AccountRoles
-- ======================================================
CREATE TABLE AccountRoles (
    accountId INT NOT NULL,
    roleId INT NOT NULL,
    PRIMARY KEY (accountId, roleId),
    FOREIGN KEY (accountId) REFERENCES Accounts(accountId) ON DELETE CASCADE,
    FOREIGN KEY (roleId) REFERENCES Roles(roleId) ON DELETE CASCADE
);

-- ======================================================
-- 9. Bảng DeliveryAddresses
-- ======================================================
CREATE TABLE DeliveryAddresses (
    addressId INT IDENTITY(1,1) PRIMARY KEY,
    customerId INT NOT NULL,
    receiverName NVARCHAR(100) NOT NULL,
    receiverPhone NVARCHAR(20) NOT NULL,
    addressType NVARCHAR(50) DEFAULT N'Nhà riêng',
    provinceCity NVARCHAR(100) NOT NULL,
    district NVARCHAR(100) NOT NULL,
    wardCommune NVARCHAR(100) NOT NULL,
    specificAddress NVARCHAR(255) NOT NULL,
    isDefault BIT NOT NULL DEFAULT 0,
    FOREIGN KEY (customerId) REFERENCES Customers(profileId) ON DELETE CASCADE
);

-- ======================================================
-- 10. Bảng PaymentAccounts
-- ======================================================
CREATE TABLE PaymentAccounts (
    bankAccountId INT IDENTITY(1,1) PRIMARY KEY,
    accountId INT NOT NULL,
    bankName NVARCHAR(100) NOT NULL,
    accountNumber NVARCHAR(50) NOT NULL,
    accountHolder NVARCHAR(100) NOT NULL,
    UNIQUE (accountId, accountNumber),
    FOREIGN KEY (accountId) REFERENCES Accounts(accountId) ON DELETE CASCADE
);

-- ======================================================
-- 11. Bảng Categories
-- ======================================================
CREATE TABLE Categories (
    categoryId INT IDENTITY(1,1) PRIMARY KEY,
    categoryName NVARCHAR(200) NOT NULL UNIQUE,
    categoryDescription NVARCHAR(MAX)
);

-- ======================================================
-- 12. Bảng Brands
-- ======================================================
CREATE TABLE Brands (
    brandId INT IDENTITY(1,1) PRIMARY KEY,
    brandName NVARCHAR(200) NOT NULL UNIQUE
);

-- ======================================================
-- 13. Bảng Products
-- ======================================================
CREATE TABLE Products (
    productId INT IDENTITY(1,1) PRIMARY KEY,
    productName NVARCHAR(500) NOT NULL,
    productDescription NVARCHAR(MAX),
    productImageUrl NVARCHAR(500),
    categoryId INT NOT NULL,
    brandId INT NOT NULL,
    shopId INT NOT NULL,
    FOREIGN KEY (categoryId) REFERENCES Categories(categoryId),
    FOREIGN KEY (brandId) REFERENCES Brands(brandId),
    FOREIGN KEY (shopId) REFERENCES Shops(profileId)
);

-- ======================================================
-- 14. Bảng Attributes
-- ======================================================
CREATE TABLE Attributes (
    attributeId INT IDENTITY(1,1) PRIMARY KEY,
    attributeName NVARCHAR(100) NOT NULL UNIQUE
);

-- ======================================================
-- 15. Bảng Variants
-- ======================================================
CREATE TABLE Variants (
    variantId INT IDENTITY(1,1) PRIMARY KEY,
    SKU NVARCHAR(50) NOT NULL,
    sellPrice DECIMAL(18,2) NOT NULL CHECK (sellPrice >= 0),
    costPrice DECIMAL(18,2) CHECK (costPrice >= 0),
    status NVARCHAR(20) DEFAULT N'Đang bán' CHECK (status IN (N'Đang bán', N'Ngừng bán', N'Hết hàng')),
    imageUrl NVARCHAR(500),
    unit NVARCHAR(50) NOT NULL DEFAULT N'cái',
    productId INT NOT NULL,
    FOREIGN KEY (productId) REFERENCES Products(productId) ON DELETE CASCADE,
    UNIQUE (SKU, productId)
);

-- ======================================================
-- 16. Bảng VariantAttributes
-- ======================================================
CREATE TABLE VariantAttributes (
    variantId INT NOT NULL,
    attributeId INT NOT NULL,
    attributeValue NVARCHAR(255) NOT NULL,
    PRIMARY KEY (variantId, attributeId),
    FOREIGN KEY (variantId) REFERENCES Variants(variantId) ON DELETE CASCADE,
    FOREIGN KEY (attributeId) REFERENCES Attributes(attributeId) ON DELETE CASCADE
);

-- ======================================================
-- 17. Bảng Warehouses
-- ======================================================
CREATE TABLE Warehouses (
    warehouseId INT IDENTITY(1,1) PRIMARY KEY,
    warehouseName NVARCHAR(100) NOT NULL,
    warehouseAddress NVARCHAR(500) NOT NULL,
    shopId INT NOT NULL,
    FOREIGN KEY (shopId) REFERENCES Shops(profileId) ON DELETE CASCADE
);

-- ======================================================
-- 18. Bảng WarehouseVariant
-- ======================================================
CREATE TABLE WarehouseVariant (
    warehouseId INT NOT NULL,
    variantId INT NOT NULL,
    quantity INT NOT NULL DEFAULT 0 CHECK (quantity >= 0),
    PRIMARY KEY (warehouseId, variantId),
    FOREIGN KEY (warehouseId) REFERENCES Warehouses(warehouseId) ON DELETE CASCADE,
    FOREIGN KEY (variantId) REFERENCES Variants(variantId) ON DELETE CASCADE
);

-- ======================================================
-- 19. Bảng Vouchers
-- ======================================================
CREATE TABLE Vouchers (
    voucherId INT IDENTITY(1,1) PRIMARY KEY,
    voucherName NVARCHAR(200) NOT NULL,
    voucherCode NVARCHAR(50) NOT NULL UNIQUE,
    description NVARCHAR(MAX),
    startAt DATETIME2 NOT NULL,
    endAt DATETIME2 NOT NULL,
    createdAt DATETIME2 NOT NULL DEFAULT GETDATE(),
    uses INT NOT NULL DEFAULT 0,
    maxUses INT NULL,
    applyFor NVARCHAR(20) NOT NULL CHECK (applyFor IN ('shipment', 'product')),
    minimumPrice DECIMAL(18,2) NULL CHECK (minimumPrice >= 0),
     type NVARCHAR(20) NOT NULL CHECK (type IN ('Percentage', 'Amount'))
);

-- ======================================================
-- 20. Bảng PercentageVouchers
-- ======================================================
CREATE TABLE PercentageVouchers (
    voucherId INT PRIMARY KEY,
    discountPercentage DECIMAL(5,2) NOT NULL CHECK (discountPercentage > 0 AND discountPercentage <= 100),
    maxDiscount DECIMAL(18,2) NULL CHECK (maxDiscount >= 0),
    FOREIGN KEY (voucherId) REFERENCES Vouchers(voucherId) ON DELETE CASCADE
);

-- ======================================================
-- 21. Bảng AmountVouchers
-- ======================================================
CREATE TABLE AmountVouchers (
    voucherId INT PRIMARY KEY,
    discountAmount DECIMAL(18,2) NOT NULL CHECK (discountAmount > 0),
    FOREIGN KEY (voucherId) REFERENCES Vouchers(voucherId) ON DELETE CASCADE
);

-- ======================================================
-- 22. Bảng CustomerVouchers
-- ======================================================
CREATE TABLE CustomerVouchers (
    customerId INT NOT NULL,
    voucherId INT NOT NULL,
--    assignedAt DATETIME2 NOT NULL DEFAULT GETDATE(),
--    remainingUses INT NOT NULL DEFAULT 1 CHECK (remainingUses >= 0),
    PRIMARY KEY (customerId, voucherId),
    FOREIGN KEY (customerId) REFERENCES Customers(profileId) ON DELETE CASCADE,
    FOREIGN KEY (voucherId) REFERENCES Vouchers(voucherId) ON DELETE CASCADE
);

-- ======================================================
-- 23. Bảng Orders
-- ======================================================
CREATE TABLE Orders (
    orderId INT IDENTITY(1,1) PRIMARY KEY,
    orderAt DATETIME2 NOT NULL DEFAULT GETDATE(),
    totalPrice DECIMAL(18,2) NOT NULL CHECK (totalPrice >= 0),
    status NVARCHAR(50) NOT NULL DEFAULT N'Chờ xác nhận' CHECK (status IN (N'Chờ xác nhận', N'Đã xác nhận', N'Đang giao', N'Hoàn thành', N'Đã hủy')),
    customerId INT NOT NULL,
    voucherId INT NULL,
    FOREIGN KEY (customerId) REFERENCES Customers(profileId),
    FOREIGN KEY (voucherId) REFERENCES Vouchers(voucherId)
);

-- ======================================================
-- 24. Bảng Shipments
-- ======================================================
CREATE TABLE Shipments (
    shipmentId INT IDENTITY(1,1) PRIMARY KEY,
    orderId INT NOT NULL,
    senderAddress NVARCHAR(500) NOT NULL,
    receiverAddress NVARCHAR(500) NOT NULL,
    shippingFee DECIMAL(18,2) NOT NULL DEFAULT 0 CHECK (shippingFee >= 0),
    createdAt DATETIME2 NOT NULL DEFAULT GETDATE(),
--    status NVARCHAR(50) NOT NULL DEFAULT N'Chờ lấy hàng' CHECK (status IN (N'Chờ lấy hàng', N'Đang vận chuyển', N'Đã giao', N'Thất bại')),
    FOREIGN KEY (orderId) REFERENCES Orders(orderId) ON DELETE CASCADE
);

-- ======================================================
-- 25. Bảng Hubs
-- ======================================================
CREATE TABLE Hubs (
    hubId INT IDENTITY(1,1) PRIMARY KEY,
    hubName NVARCHAR(200) NOT NULL,
    hubType NVARCHAR(50) CHECK (hubType IN (N'Gốc', N'Trung chuyển', N'Chi nhánh')),
    hubAddress NVARCHAR(500) NOT NULL,
    distanceMark INT NULL
);

-- ======================================================
-- 26. Bảng OrderItems
-- ======================================================
CREATE TABLE OrderItems (
    orderItemId INT IDENTITY(1,1) PRIMARY KEY,
    orderId INT NOT NULL,
    variantId INT NOT NULL,
    itemPrice DECIMAL(18,2) NOT NULL CHECK (itemPrice >= 0),
    itemQuantity INT NOT NULL CHECK (itemQuantity > 0),
    isRated BIT NOT NULL DEFAULT 0,
    shipmentId INT NULL,
    FOREIGN KEY (orderId) REFERENCES Orders(orderId) ON DELETE CASCADE,
    FOREIGN KEY (variantId) REFERENCES Variants(variantId),
    FOREIGN KEY (shipmentId) REFERENCES Shipments(shipmentId)
);

-- ======================================================
-- 27. Bảng Payments
-- ======================================================
CREATE TABLE Payments (
    paymentId INT IDENTITY(1,1) PRIMARY KEY,
    orderId INT NOT NULL UNIQUE,
    method NVARCHAR(50) NOT NULL CHECK (method IN (N'Tiền mặt', N'Chuyển khoản', N'Thẻ tín dụng', N'Ví điện tử')),
    status NVARCHAR(20) NOT NULL DEFAULT N'Chờ thanh toán' CHECK (status IN (N'Chờ thanh toán', N'Đã thanh toán', N'Thất bại')),
    amount DECIMAL(18,2) NOT NULL CHECK (amount >= 0),
    paidAt DATETIME2 NULL,
    createdAt DATETIME2 NOT NULL DEFAULT GETDATE(),
    bankAccountId INT NULL,
    FOREIGN KEY (orderId) REFERENCES Orders(orderId) ON DELETE CASCADE,
    FOREIGN KEY (bankAccountId) REFERENCES PaymentAccounts(bankAccountId)
);

-- ======================================================
-- 28. Bảng ShipmentHistories
-- ======================================================
CREATE TABLE ShipmentHistories (
    historyId INT IDENTITY(1,1) PRIMARY KEY,
    shipmentId INT NOT NULL,
    statusCode NVARCHAR(50) NOT NULL,
    locationDesc NVARCHAR(500),
    createdAt DATETIME2 NOT NULL DEFAULT GETDATE(),
    shipperId INT NULL,
    hubId INT NULL,
    FOREIGN KEY (shipmentId) REFERENCES Shipments(shipmentId) ON DELETE CASCADE,
    FOREIGN KEY (shipperId) REFERENCES Shippers(profileId),
    FOREIGN KEY (hubId) REFERENCES Hubs(hubId)
);

-- ======================================================
-- 29. Bảng Comments
-- ======================================================
CREATE TABLE Comments (
    commentId INT IDENTITY(1,1) PRIMARY KEY,
    commentText NVARCHAR(MAX) NOT NULL,
    commentPhoto NVARCHAR(500),
    commentVideo NVARCHAR(500),
    replyId INT NULL,
    createdAt DATETIME2 NOT NULL DEFAULT GETDATE(),
    modifyAt DATETIME2 NULL,
    likeCount INT NOT NULL DEFAULT 0,
    dislikeCount INT NOT NULL DEFAULT 0,
    accountId INT NOT NULL,
    productId INT NOT NULL,
    FOREIGN KEY (accountId) REFERENCES Accounts(accountId) ON DELETE NO ACTION,
    FOREIGN KEY (productId) REFERENCES Products(productId) ON DELETE NO ACTION,
    FOREIGN KEY (replyId) REFERENCES Comments(commentId)
);

-- ======================================================
-- 30. Bảng Ratings
-- ======================================================
CREATE TABLE Ratings (
    ratingId INT IDENTITY(1,1) PRIMARY KEY,
    ratingStars INT NOT NULL CHECK (ratingStars BETWEEN 1 AND 5),
    ratingText NVARCHAR(MAX),
    ratingPhoto NVARCHAR(500),
    ratingVideo NVARCHAR(500),
    createdAt DATETIME2 NOT NULL DEFAULT GETDATE(),
    modifyAt DATETIME2 NULL,
    helpfulCounter INT NOT NULL DEFAULT 0,
    orderItemId INT NOT NULL UNIQUE,
    customerId INT NOT NULL,
    FOREIGN KEY (orderItemId) REFERENCES OrderItems(orderItemId) ON DELETE CASCADE,
    FOREIGN KEY (customerId) REFERENCES Customers(profileId)
);

ALTER TABLE Shippers
ADD FOREIGN KEY (hubId) REFERENCES Hubs(hubId);

-- ======================================================
-- Tạo chỉ mục
-- ======================================================
CREATE INDEX IX_Orders_CustomerId ON Orders(customerId);
CREATE INDEX IX_Orders_OrderAt ON Orders(orderAt);
CREATE INDEX IX_OrderItems_OrderId ON OrderItems(orderId);
CREATE INDEX IX_OrderItems_VariantId ON OrderItems(variantId);
CREATE INDEX IX_Products_CategoryId ON Products(categoryId);
CREATE INDEX IX_Products_BrandId ON Products(brandId);
CREATE INDEX IX_Products_ShopId ON Products(shopId);
CREATE INDEX IX_Variants_ProductId ON Variants(productId);
CREATE INDEX IX_Shipments_OrderId ON Shipments(orderId);
CREATE INDEX IX_ShipmentHistories_ShipmentId ON ShipmentHistories(shipmentId);
CREATE INDEX IX_Comments_ProductId ON Comments(productId);
CREATE INDEX IX_Comments_AccountId ON Comments(accountId);
CREATE INDEX IX_Ratings_OrderItemId ON Ratings(orderItemId);
CREATE INDEX IX_CustomerVouchers_CustomerId ON CustomerVouchers(customerId);
CREATE INDEX IX_WarehouseVariant_VariantId ON WarehouseVariant(variantId);

SELECT
    name AS LogicalFileName,
    physical_name AS PhysicalFilePath,
    type_desc AS FileType
FROM sys.master_files
WHERE database_id = DB_ID('ECommerceTech');