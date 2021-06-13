-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 13, 2021 lúc 01:53 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `demo_sqli`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notepad`
--

CREATE TABLE `notepad` (
  `username` varchar(30) DEFAULT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `notepad`
--

INSERT INTO `notepad` (`username`, `data`) VALUES
('admin', 'Anh là tay to khá là hay lo\r\n\r\nNhưng anh lại hay lo nên phen này gay to\r\n\r\nEm này trông xinh hơi bị thông minh\r\n\r\nMà nhìn em lại chất nhưng em đi một mình\r\n\r\nEm muốn quên đi một cuộc tình\r\n\r\nKhông cho tình yêu chơi đùa mình\r\n\r\nNhưng mà quá khứ em chìm sâu\r\n\r\nEm quay cuồng trong ánh đèn màu\r\n\r\nMà em không biết lối ra đâu\r\n\r\nChỉ mong ngày dài trôi qua mau\r\n\r\nAnh ra chuyện trò đôi ba câu\r\n\r\nVì những thứ làm ta đau\r\n\r\nHey girl khi em bước ra đường (bước ra đường)\r\n\r\nĐây không phải nước hoa thường mà là Louis v\r\n\r\nBaby girl em quá ngọt em rất khác bọt\r\n\r\nAnh thấy cả yết kiêu đang bơi trong đôi mắt em\r\n\r\n(Ok anh đã trằn trọc suốt đêm qua đặt ra một câu hỏi tại sao tên em không phải là mẫn nhi\r\n\r\nVà nếu em có thắc mắc về vấn đề đấy thì em có thể đọc ngược nó lại\r\n\r\nTrên thế giới có hơn 7 tỷ nụ cười nhưng mà với anh nụ cười em mới là đẹp nhất\r\n\r\nThế nên là làm ơn hãy để anh giúp em giữ nụ cười của em trên môi)\r\n\r\nAnh sẽ tán nàng x2 yeah\r\n\r\nKhông cần cầu kì cho dù nhà anh bán vàng yeahhh\r\n\r\nAnh đưa em đi vi vu dạo phố quanh Hồ Tây táp vào Circle K\r\n\r\nNhớ mua thêm nước vào mình ngồi trà đá em châm cho anh phê thuốc lào'),
('guest', 'you are not admin.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(6) UNSIGNED NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123'),
(2, 'guest', 'guest123');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
