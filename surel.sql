-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Apr 2022 pada 09.45
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `surel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `disposisi`
--

CREATE TABLE `disposisi` (
  `id_disposisi` int(11) NOT NULL,
  `no_surat` varchar(100) NOT NULL,
  `diteruskan` varchar(100) NOT NULL,
  `dari` varchar(100) NOT NULL,
  `dgn_hormat` varchar(100) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `sifat` varchar(100) NOT NULL,
  `perihal` text NOT NULL,
  `catatan` text NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `id_smasuk` int(11) NOT NULL,
  `v_read` int(11) NOT NULL,
  `tanggapan` text NOT NULL,
  `tujuan` text NOT NULL,
  `teruntuk` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `disposisi`
--

INSERT INTO `disposisi` (`id_disposisi`, `no_surat`, `diteruskan`, `dari`, `dgn_hormat`, `tgl_surat`, `tgl_diterima`, `sifat`, `perihal`, `catatan`, `id_pegawai`, `id_smasuk`, `v_read`, `tanggapan`, `tujuan`, `teruntuk`) VALUES
(28, 's-005', 'Kasubag', 'mashuda gntg', 'Proses lebih lanjut', '2021-11-03', '2021-11-03', 'Biasa', 'coba disposisi', '', 0, 0, 0, '0', 'KepalaKantorKesyahbandarandanOtoritasPelabuhanGresikII', 'Kasubag Tata Usaha'),
(29, 'S010', 'Staff', 'Huda', 'Tanggapan dan saran', '2022-03-09', '2022-03-15', 'Biasa', 'Gak penting', '', 0, 0, 0, '0', 'KepalaKantorKesyahbandarandanOtoritasPelabuhanGresikII', 'Kasubag Tata Usaha');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluar`
--

CREATE TABLE `keluar` (
  `id_skeluar` int(11) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `kode_surat` varchar(50) NOT NULL,
  `tgl_keluar` date NOT NULL,
  `ditujukan` varchar(100) NOT NULL,
  `perihal` varchar(100) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `lampiran` varchar(100) NOT NULL,
  `sifat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keluar`
--

INSERT INTO `keluar` (`id_skeluar`, `no_surat`, `kode_surat`, `tgl_keluar`, `ditujukan`, `perihal`, `keterangan`, `kategori`, `foto`, `status`, `id_pegawai`, `lampiran`, `sifat`) VALUES
(86, '4/K/S-0003/SEKRET', 'S-0003', '2021-10-26', 'sunoko2', 'acara penting ga', '<p>tes</p>\r\n', 'Undangan', '-', '', 0, '1 Lembar', 'Sangat Rahasia'),
(90, '112/s-0006/SEKRET', 's-0006', '2021-11-03', 'mashuda ganteng bgt', 'gak penting, cuma nyoba sumpah', '<p>besok kerja bakti ya suu</p>\r\n', 'Pemberitahuan', '-', '', 0, '1 Lembar', 'Umum'),
(91, '112/s-0007/SEKRET', 's-0007', '2021-11-04', 'Rahmat Arif', 'nyoba mat', '<p>rahmat idiot</p>\r\n', 'Pemberitahuan', '-', '', 0, '2 Lembar', 'Umum'),
(92, '112/s-0008/SEKRET', 's-0008', '2021-11-12', 'siapa aja', 'perihal apa asu', '<p>asu nyba aja ni. emosi kan bawaannya&nbsp;</p>\r\n', 'Permohonan', '-', '', 0, '2 Lembar', 'Biasa'),
(93, '112/s-007/SEKRET', 's-007', '2022-02-18', 'coba', 'apa aja', '<p>Besok libur</p>\r\n', 'Undangan', '-', '', 0, '1 Lembar', 'Biasa'),
(94, '112/s-008/SEKRET', 's-008', '2022-02-18', 'rrrrrr', 'nyoba mat', '<p>anji</p>\r\n', 'Permohonan', '-', '', 0, '1 Lembar', 'Biasa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `masuk`
--

CREATE TABLE `masuk` (
  `id_smasuk` int(11) NOT NULL,
  `no_surat` varchar(30) NOT NULL,
  `kode_surat` varchar(30) NOT NULL,
  `kategori` varchar(29) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `perihal` text NOT NULL,
  `tgl_masuk` date NOT NULL,
  `ditujukan` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  `foto` varchar(100) NOT NULL,
  `id_pegawai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `masuk`
--

INSERT INTO `masuk` (`id_smasuk`, `no_surat`, `kode_surat`, `kategori`, `pengirim`, `perihal`, `tgl_masuk`, `ditujukan`, `keterangan`, `foto`, `id_pegawai`) VALUES
(25, '007', 'S-001', 'Pemberitahuan', 'sunoko', 'undangan', '2021-10-19', 'Camat', 'surat gak penting penting banget', 'Surat_007.PNG', 0),
(26, '010', 'S010', 'Himbauan', 'Huda', 'testing', '2022-03-09', 'Sekcam', 'testing aja', 'Surat_010.PNG', 0),
(27, 's011', '011', 'Laporan', 'Hudaaja', 'cobain anjing', '2022-03-16', 'Bag.Program dan Keuangan', 'ngga ada ketrangan', 'Surat_s011.jpg', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `pangkat` varchar(30) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `akses` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `soft_delete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nip`, `nama`, `pangkat`, `jabatan`, `akses`, `username`, `password`, `soft_delete`) VALUES
(19, '19690301 199103 1 014', 'Drs. H. EDIE, M.AP', 'Penata Tk.1 (IV/b)', 'Admin', 'Operator', 'edie', 'edie', 0),
(21, '19701102 199603 1 004', 'YEDY KARYA EFENDY, S.Kom., M.M', 'Pembina (IV/b)', 'Kasubag', 'Kasubag', 'yedy', 'yedy', 1),
(29, '19821020 201001 1 012', 'DIAN SYAHRIAL RACHMAN,S.T', 'Penata (III/c)', 'Kepala Seksi Pendata', 'Staff', 'dian', 'dian', 1),
(31, '199825042022022005', 'ARDEWI SURIADI, S.E., M.Si', 'Pembina TK.1 (IV/b)', 'Sekdis', 'Sekdis', 'ardewi', 'ardewi', 1),
(49, '19670124 199203 1 003', 'TAUFIK HIDAYAT, S.E, M.M', 'Pembina(IV/a)', 'Admin', 'Operator', 'taufik', 'taufik', 0),
(50, '19681121 199902 2 001', 'ARNIWATY, S.E.,M.Si', 'Penata TK.1 (III/d)', 'Admin', 'Operator', 'arniwaty', 'arniwaty', 0),
(51, '19780918 200904 1 002', 'MUHAMAD ALAMSYAH, SEI.,M.Si', 'Penata Tk.1 (III/d)', 'Admin', 'Operator', 'alamsyah', 'alamsyah', 0),
(52, '197404101995032002', 'PANCARRRR, S.Pd', 'Penata (III/c)', 'Admin', 'Operator', 'pancar', 'pancar', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `disposisi`
--
ALTER TABLE `disposisi`
  ADD PRIMARY KEY (`id_disposisi`),
  ADD KEY `id_pegawai` (`id_pegawai`),
  ADD KEY `id_smasuk` (`id_smasuk`);

--
-- Indeks untuk tabel `keluar`
--
ALTER TABLE `keluar`
  ADD PRIMARY KEY (`id_skeluar`),
  ADD KEY `id_pegawai` (`id_pegawai`),
  ADD KEY `id_pegawai_2` (`id_pegawai`);

--
-- Indeks untuk tabel `masuk`
--
ALTER TABLE `masuk`
  ADD PRIMARY KEY (`id_smasuk`),
  ADD KEY `id_pegawai` (`id_pegawai`),
  ADD KEY `id_pegawai_2` (`id_pegawai`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `disposisi`
--
ALTER TABLE `disposisi`
  MODIFY `id_disposisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `keluar`
--
ALTER TABLE `keluar`
  MODIFY `id_skeluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT untuk tabel `masuk`
--
ALTER TABLE `masuk`
  MODIFY `id_smasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
