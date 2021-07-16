-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 16 Tem 2021, 10:30:10
-- Sunucu sürümü: 8.0.17
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `proje`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(11) NOT NULL,
  `ayar_logo` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_title` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_description` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_keywords` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_author` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_tel` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_faks` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_ilce` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_il` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mesai` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_maps` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_analystic` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_zopim` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_facebook` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_twitter` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_google` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_youtube` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtphost` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpuser` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtppassword` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpport` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_bakim` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_logo`, `ayar_title`, `ayar_description`, `ayar_keywords`, `ayar_author`, `ayar_tel`, `ayar_gsm`, `ayar_faks`, `ayar_mail`, `ayar_ilce`, `ayar_il`, `ayar_adres`, `ayar_mesai`, `ayar_maps`, `ayar_analystic`, `ayar_zopim`, `ayar_facebook`, `ayar_twitter`, `ayar_google`, `ayar_youtube`, `ayar_smtphost`, `ayar_smtpuser`, `ayar_smtppassword`, `ayar_smtpport`, `ayar_bakim`) VALUES
(0, 'dimg/25086Urun.JPG', 'Stajyerin', 'Stajyerlerin çalıştığı çirketleri hakkındaki yorumları', 'Stajyer,Yorum,Bilgi,Stajyerler,Okul,Üniversite,Lis', 'Bünyamin Göksu', '02122121212', '02122121212', '02122121212', 'goksu-bunyamin@hotmail.com', 'Beşiktaş', 'İstanbul', 'bla bla', '7 x 24 açık E-Ticaret Scripti', 'ayar_maps', 'ayar_analystic', 'ayar_zopim', 'www.facebook.com', 'www.twitter.com', 'www.google.com', 'www.youtube.com', 'mail.alanadiniz.com', 'user', 'password', '587', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banka`
--

CREATE TABLE `banka` (
  `banka_id` int(11) NOT NULL,
  `banka_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_iban` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_hesapadsoyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `banka`
--

INSERT INTO `banka` (`banka_id`, `banka_ad`, `banka_iban`, `banka_hesapadsoyad`, `banka_durum`) VALUES
(1, 'Garanti Bankası', 'TR50 50 88970 8 897 871 82 0 ', 'Bünyamin Göksu', '1'),
(2, 'Yapı Kredi', '20202051475065418714', 'Bünyamin Göksu', '1'),
(3, 'Vakıf Bank', 'TR25 2525252525252525', 'Bünyamin Göksu', '1'),
(4, 'Ziraat Bankası', 'TR19 05190519051905', 'Bünyamin Göksu', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(11) NOT NULL,
  `hakkimizda_baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_vizyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_misyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_icerik`, `hakkimizda_vizyon`, `hakkimizda_misyon`) VALUES
(0, 'Goxu E-Ticaret', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', 'Hakkımızda vizyon içerikleri buaraya girecek', 'Hakkımızda misyon içerikleri buaraya girecek');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_ust` int(2) NOT NULL,
  `kategori_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_sira` int(2) NOT NULL,
  `kategori_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_ad`, `kategori_ust`, `kategori_seourl`, `kategori_sira`, `kategori_durum`) VALUES
(3, 'Tshirtler', 0, 'tshirtler', 2, '1'),
(4, 'Pantolon', 0, 'pantolon', 3, '1'),
(5, 'Bluejean', 0, 'bluejean', 4, '1'),
(6, 'Bluz', 0, 'bluz', 5, '1'),
(7, 'Şapka', 0, 'sapka', 6, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `kullanici_zaman` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kullanici_resim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_tc` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_mail` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_password` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adsoyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_il` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ilce` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_unvan` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_yetki` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_durum` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_zaman`, `kullanici_resim`, `kullanici_tc`, `kullanici_ad`, `kullanici_mail`, `kullanici_gsm`, `kullanici_password`, `kullanici_adsoyad`, `kullanici_adres`, `kullanici_il`, `kullanici_ilce`, `kullanici_unvan`, `kullanici_yetki`, `kullanici_durum`) VALUES
(2, '2021-05-05 16:33:44', '', '12345678901', 'Bünyamin', 'admin@admin.com', '05349199437', '12345678', 'Bünyamin Göksu', '', 'İstanbul', 'Fulya', '', '5', 1),
(9, '2021-05-10 21:33:16', '', '', '', 'goksu-bunyamin@hotmail.com', '', '25d55ad283aa400af464c76d713c07ad', 'Bünyamin Göksu', '', '', '', '', '1', 1),
(10, '2021-05-22 16:39:10', '', '', '', 'barknsebr@hotmail.com', '', '25d55ad283aa400af464c76d713c07ad', 'Barkın Şeber', '', '', '', '', '1', 1),
(11, '2021-05-31 21:51:28', '', '', '', 'gnccansu@hotmail.com', '', '202cb962ac59075b964b07152d234b70', 'Cansu Genç', '', '', '', '', '1', 1),
(12, '2021-06-09 22:38:09', '', '', '', 'ygoksu@outlook.com', '', '25d55ad283aa400af464c76d713c07ad', 'adsfgdhtrgsfafd', '', '', '', '', '1', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_ust` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `menu_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `menu_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `menu_url` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `menu_sira` int(2) NOT NULL,
  `menu_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `menu_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_ust`, `menu_ad`, `menu_detay`, `menu_url`, `menu_sira`, `menu_durum`, `menu_seourl`) VALUES
(1, '0', 'Hakkımızda', '', 'hakkimizda.php', 1, '1', ''),
(3, '', 'Gizlilik Koşullarımız', '<p>Amacımız mahremiyetinizi ve İnternet &uuml;zerinden bize sunduğunuz bilgileri korumaktır. PepsiCo bu internet sitesini Amerika Birleşik Devletleri&rsquo;nin New York Eyaleti&rsquo;nin Purchase şehrindeki ofisinden işletmektedir. Bu internet sitesiyle ilgili b&uuml;t&uuml;n konular Amerika Birleşik Devletleri&rsquo;nin New York Eyaleti&rsquo;nin kanunlarına tabidir ve onlar kapsamında yorumlanır.</p>\r\n\r\n<p>Bu internet sitesine erişerek bu Gizlilik Koşulları&rsquo;nı ve bu siteye yazılmış Kullanım Şartları&rsquo;nı kabul ettiğinizi belirtirsiniz.</p>\r\n\r\n<p>Bu internet sitesi 13 yaşın altındaki &ccedil;ocuklara y&ouml;nelik değildir ve sitede 13 yaşın altındaki &ccedil;ocuklardan bilerek kişisel bilgi toplamayız. Eğer sitede kasıtsız olarak 13 yaşın altındaki bir ziyaret&ccedil;inin kişisel bilgilerini aldığımızın farkına varırsak, bu bilgileri kayıtlarımızdan sileriz.</p>\r\n\r\n<p>Diğer Sitelere Bağlantı Verme&nbsp;<br />\r\nBu politika www.PepsiCo.com&rsquo;u (PepsiCo&rsquo;nun kurumsal internet sitesini) kapsar. İştiraklerimizden ve/veya programlarımızdan bazıları kendi, muhtemelen farklı politikalarını kendi internet sitelerine yazabilirler. Sizi o internet sitelerine bağlantı verirken o politikaları g&ouml;zden ge&ccedil;irmeye teşvik ediyoruz.</p>\r\n\r\n<p>Topladığımız bilgiler ve onları kullanım şeklimiz&nbsp;<br />\r\nKişisel Bilgiler &ndash; Bu internet sitesinde kişisel bilgiler (isminiz, adresiniz, telefon numaranız ve e-posta adresiniz gibi) verebilirsiniz. Bilgileri vermek i&ccedil;in kullanabileceğiniz bazı y&ouml;ntemler ve verebileceğiniz bilgi tipleri aşağıdadır. Size bilgiyi nasıl kullanabileceğimizi de a&ccedil;ıklayacağız.</p>\r\n\r\n<p>Bizimle İrtibat Kurun- Sitedeki &ldquo;Bizimle İrtibat Kurun&rdquo; bağlantısından bize e-posta g&ouml;nderirseniz sorularınıza ve yorumlarınıza cevap verebilmek i&ccedil;in sizden isminiz ve e-posta adresiniz gibi bilgiler isteriz. İlave bilgiler de verebilirsiniz.</p>\r\n\r\n<p>İ&ccedil;eriği Bir Arkadaşa Yolla &ndash; Bazı i&ccedil;erikleri arkadaşlarınıza yollayabilirsiniz. Bunu yapmak i&ccedil;in sizden isminizi ve arkadaşınızın e-posta adresini vermenizi isteriz. Bu bilgiyi i&ccedil;eriği arkadaşınıza yollamak i&ccedil;in kullanırız.</p>\r\n\r\n<p>Internet Protokol&uuml; Adresi&nbsp;<br />\r\nSitemizin b&uuml;t&uuml;n ziyaret&ccedil;ilerinin İnternet Protokol&uuml; adreslerini toplarız. IP adresinizi sitemizi y&ouml;netmemize yardımcı olmak i&ccedil;in kullanırız. IP adresiniz sitemizi ne zaman ziyaret ettiğinizi belirlemek i&ccedil;in de kullanılır.</p>\r\n\r\n<p>Paylaştığımız Bilgiler&nbsp;<br />\r\nİnternet sitemizin ziyaret&ccedil;ileri hakkındaki kişisel bilgileri burada a&ccedil;ıklanan haller haricinde satmayız ya da başka bir suretle a&ccedil;ıklamayız. Bu sitenin ziyaret&ccedil;ilerinin sağladığı bilgileri adımıza hizmetler y&uuml;r&uuml;tmek i&ccedil;in tuttuğumuz hizmet sağlayıcılarla paylaşabiliriz. Bu hizmet sağlayıcıların adımıza hizmetler y&uuml;r&uuml;tmek ya da yasal gereksinimlere uymak i&ccedil;in gerekli olan haller dışında bu bilgileri kullanmaları ya da a&ccedil;ıklamaları yasaktır. Ek olarak, (i) kanunen ya da yasal bir s&uuml;re&ccedil; nedeniyle a&ccedil;ıklamamız gerekiyorsa, (ii) emniyet g&ouml;revlilerine ya da diğer devlet yetkililerine (iii) a&ccedil;ıklamanın fiziksel hasarı veya mali kaybı &ouml;nlemek veya ş&uuml;pheli veya ger&ccedil;ek yasadışı faaliyete ilişkin bir soruşturmayla ilişkili olarak gerekli veya uygun olduğunu d&uuml;ş&uuml;nd&uuml;ğ&uuml;m&uuml;z zaman hakkınızdaki bilgileri a&ccedil;ıklayabiliriz.</p>\r\n\r\n<p>Şirketimizin ya da varlıklarımızın tamamını ya da bir kısmını satmamız ya da devretmemiz halinde hakkınızdaki bilgileri devretme hakkını saklı tutarız. B&ouml;yle bir satış ya da devir meydana gelirse, devralanı bu internet sitesinden verdiğiniz kişisel bilgileri bu Gizlilik Koşulları&rsquo;na uygun bir şekilde kullanmaya teşvik etmek i&ccedil;in makul &ccedil;aba g&ouml;stereceğiz.</p>\r\n\r\n<p>Aktardığımız Bilgiler&nbsp;<br />\r\nBu sitede topladığımız kişisel bilgileri iş yaptığımız diğer &uuml;lkelere aktarabiliriz, ama bunu sadece yukarıda a&ccedil;ıklanmış ama&ccedil;larla yapacağız. Bilgilerinizi diğer &uuml;lkelere aktardığımız zaman uygulanabilen kanunlar aksini gerektirmediği s&uuml;rece o bilgiyi burada a&ccedil;ıklandığı gibi koruyacağız.</p>\r\n\r\n<p>Kişisel Bilgiyi Nasıl Koruyoruz?&nbsp;<br />\r\nBu internet sitesinden verdiğiniz kişisel bilgileri yetkisiz a&ccedil;ıklanmaya, kullanıma, değiştirmeye ya da tahribata karşı korumak i&ccedil;in idari, teknik ve fiziksel tedbirler uyguluyoruz. Bu sitede verdiğiniz kişisel bilgilerin g&uuml;venli kalması i&ccedil;in G&uuml;venli Şifreleme Protokol&uuml; (SSL) teknolojisini kullanıyoruz.</p>\r\n\r\n<p>Gizlilik Beyanımızın G&uuml;ncellemeleri&nbsp;<br />\r\nBu Gizlilik Beyanı &ccedil;evrimi&ccedil;i bilgi uygulamalarımızdaki değişiklikleri yansıtması i&ccedil;in periyodik olarak ve &ouml;nceden size haber verilmeden g&uuml;ncellenebilir. Gizlilik Beyanımızdaki &ouml;nemli değişiklikleri size bildirmek i&ccedil;in bu internet sitesine bir bildirim yazacak ve en son ne zaman g&uuml;ncellendiğini belirteceğiz.</p>\r\n\r\n<p>Bizimle İrtibat Kurma&nbsp;<br />\r\nEğer bu Gizlilik Beyanı hakkında sorularınız veya yorumlarınız varsa veya siz ya da tercihleriniz hakkındaki bilgileri g&uuml;ncellememizi istiyorsanız l&uuml;tfen aşağıda listelenen adreslerden ya da telefon numaralarından biri vasıtasıyla bizimle irtibat kurun.</p>\r\n', '', 4, '0', ''),
(4, '', 'İletişim', '', '', 3, '0', ''),
(6, '', 'Kategoriler', '', 'kategoriler', 2, '1', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `sepet_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_adet` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sepet`
--

INSERT INTO `sepet` (`sepet_id`, `kullanici_id`, `urun_id`, `urun_adet`) VALUES
(10, 10, 17, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis`
--

CREATE TABLE `siparis` (
  `siparis_id` int(11) NOT NULL,
  `siparis_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `siparis_no` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `siparis_toplam` float(9,2) NOT NULL,
  `siparis_tip` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `siparis_odeme` enum('0','1') COLLATE utf8_turkish_ci DEFAULT '0',
  `siparis_banka` varchar(50) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis`
--

INSERT INTO `siparis` (`siparis_id`, `siparis_zaman`, `siparis_no`, `kullanici_id`, `siparis_toplam`, `siparis_tip`, `siparis_odeme`, `siparis_banka`) VALUES
(750004, '2021-05-17 18:49:24', 0, 9, 173.00, 'Banka Havalesi', '0', 'Garanti Bankası'),
(750005, '2021-05-22 13:44:40', 0, 10, 246.00, 'Banka Havalesi', '0', 'Yapı Kredi'),
(750006, '2021-05-31 18:54:19', 0, 11, 492.00, 'Banka Havalesi', '0', 'Yapı Kredi'),
(750007, '2021-06-09 19:39:18', 0, 12, 246.00, 'Banka Havalesi', '0', 'Yapı Kredi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis_detay`
--

CREATE TABLE `siparis_detay` (
  `siparisdetay_id` int(11) NOT NULL,
  `siparis_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_adet` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis_detay`
--

INSERT INTO `siparis_detay` (`siparisdetay_id`, `siparis_id`, `urun_id`, `urun_fiyat`, `urun_adet`) VALUES
(6, 750004, 14, 50.00, 1),
(7, 750004, 13, 123.00, 1),
(8, 750005, 10, 123.00, 2),
(9, 750006, 10, 123.00, 3),
(10, 750006, 17, 123.00, 1),
(11, 750007, 10, 123.00, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `slider_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_sira` int(2) NOT NULL,
  `slider_link` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_resimyol`, `slider_sira`, `slider_link`, `slider_durum`) VALUES
(3, 'slider-2', 'dimg/slider/22752282622587525850slide-2.jpg', 2, '', '1'),
(4, 'slider-3', 'dimg/slider/30332284672522322894slide-3.jpg', 3, '', '1'),
(5, 'slider-4', 'dimg/slider/31283303792355525025slide-4.jpg', 4, '', '1'),
(6, 'slider-1', 'dimg/slider/28112292643112328443slide-1.jpg', 1, '', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun`
--

CREATE TABLE `urun` (
  `urun_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `urun_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `urun_ad` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `urun_keyword` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_stok` int(11) NOT NULL,
  `urun_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `urun_onecikar` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun`
--

INSERT INTO `urun` (`urun_id`, `kategori_id`, `urun_zaman`, `urun_ad`, `urun_seourl`, `urun_detay`, `urun_fiyat`, `urun_video`, `urun_keyword`, `urun_stok`, `urun_durum`, `urun_onecikar`) VALUES
(10, 7, '2021-05-11 14:08:16', 'Sarı Şapka', 'sari-sapka', '<p>%100 pamuk.</p>\r\n', 123.00, '', '', 12, '1', '1'),
(15, 3, '2021-05-21 18:54:38', 'BIIIZT', 'biiizt', '<p>ADSFDGHFJFGHGKJ</p>\r\n', 123.00, '', 'Tshirt,mavi,kırmızı', 12, '1', '0'),
(16, 5, '2021-05-21 18:55:13', 'Pantalon', 'pantalon', '', 25.00, '', 'skinny', 15, '1', '0'),
(17, 5, '2021-05-21 18:55:41', 'Mavi kot Pantolon', 'mavi-kot-pantolon', '', 123.00, '', 'gfdgf', 100, '1', '0'),
(18, 6, '2021-05-21 18:56:11', 'Bluz', 'bluz', '', 34.00, '', 'gfdgf', 45, '1', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunfoto`
--

CREATE TABLE `urunfoto` (
  `urunfoto_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urunfoto_resimyol` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `urunfoto_sira` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urunfoto`
--

INSERT INTO `urunfoto` (`urunfoto_id`, `urun_id`, `urunfoto_resimyol`, `urunfoto_sira`) VALUES
(5, 10, 'dimg/urun/28155262022161030649erkek-kasket-peaky-blinders-driver-kasmir-sapka-bere-fotr-cp224-kc1403887-1-b4fc1e136df545bea67cdcdbe438abf3.jpg', 1),
(6, 10, 'dimg/urun/24432226912227130798I3350AZ_18SP_BK23_01_02.jpg', 3),
(7, 10, 'dimg/urun/20814215642675227098indir.jfif', 2),
(8, 10, 'dimg/urun/319602871031298217067c46f4b9-09d0-463e-93d3-aeff2c0c23de_size1500x1875_quality90_cropCenter.jpg', 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yorum_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `yorum_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `yorum_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yorum_onay` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  `urun_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`yorum_id`, `kullanici_id`, `yorum_detay`, `yorum_zaman`, `yorum_onay`, `urun_id`) VALUES
(15, 10, 'LIK LIK', '2021-05-22 13:42:01', '1', 10);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `banka`
--
ALTER TABLE `banka`
  ADD PRIMARY KEY (`banka_id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`hakkimizda_id`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`sepet_id`);

--
-- Tablo için indeksler `siparis`
--
ALTER TABLE `siparis`
  ADD PRIMARY KEY (`siparis_id`);

--
-- Tablo için indeksler `siparis_detay`
--
ALTER TABLE `siparis_detay`
  ADD PRIMARY KEY (`siparisdetay_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Tablo için indeksler `urun`
--
ALTER TABLE `urun`
  ADD PRIMARY KEY (`urun_id`);

--
-- Tablo için indeksler `urunfoto`
--
ALTER TABLE `urunfoto`
  ADD PRIMARY KEY (`urunfoto_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yorum_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `banka`
--
ALTER TABLE `banka`
  MODIFY `banka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `sepet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `siparis`
--
ALTER TABLE `siparis`
  MODIFY `siparis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=750008;

--
-- Tablo için AUTO_INCREMENT değeri `siparis_detay`
--
ALTER TABLE `siparis_detay`
  MODIFY `siparisdetay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `urun`
--
ALTER TABLE `urun`
  MODIFY `urun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `urunfoto`
--
ALTER TABLE `urunfoto`
  MODIFY `urunfoto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yorum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
