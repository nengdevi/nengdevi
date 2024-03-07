-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Mar 2024 pada 10.25
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2021-04-devi-tokoonline`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$AIy0X1Ep6alaHDTofiChGeqq7k/d1Kc8vKQf1JZo0mKrzkkj6M626');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bom_produk`
--

CREATE TABLE `bom_produk` (
  `kode_bom` varchar(100) NOT NULL,
  `kode_bk` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `kebutuhan` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bom_produk`
--

INSERT INTO `bom_produk` (`kode_bom`, `kode_bk`, `kode_produk`, `nama_produk`, `kebutuhan`) VALUES
('B0001', 'M0003', 'P0001', 'donat', '0.5'),
('B0001', 'M0002', 'P0001', 'donat', '0.5'),
('B0001', 'M0001', 'P0001', 'donat', '0.5'),
('B0002', 'M0001', 'P0002', 'kue ultah anak', ''),
('B0001', 'M0004', 'P0001', 'donat', '0.5'),
('B0002', 'M0002', 'P0002', 'kue ultah anak', ''),
('B0002', 'M0003', 'P0002', 'kue ultah anak', ''),
('B0002', '	M0004', 'P0002', 'kue ultah anak', ''),
('B0003', 'M0001', 'P0003', 'kue ultah estetik', ''),
('B0003', 'M0002', 'P0003', 'kue ultah estetik', ''),
('B0003', 'M0003', 'P0003', 'kue ultah estetik', ''),
('B0003', 'M0004', 'P0003', 'kue ultah estetik', ''),
('B0004', 'M0001', 'P0004', 'kue kering', '0.5'),
('B0004', 'M0002', 'P0004', 'kue kering', '0.5'),
('B0004', 'M0003', 'P0004', 'kue kering', '0.5'),
('B0004', 'M0004', 'P0004', 'kue kering', '0.5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `kode_customer` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `telp` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`kode_customer`, `nama`, `email`, `username`, `password`, `telp`) VALUES
('C0005', 'a', 'a@a', 'a', '$2y$10$9uufFHMSRq41R1ql6nA01.oXwFo17kSAZsjM3F1yftpYy1wK5K572', '1'),
('C0006', 'z', 'z@z', 'z', '$2y$10$oI7lkFv8QonWwcJX0dROxuZavl7HrLxMqGSQlaD0FikhACguOfJOe', '12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventory`
--

CREATE TABLE `inventory` (
  `kode_bk` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `satuan` varchar(200) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `inventory`
--

INSERT INTO `inventory` (`kode_bk`, `nama`, `qty`, `satuan`, `harga`, `tanggal`) VALUES
('M0001', 'Mentega', '199.5', 'kg', 30000, '2024-03-02'),
('M0002', 'Terigu', '199.5', 'kg', 8000, '2024-03-02'),
('M0003', 'Telur', '1.5', 'Kg', 30000, '2024-03-02'),
('M0004', 'strawberry', '20', 'gram', 15000, '2024-03-02'),
('M0005', 'bahan kue ultah', '12', 'gram', 45000, '2024-03-04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `kode_customer` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `kode_customer`, `kode_produk`, `nama_produk`, `qty`, `harga`) VALUES
(26, 'C0006', 'P0002', 'kue ultah anak', 1, 120000),
(27, 'C0006', 'P0003', 'kue ultah estetik', 1, 150000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `kode_produk` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`kode_produk`, `nama`, `image`, `deskripsi`, `harga`) VALUES
('P0001', 'donat', '65e58dfc446d1.jpg', 'Donat memiliki tekstur yang lembut di bagian dalamnya dan kerak yang renyah di luar. Beberapa donat juga dilapisi dengan gula bubuk, glazur, atau hiasan lainnya untuk menambahkan rasa dan estetika. Donat sering kali disajikan sebagai camilan atau hidangan ringan, dan dapat ditemui dalam berbagai variasi rasa, mulai dari donat gula biasa hingga donat berisi krim, selai, atau cokelat.\r\n			', 5000),
('P0002', 'kue ultah anak', '65e5902024b76.jpg', 'Lapisan dan Isian Menarik: Kue ini biasanya memiliki lapisan-lapisan yang lezat dan isian yang menarik. Ini bisa berupa krim, selai, atau bahkan cokelat cair. Kombinasi rasa yang menggugah selera menjadi salah satu daya tarik utama.\r\n\r\nHiasan Gula atau Fondant: Kue ulang tahun anak sering kali dihiasi dengan hiasan gula atau fondant yang membentuk gambar atau karakter-karakter tertentu, menambahkan elemen estetika yang lebih khusus.\r\n\r\nCandle Ulang Tahun: Sebuah kue ulang tahun anak tidak lengkap tanpa lilin-lilin ulang tahun yang dinyalakan. Biasanya, ada lilin yang mencerminkan usia anak, dan momen menyalakan lilin menjadi salah satu highlight dalam perayaan.\r\n			', 120000),
('P0003', 'kue ultah estetik', '65e590b69ffa9.jpg', 'Kue ulang tahun dewasa sering kali memiliki karakteristik yang lebih elegan dan rafin, mencerminkan selera dan gaya orang dewasa. Berikut adalah deskripsi umum untuk kue ulang tahun dewasa:\r\n\r\nWarna dan Desain Elegan: Kue ini cenderung memiliki warna-warna yang lebih dewasa dan desain yang elegan. Pilihan warna bisa mencakup nuansa seperti emas, perak, biru tua, atau marun, memberikan kesan kemewahan.\r\n\r\nDekorasi Minimalis atau Modern: Beberapa kue ulang tahun dewasa mungkin lebih condong pada dekorasi yang minimalis atau desain modern. Hiasan-hiasan seperti garis-garis bersih, pola geometris, atau elemen dekoratif yang sederhana dapat mendominasi desain kue.\r\n\r\nBahan-bahan Berkualitas Tinggi: Kue ini umumnya terbuat dari bahan-bahan berkualitas tinggi, seperti cokelat premium, krim mentega yang lembut, atau bahan-bahan lain yang memberikan rasa dan tekstur istimewa.\r\n\r\nIsian dan Lapisan yang Menyeluruh: Kue dewasa mungkin memiliki isian yang lebih kompleks dan lapisan yang beragam untuk memberikan pengalaman rasa yang kaya. Misalnya, kue bisa diisi dengan mousse, krim buah, atau berbagai jenis selai.\r\n\r\nHiasan Artistik atau Edible Art: Beberapa kue dewasa sering kali dihiasi dengan elemen artistik yang dapat dimakan, seperti bunga-bunga yang dibuat dari fondant atau hiasan-hiasan khusus yang mendukung tema atau minat yang spesifik.\r\n\r\nPesanan Khusus: Kue ulang tahun dewasa sering kali dipesan secara khusus sesuai dengan selera dan minat pribadi. Pesanan ini bisa melibatkan tema yang unik, logo, atau elemen khusus lainnya yang merayakan kehidupan dan pencapaian sang penerima kue.\r\n\r\nPesan Personal atau Desain Khusus: Beberapa kue dewasa mungkin memiliki pesan atau desain khusus yang mencerminkan karakter, hobi, atau pencapaian individu. Ini bisa termasuk pesan motivasi, kata-kata bijak, atau simbol yang memiliki makna pribadi.Kue ulang tahun dewasa sering kali menjadi karya seni yang indah dan lezat, memberikan pengalaman yang istimewa dan memperingati momen spesial dalam kehidupan seseorang.\r\n			', 150000),
('P0004', 'kue kering', '65e59152d5627.jpeg', 'kue kering banyak varian cocok untuk cemilan di hari raya\r\n			', 30000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produksi`
--

CREATE TABLE `produksi` (
  `id_order` int(11) NOT NULL,
  `invoice` varchar(200) NOT NULL,
  `kode_customer` varchar(200) NOT NULL,
  `kode_produk` varchar(200) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `provinsi` varchar(200) NOT NULL,
  `kota` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kode_pos` varchar(200) NOT NULL,
  `terima` varchar(200) NOT NULL,
  `tolak` varchar(200) NOT NULL,
  `cek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_cancel`
--

CREATE TABLE `report_cancel` (
  `id_report_cancel` int(11) NOT NULL,
  `id_order` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_inventory`
--

CREATE TABLE `report_inventory` (
  `id_report_inv` int(11) NOT NULL,
  `kode_bk` varchar(100) NOT NULL,
  `nama_bahanbaku` varchar(100) NOT NULL,
  `jml_stok_bk` int(11) NOT NULL,
  `tanggal` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_omset`
--

CREATE TABLE `report_omset` (
  `id_report_omset` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_omset` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `report _penjualan`
--

CREATE TABLE `report _penjualan` (
  `id_report_sell` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `jumlah_terjual` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_produksi`
--

CREATE TABLE `report_produksi` (
  `id_report_prd` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_profit`
--

CREATE TABLE `report_profit` (
  `id_report_profit` int(11) NOT NULL,
  `kode_bom` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(11) NOT NULL,
  `total_profit` varchar(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`kode_customer`);

--
-- Indeks untuk tabel `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`kode_bk`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`kode_produk`);

--
-- Indeks untuk tabel `produksi`
--
ALTER TABLE `produksi`
  ADD PRIMARY KEY (`id_order`);

--
-- Indeks untuk tabel `report_cancel`
--
ALTER TABLE `report_cancel`
  ADD PRIMARY KEY (`id_report_cancel`);

--
-- Indeks untuk tabel `report_inventory`
--
ALTER TABLE `report_inventory`
  ADD PRIMARY KEY (`id_report_inv`);

--
-- Indeks untuk tabel `report_omset`
--
ALTER TABLE `report_omset`
  ADD PRIMARY KEY (`id_report_omset`);

--
-- Indeks untuk tabel `report _penjualan`
--
ALTER TABLE `report _penjualan`
  ADD PRIMARY KEY (`id_report_sell`);

--
-- Indeks untuk tabel `report_produksi`
--
ALTER TABLE `report_produksi`
  ADD PRIMARY KEY (`id_report_prd`);

--
-- Indeks untuk tabel `report_profit`
--
ALTER TABLE `report_profit`
  ADD PRIMARY KEY (`id_report_profit`),
  ADD UNIQUE KEY `kode_bom` (`kode_bom`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `produksi`
--
ALTER TABLE `produksi`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `report_cancel`
--
ALTER TABLE `report_cancel`
  MODIFY `id_report_cancel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `report_inventory`
--
ALTER TABLE `report_inventory`
  MODIFY `id_report_inv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `report_omset`
--
ALTER TABLE `report_omset`
  MODIFY `id_report_omset` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `report _penjualan`
--
ALTER TABLE `report _penjualan`
  MODIFY `id_report_sell` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `report_produksi`
--
ALTER TABLE `report_produksi`
  MODIFY `id_report_prd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `report_profit`
--
ALTER TABLE `report_profit`
  MODIFY `id_report_profit` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
