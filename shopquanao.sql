-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 28, 2022 lúc 06:15 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopquanao`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `maBinhLuan` int(11) NOT NULL,
  `maSanPham` int(11) NOT NULL,
  `maKhachHang` int(11) NOT NULL,
  `noiDung` varchar(500) NOT NULL,
  `thoiGianBinhLuan` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `maDonHang` int(11) NOT NULL,
  `maSanPham` int(11) NOT NULL,
  `tenSanPham` varchar(100) NOT NULL,
  `soLuong` int(2) NOT NULL,
  `giaSanPham` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `maPhieuNhap` int(11) NOT NULL,
  `maSanPham` int(11) NOT NULL,
  `maDanhMuc` int(11) NOT NULL,
  `giaTien` float NOT NULL,
  `thoiGianNhap` datetime DEFAULT NULL,
  `soLuong` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieuxuat`
--

CREATE TABLE `chitietphieuxuat` (
  `maPhieuXuat` int(11) NOT NULL,
  `maSanPham` int(11) NOT NULL,
  `maDanhMuc` int(11) NOT NULL,
  `thoiGianNhap` datetime DEFAULT NULL,
  `giaTien` float NOT NULL,
  `soLuong` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `maDanhMuc` int(11) NOT NULL,
  `tenDanhMuc` varchar(11) NOT NULL,
  `moTa` varchar(300) NOT NULL,
  `trangThaiSanPham` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `maDonHang` int(11) NOT NULL,
  `maKhachHang` int(11) NOT NULL,
  `maNhanVien` int(11) NOT NULL,
  `ghiChu` varchar(300) NOT NULL,
  `tongGia` float NOT NULL,
  `thoiGian` datetime NOT NULL,
  `trangThaiDonHang` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `maKhachHang` int(11) NOT NULL,
  `tenDangNhap` varchar(50) NOT NULL,
  `mauKhau` varchar(50) NOT NULL,
  `tenKhachHang` varchar(300) NOT NULL,
  `diaChi` varchar(300) NOT NULL,
  `email` varchar(100) NOT NULL,
  `soDienThoai` varchar(10) NOT NULL,
  `ngayDangKi` datetime DEFAULT NULL,
  `trangThaiTaiKhoan` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaicongviec`
--

CREATE TABLE `loaicongviec` (
  `maCongViec` int(11) NOT NULL,
  `tenCongViec` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `maNhaCungCap` int(11) NOT NULL,
  `tenNhaCungCap` varchar(100) NOT NULL,
  `mota` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `maNhanVien` int(11) NOT NULL,
  `tenDangNhap` varchar(50) NOT NULL,
  `mauKhau` varchar(50) NOT NULL,
  `tenNhanVien` varchar(300) NOT NULL,
  `diaChi` varchar(300) NOT NULL,
  `email` varchar(100) NOT NULL,
  `soDienThoai` varchar(10) NOT NULL,
  `ngayDangKi` datetime DEFAULT NULL,
  `trangThaiTaiKhoan` int(1) NOT NULL,
  `maLoaiCongViec` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `maPhieuNhap` int(11) NOT NULL,
  `tongTien` float NOT NULL,
  `thoiGianNhap` datetime DEFAULT NULL,
  `maNhanVien` int(11) NOT NULL,
  `ghichu` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `maPhieuXuat` int(11) NOT NULL,
  `tongTien` float NOT NULL,
  `thoiGianXuat` datetime DEFAULT NULL,
  `maNhanVien` int(11) NOT NULL,
  `ghichu` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanly`
--

CREATE TABLE `quanly` (
  `maQuanLy` int(11) NOT NULL,
  `tenDangNhap` varchar(50) NOT NULL,
  `matKhau` varchar(50) NOT NULL,
  `tenQuanLy` varchar(100) NOT NULL,
  `diaChi` varchar(400) NOT NULL,
  `email` varchar(100) NOT NULL,
  `soDienThoai` varchar(10) NOT NULL,
  `NgayDangKi` datetime DEFAULT NULL,
  `trangThaiTaiKhoan` int(1) NOT NULL,
  `phanQuyen` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `maSanPham` int(11) NOT NULL,
  `maDanhMuc` int(11) NOT NULL,
  `tenSanPham` varchar(100) NOT NULL,
  `moTa` varchar(300) NOT NULL,
  `soLuong` int(4) NOT NULL,
  `trangThaiSanPham` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trangthaisanpham`
--

CREATE TABLE `trangthaisanpham` (
  `maTrangThai` int(11) NOT NULL,
  `tenTrangThai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trangthaithucthe`
--

CREATE TABLE `trangthaithucthe` (
  `maTrangThai` int(1) NOT NULL,
  `tenTrangThai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`maBinhLuan`),
  ADD KEY `FK_BinhLuanMaSanPham` (`maSanPham`),
  ADD KEY `FK_BinhLuanMaKhachHang` (`maKhachHang`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`maDonHang`,`maSanPham`);

--
-- Chỉ mục cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`maPhieuNhap`,`maSanPham`,`maDanhMuc`),
  ADD KEY `FK_CTPhieuNhapMaSanPham` (`maSanPham`),
  ADD KEY `FK_CTPhieuNhapMaDanhMuc` (`maDanhMuc`);

--
-- Chỉ mục cho bảng `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  ADD PRIMARY KEY (`maPhieuXuat`,`maSanPham`,`maDanhMuc`),
  ADD KEY `FK_CTPhieuXuatMaSanPham` (`maSanPham`),
  ADD KEY `FK_CTPhieuXuatMaDanhMuc` (`maDanhMuc`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`maDanhMuc`),
  ADD KEY `FK_DanhMucMaTrangThai` (`trangThaiSanPham`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`maDonHang`),
  ADD KEY `FK_DonHangMaKH` (`maKhachHang`),
  ADD KEY `FK_DonHangMaNV` (`maNhanVien`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`maKhachHang`),
  ADD KEY `FK_KhachHangTrangThaiTK` (`trangThaiTaiKhoan`);

--
-- Chỉ mục cho bảng `loaicongviec`
--
ALTER TABLE `loaicongviec`
  ADD PRIMARY KEY (`maCongViec`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`maNhaCungCap`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`maNhanVien`),
  ADD KEY `FK_NhanVienTrangThaiTaiKhoan` (`trangThaiTaiKhoan`),
  ADD KEY `FK_NhanVienMaLoaiCV` (`maLoaiCongViec`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`maPhieuNhap`),
  ADD KEY `FK_PhieuNhapMaNV` (`maNhanVien`);

--
-- Chỉ mục cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`maPhieuXuat`),
  ADD KEY `FK_PhieuXuatMaNV` (`maNhanVien`);

--
-- Chỉ mục cho bảng `quanly`
--
ALTER TABLE `quanly`
  ADD PRIMARY KEY (`maQuanLy`),
  ADD KEY `FK_TrangThaiTKQL` (`trangThaiTaiKhoan`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`maSanPham`),
  ADD KEY `FK_DanhMuc` (`maDanhMuc`),
  ADD KEY `FK_TrangThai` (`trangThaiSanPham`);

--
-- Chỉ mục cho bảng `trangthaisanpham`
--
ALTER TABLE `trangthaisanpham`
  ADD PRIMARY KEY (`maTrangThai`);

--
-- Chỉ mục cho bảng `trangthaithucthe`
--
ALTER TABLE `trangthaithucthe`
  ADD PRIMARY KEY (`maTrangThai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `maBinhLuan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `maDanhMuc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `maDonHang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `maKhachHang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `loaicongviec`
--
ALTER TABLE `loaicongviec`
  MODIFY `maCongViec` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `maNhaCungCap` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `maNhanVien` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `maPhieuNhap` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `maPhieuXuat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `quanly`
--
ALTER TABLE `quanly`
  MODIFY `maQuanLy` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `maSanPham` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `trangthaisanpham`
--
ALTER TABLE `trangthaisanpham`
  MODIFY `maTrangThai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `trangthaithucthe`
--
ALTER TABLE `trangthaithucthe`
  MODIFY `maTrangThai` int(1) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `FK_BinhLuanMaKhachHang` FOREIGN KEY (`maKhachHang`) REFERENCES `khachhang` (`maKhachHang`),
  ADD CONSTRAINT `FK_BinhLuanMaSanPham` FOREIGN KEY (`maSanPham`) REFERENCES `sanpham` (`maSanPham`);

--
-- Các ràng buộc cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `FK_CTPhieuNhapMaDanhMuc` FOREIGN KEY (`maDanhMuc`) REFERENCES `danhmuc` (`maDanhMuc`),
  ADD CONSTRAINT `FK_CTPhieuNhapMaPN` FOREIGN KEY (`maPhieuNhap`) REFERENCES `phieunhap` (`maPhieuNhap`),
  ADD CONSTRAINT `FK_CTPhieuNhapMaPhieuNhap` FOREIGN KEY (`maPhieuNhap`) REFERENCES `phieunhap` (`maPhieuNhap`),
  ADD CONSTRAINT `FK_CTPhieuNhapMaSanPham` FOREIGN KEY (`maSanPham`) REFERENCES `sanpham` (`maSanPham`);

--
-- Các ràng buộc cho bảng `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  ADD CONSTRAINT `FK_CTPhieuXuatMaDanhMuc` FOREIGN KEY (`maDanhMuc`) REFERENCES `danhmuc` (`maDanhMuc`),
  ADD CONSTRAINT `FK_CTPhieuXuatMaPX` FOREIGN KEY (`maPhieuXuat`) REFERENCES `phieuxuat` (`maPhieuXuat`),
  ADD CONSTRAINT `FK_CTPhieuXuatMaPhieuXuat` FOREIGN KEY (`maPhieuXuat`) REFERENCES `phieuxuat` (`maPhieuXuat`),
  ADD CONSTRAINT `FK_CTPhieuXuatMaSanPham` FOREIGN KEY (`maSanPham`) REFERENCES `sanpham` (`maSanPham`);

--
-- Các ràng buộc cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD CONSTRAINT `FK_DanhMucMaTrangThai` FOREIGN KEY (`trangThaiSanPham`) REFERENCES `trangthaisanpham` (`maTrangThai`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `FK_DonHangMaKH` FOREIGN KEY (`maKhachHang`) REFERENCES `khachhang` (`maKhachHang`),
  ADD CONSTRAINT `FK_DonHangMaNV` FOREIGN KEY (`maNhanVien`) REFERENCES `nhanvien` (`maNhanVien`);

--
-- Các ràng buộc cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `FK_KhachHangTrangThaiTK` FOREIGN KEY (`trangThaiTaiKhoan`) REFERENCES `trangthaithucthe` (`maTrangThai`);

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `FK_NhanVienMaLoaiCV` FOREIGN KEY (`maLoaiCongViec`) REFERENCES `loaicongviec` (`maCongViec`),
  ADD CONSTRAINT `FK_NhanVienTrangThaiTK` FOREIGN KEY (`trangThaiTaiKhoan`) REFERENCES `trangthaithucthe` (`maTrangThai`),
  ADD CONSTRAINT `FK_NhanVienTrangThaiTaiKhoan` FOREIGN KEY (`trangThaiTaiKhoan`) REFERENCES `trangthaithucthe` (`maTrangThai`);

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `FK_PhieuNhapMaNV` FOREIGN KEY (`maNhanVien`) REFERENCES `nhanvien` (`maNhanVien`);

--
-- Các ràng buộc cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `FK_PhieuXuatMaNV` FOREIGN KEY (`maNhanVien`) REFERENCES `nhanvien` (`maNhanVien`);

--
-- Các ràng buộc cho bảng `quanly`
--
ALTER TABLE `quanly`
  ADD CONSTRAINT `FK_TrangThaiTKQL` FOREIGN KEY (`trangThaiTaiKhoan`) REFERENCES `trangthaithucthe` (`maTrangThai`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK_DanhMuc` FOREIGN KEY (`maDanhMuc`) REFERENCES `danhmuc` (`maDanhMuc`),
  ADD CONSTRAINT `FK_TrangThai` FOREIGN KEY (`trangThaiSanPham`) REFERENCES `trangthaisanpham` (`maTrangThai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
