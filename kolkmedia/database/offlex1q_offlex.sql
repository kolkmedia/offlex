-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 24 jun 2021 om 16:33
-- Serverversie: 10.3.30-MariaDB
-- PHP-versie: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `offlex1q_offlex`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `timezone_id` int(10) UNSIGNED DEFAULT NULL,
  `date_format_id` int(10) UNSIGNED DEFAULT NULL,
  `datetime_format_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `invoice_terms` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_footer` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `industry_id` int(10) UNSIGNED DEFAULT NULL,
  `size_id` int(10) UNSIGNED DEFAULT NULL,
  `invoice_taxes` tinyint(1) NOT NULL DEFAULT 1,
  `invoice_item_taxes` tinyint(1) NOT NULL DEFAULT 0,
  `invoice_design_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `work_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `pro_plan_paid` date DEFAULT NULL,
  `custom_label1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_value1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_label2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_value2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_client_label1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_client_label2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fill_products` tinyint(1) NOT NULL DEFAULT 1,
  `update_products` tinyint(1) NOT NULL DEFAULT 1,
  `primary_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secondary_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hide_quantity` tinyint(1) NOT NULL DEFAULT 0,
  `hide_paid_to_date` tinyint(1) NOT NULL DEFAULT 0,
  `custom_invoice_label1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_invoice_label2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_invoice_taxes1` tinyint(1) DEFAULT NULL,
  `custom_invoice_taxes2` tinyint(1) DEFAULT NULL,
  `vat_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_design` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_number_prefix` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_number_counter` int(11) DEFAULT 1,
  `quote_number_prefix` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `quote_number_counter` int(11) DEFAULT 1,
  `share_counter` tinyint(1) NOT NULL DEFAULT 1,
  `id_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_template_invoice` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_template_quote` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_template_payment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `token_billing_type_id` smallint(6) NOT NULL DEFAULT 2,
  `invoice_footer` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf_email_attachment` smallint(6) NOT NULL DEFAULT 0,
  `custom_design` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `font_size` smallint(6) NOT NULL DEFAULT 10,
  `invoice_labels` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `accounts`
--

INSERT INTO `accounts` (`id`, `timezone_id`, `date_format_id`, `datetime_format_id`, `currency_id`, `created_at`, `updated_at`, `deleted_at`, `name`, `ip`, `account_key`, `last_login`, `address1`, `address2`, `city`, `state`, `postal_code`, `country_id`, `invoice_terms`, `email_footer`, `industry_id`, `size_id`, `invoice_taxes`, `invoice_item_taxes`, `invoice_design_id`, `work_phone`, `work_email`, `language_id`, `pro_plan_paid`, `custom_label1`, `custom_value1`, `custom_label2`, `custom_value2`, `custom_client_label1`, `custom_client_label2`, `fill_products`, `update_products`, `primary_color`, `secondary_color`, `hide_quantity`, `hide_paid_to_date`, `custom_invoice_label1`, `custom_invoice_label2`, `custom_invoice_taxes1`, `custom_invoice_taxes2`, `vat_number`, `invoice_design`, `invoice_number_prefix`, `invoice_number_counter`, `quote_number_prefix`, `quote_number_counter`, `share_counter`, `id_number`, `email_template_invoice`, `email_template_quote`, `email_template_payment`, `token_billing_type_id`, `invoice_footer`, `pdf_email_attachment`, `custom_design`, `font_size`, `invoice_labels`) VALUES
(1, 34, 221, 142, 3, '2015-04-24 09:35:19', '2021-06-02 11:41:57', NULL, 'Kolkmedia', '127.0.0.1', 'kBObEDM7fzm7IXIt7qcNdokmTFg4ODw6', '2021-06-02 11:35:28', 'Lijsterbesdreef', '4', 'Bleiswijk', 'zuid-holland', '2665 RL', 528, 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Met vriendelijke groet,<p/>\r\n\r\nVincent van der Kolk<p/>\r\nKolkmedia<p/>', 10, 1, 1, 0, 11, '0613830405', 'vincent@kolkmedia.com', 6, NULL, '', '', '', '', '', '', 1, 0, '', '', 0, 1, '', '', 0, 0, 'NL001724867B53', NULL, '', 2147483647, 'Offerte', 1, 0, '54875765', 'Geachte $contact,<p/>\r\n\r\nBijgaand treft u een nieuwe factuur. U kunt deze bekijken door op onderstaande link te klikken.\r\n\r\n<p/>\r\n\r\n<a href=\"$link\">$link</a><p/>\r\n\r\nHopende u voldoende geinformeerd te hebben.<p/>\r\n\r\n</br>\r\n\r\n<p/>$footer<p/>', 'Geachte $client,<p/>\r\n\r\nOm uw offerte van $amount te bekijken, klik op de link hieronder.<p/>\r\n\r\n<a href=\"$link\">$link</a><p/>\r\n\r\n$footer', 'Geachte $client,<p/>\r\n\r\nBedankt voor uw betaling van $amount.<p/>\r\n\r\n$footer', 2, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405', 1, '{\"content\":[{\"columns\":[{\"image\":\"$accountLogo\",\"fit\":[130,80]},{\"text\":\"Van:\",\"bold\":true,\"alignment\":\"right\",\"margin\":[170,2,0,0]},{\"stack\":\"$accountDetails\",\"margin\":[10,0,0,0]}]},{\"text\":\"\",\"fontsize\":\"10\",\"margin\":[8,20,8,5],\"style\":\"entityTypeLabel\"},{\"columns\":[{\"text\":\"Aan:\",\"margin\":[0,2,0,0],\"bold\":true},{\"stack\":\"$clientDetails\",\"margin\":[-100,0,0,0]},{\"stack\":\"$invoiceDetailsLabels\",\"margin\":[0,0,10,0],\"style\":\"entityTypeLabel2\",\"alignment\":\"right\",\"bold\":true},{\"stack\":\"$invoiceDetailsData\",\"margin\":[-1,0,0,0],\"style\":\"entityTypeLabel2\"}]},{\"style\":\"invoiceLineItemsTable\",\"table\":{\"headerRows\":1,\"widths\":\"$invoiceLineItemColumns\",\"body\":\"$invoiceLineItems\",\"fontsize\":\"10\"},\"layout\":{\"hLineWidth\":\"$notFirst:.5\",\"vLineWidth\":\"$none\",\"hLineColor\":\"#D8D8D8\",\"paddingLeft\":\"$amount:8\",\"paddingRight\":\"$amount:8\",\"paddingTop\":\"$amount:14\",\"paddingBottom\":\"$amount:14\"}},{\"columns\":[{\"table\":{\"widths\":[\"*\",\"30%\"],\"body\":\"$subtotals\"},\"layout\":{\"hLineWidth\":\"$none\",\"vLineWidth\":\"$none\",\"paddingLeft\":\"$amount:0\",\"paddingRight\":\"$amount:8\",\"paddingTop\":\"$amount:4\",\"paddingBottom\":\"$amount:4\"},\"margin\":[0,0,0,0]}]}],\"defaultStyle\":{\"stack\":\"$notesAndTerms\",\"fontSize\":\"$fontSize\",\"margin\":[8,4,8,4]},\"footer\":{\"columns\":[{\"text\":\"$accountDetails\",\"alignment\":\"left\",\"bold\":false,\"margin\":[40,-40,30,0]},{\"stack\":\"$notesAndTerms\",\"alignment\":\"left\",\"margin\":[-258,-150,100,0]}]},\"styles\":{\"entityTypeLabel\":{\"fontSize\":\"$fontSizeLargest\",\"color\":\"$primaryColor:#37a3c6\"},\"entityTypeLabel2\":{\"fontSize\":\"9\",\"bold\":false,\"lineHeight\":1.2},\"primaryColor\":{\"color\":\"$primaryColor:#37a3c6\"},\"accountName\":{\"color\":\"$primaryColor:#37a3c6\",\"bold\":true},\"invoiceDetails\":{\"margin\":[0,0,8,0]},\"accountDetails\":{\"margin\":[0,2,0,2]},\"clientDetails\":{\"margin\":[0,2,0,2]},\"notesAndTerms\":{\"margin\":[0,2,0,2]},\"accountAddress\":{\"margin\":[0,2,0,2]},\"odd\":{\"fillColor\":\"#fbfbfb\"},\"productKey\":{\"color\":\"$primaryColor:#37a3c6\",\"bold\":true},\"balanceDueLabel\":{\"fontSize\":\"$fontSizeLarger\"},\"balanceDue\":{\"fontSize\":\"$fontSizeLarger\",\"color\":\"$primaryColor:#37a3c6\"},\"invoiceNumber\":{\"bold\":true},\"tableHeader\":{\"bold\":true,\"fontSize\":\"9\"},\"costTableHeader\":{\"alignment\":\"right\"},\"qtyTableHeader\":{\"alignment\":\"right\"},\"taxTableHeader\":{\"alignment\":\"right\"},\"lineTotalTableHeader\":{\"alignment\":\"right\"},\"invoiceLineItemsTable\":{\"margin\":[0,16,0,10]},\"clientName\":{\"bold\":true},\"cost\":{\"alignment\":\"right\"},\"quantity\":{\"alignment\":\"right\"},\"tax\":{\"alignment\":\"right\"},\"lineTotal\":{\"alignment\":\"right\"},\"subtotals\":{\"alignment\":\"right\"},\"termsLabel\":{\"bold\":true}},\"pageMargins\":[40,40,40,60]}', 9, '{\"item\":\"\",\"description\":\"\",\"unit_cost\":\"\",\"quantity\":\"\"}');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `account_gateways`
--

CREATE TABLE `account_gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `gateway_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `public_id` int(10) UNSIGNED NOT NULL,
  `accepted_credit_cards` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `account_gateway_tokens`
--

CREATE TABLE `account_gateway_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `contact_id` int(10) UNSIGNED NOT NULL,
  `account_gateway_id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `account_tokens`
--

CREATE TABLE `account_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `public_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `activities`
--

CREATE TABLE `activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `account_id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `contact_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `credit_id` int(10) UNSIGNED DEFAULT NULL,
  `invitation_id` int(10) UNSIGNED DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `json_backup` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_type_id` int(11) NOT NULL,
  `adjustment` decimal(13,2) DEFAULT NULL,
  `balance` decimal(13,2) DEFAULT NULL,
  `token_id` int(10) UNSIGNED DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `activities`
--

INSERT INTO `activities` (`id`, `created_at`, `updated_at`, `account_id`, `client_id`, `user_id`, `contact_id`, `payment_id`, `invoice_id`, `credit_id`, `invitation_id`, `message`, `json_backup`, `activity_type_id`, `adjustment`, `balance`, `token_id`, `ip`) VALUES
(1, '2015-04-24 09:52:20', '2015-04-24 09:52:20', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, 'vincent@kolkmedia.com  heeft  [client:1:Kolkmedia]  aangegemaakt', NULL, 1, NULL, NULL, NULL, '127.0.0.1'),
(2, '2015-04-24 09:56:24', '2015-04-24 09:56:24', 1, 2, 1, NULL, NULL, NULL, NULL, NULL, 'vincent@kolkmedia.com  heeft  [client:2:Hertek B.V.]  aangegemaakt', NULL, 1, NULL, NULL, NULL, '127.0.0.1'),
(3, '2015-04-24 09:58:10', '2015-04-24 09:58:10', 1, 3, 1, NULL, NULL, NULL, NULL, NULL, 'vincent@kolkmedia.com  heeft  [client:3:Hertek Holding B.V.]  aangegemaakt', NULL, 1, NULL, NULL, NULL, '127.0.0.1'),
(4, '2015-04-24 10:06:08', '2015-04-24 10:06:08', 1, 3, 1, NULL, NULL, 1, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:1:2012/001-2]  gemaakt', NULL, 4, 2380.00, 2380.00, NULL, '127.0.0.1'),
(5, '2015-04-24 10:07:50', '2015-04-24 10:07:50', 1, 3, 1, NULL, NULL, 1, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:1:2012/001-2]  bijgewerkt', '{\"invoice_number\":\"2012\\/001-2\",\"discount\":0,\"po_number\":\"\",\"invoice_date\":\"2012-06-29\",\"due_date\":null,\"terms\":\"U wordt verzocht het vermelde bedrag binnen 30 dagen over te\\nmaken op  bankrekeningnummer ING NL64INGB0007368249 onder\\nvermelding van het factuurnummer.\",\"public_notes\":\"\",\"tax_name\":\"19%\",\"tax_rate\":\"19.00\",\"amount\":\"2380.00\",\"balance\":\"2380.00\",\"invoice_design_id\":1,\"is_quote\":0,\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":0,\"custom_taxes2\":0,\"is_amount_discount\":0,\"invoice_footer\":\"Wij danken u voor het vertrouwen in ons.\\nNeem bij vragen over deze factuur contact op met:\\n\\nNaam\\t: Vincent van der Kolk\\nTelefoon\\t: 0613830405\\nEmail\\t: vincent@kolkmedia.com\",\"invoice_items\":[{\"product_key\":\"Ontwerp\",\"notes\":\"ontwerp werkzaamheden\",\"cost\":\"1000.00\",\"qty\":\"2.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":3,\"name\":\"Hertek Holding B.V.\",\"address1\":\"Copernicusstraat\",\"address2\":\"8\",\"city\":\"Weert\",\"state\":\"Limburg\",\"postal_code\":\"6003 DE\",\"work_phone\":\"+31 (495) 584177\",\"payment_terms\":14,\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"hertek_normaal\",\"contacts\":[{\"first_name\":\"Peter\",\"last_name\":\"Vlemmix\",\"email\":\"peter.vlemmix@hertek.nl\",\"phone\":\"+31 (6) 29096751\"}]},\"account\":{\"currency_id\":3,\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":null,\"custom_value1\":null,\"custom_label2\":null,\"custom_value2\":null,\"custom_client_label1\":null,\"custom_client_label2\":null,\"primary_color\":null,\"secondary_color\":null,\"hide_quantity\":0,\"hide_paid_to_date\":0,\"custom_invoice_label1\":null,\"custom_invoice_label2\":null,\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":0}}', 5, 0.00, 2380.00, NULL, '127.0.0.1'),
(6, '2015-04-24 10:10:32', '2015-04-24 10:10:32', 1, 3, 1, NULL, NULL, 2, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:2:2012/002-1]  gemaakt', NULL, 4, 1190.00, 3570.00, NULL, '127.0.0.1'),
(7, '2015-04-24 10:14:12', '2015-04-24 10:14:12', 1, 3, 1, NULL, NULL, 3, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:3:2012/003-1]  gemaakt', NULL, 4, 3630.00, 7200.00, NULL, '127.0.0.1'),
(8, '2015-04-24 10:14:42', '2015-04-24 10:14:42', 1, 3, 1, NULL, NULL, 3, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:3:2012/003-1]  bijgewerkt', '{\"invoice_number\":\"2012\\/003-1\",\"discount\":0,\"po_number\":\"\",\"invoice_date\":\"2012-09-11\",\"due_date\":\"2015-05-08\",\"terms\":\"U wordt verzocht het vermelde bedrag binnen 30 dagen over te\\nmaken op  bankrekeningnummer ING NL64INGB0007368249 onder\\nvermelding van het factuurnummer.\",\"public_notes\":\"\",\"tax_name\":\"BTW-21%\",\"tax_rate\":\"21.00\",\"amount\":\"3630.00\",\"balance\":\"3630.00\",\"invoice_design_id\":1,\"is_quote\":0,\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":0,\"custom_taxes2\":0,\"is_amount_discount\":0,\"invoice_footer\":\"Wij danken u voor het vertrouwen in ons.\\nNeem bij vragen over deze factuur contact op met:\\n\\nNaam\\t:     Vincent van der Kolk\\nEmail\\t:      vincent@kolkmedia.com\\nTelefoon\\t:    0613830405\",\"invoice_items\":[{\"product_key\":\"Frontend modules\",\"notes\":\"Ontwikkeling frontend modules\",\"cost\":\"3000.00\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":3,\"name\":\"Hertek Holding B.V.\",\"address1\":\"Copernicusstraat\",\"address2\":\"8\",\"city\":\"Weert\",\"state\":\"Limburg\",\"postal_code\":\"6003 DE\",\"work_phone\":\"+31 (495) 584177\",\"payment_terms\":14,\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"hertek_normaal\",\"contacts\":[{\"first_name\":\"Peter\",\"last_name\":\"Vlemmix\",\"email\":\"peter.vlemmix@hertek.nl\",\"phone\":\"+31 (6) 29096751\"}]},\"account\":{\"currency_id\":3,\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":null,\"custom_value1\":null,\"custom_label2\":null,\"custom_value2\":null,\"custom_client_label1\":null,\"custom_client_label2\":null,\"primary_color\":null,\"secondary_color\":null,\"hide_quantity\":0,\"hide_paid_to_date\":0,\"custom_invoice_label1\":null,\"custom_invoice_label2\":null,\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":0}}', 5, 0.00, 7200.00, NULL, '127.0.0.1'),
(9, '2015-04-24 10:16:54', '2015-04-24 10:16:54', 1, 3, 1, NULL, NULL, 4, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:4:2013/001-1]  gemaakt', NULL, 4, 2359.50, 9559.50, NULL, '127.0.0.1'),
(10, '2015-04-24 10:18:24', '2015-04-24 10:18:24', 1, 3, 1, NULL, NULL, 5, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:5:2013/002-1]  gemaakt', NULL, 4, 2988.70, 12548.20, NULL, '127.0.0.1'),
(11, '2015-04-24 10:21:36', '2015-04-24 10:21:36', 1, 3, 1, NULL, NULL, 6, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:6:2013/003-1]  gemaakt', NULL, 4, 2988.70, 15536.90, NULL, '127.0.0.1'),
(12, '2015-04-24 10:22:53', '2015-04-24 10:22:53', 1, 3, 1, NULL, NULL, 7, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:7:2013/003-1.2]  gemaakt', NULL, 4, 2516.80, 18053.70, NULL, '127.0.0.1'),
(13, '2015-04-24 10:27:31', '2015-04-24 10:27:31', 1, 3, 1, NULL, NULL, 8, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:8:2014/001]  gemaakt', NULL, 4, 2595.45, 20649.15, NULL, '127.0.0.1'),
(14, '2015-04-24 10:29:03', '2015-04-24 10:29:03', 1, 3, 1, NULL, NULL, 9, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:9:DEBET 2014/002]  gemaakt', NULL, 4, 78.65, 20727.80, NULL, '127.0.0.1'),
(15, '2015-04-24 10:34:08', '2015-04-24 10:34:08', 1, 2, 1, NULL, NULL, 10, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:10:2014-3/001]  gemaakt', NULL, 4, 786.50, 786.50, NULL, '127.0.0.1'),
(16, '2015-04-24 10:34:39', '2015-04-24 10:34:39', 1, 3, 1, NULL, 1, 1, NULL, NULL, 'vincent@kolkmedia.com  heeft een  betaling voor  [invoice:1:2012/001-2]  ingegeven', NULL, 10, -2380.00, 18347.80, NULL, '127.0.0.1'),
(17, '2015-04-24 10:34:53', '2015-04-24 10:34:53', 1, 3, 1, NULL, 2, 2, NULL, NULL, 'vincent@kolkmedia.com  heeft een  betaling voor  [invoice:2:2012/002-1]  ingegeven', NULL, 10, -1190.00, 17157.80, NULL, '127.0.0.1'),
(18, '2015-04-24 10:35:03', '2015-04-24 10:35:03', 1, 3, 1, NULL, 3, 3, NULL, NULL, 'vincent@kolkmedia.com  heeft een  betaling voor  [invoice:3:2012/003-1]  ingegeven', NULL, 10, -3630.00, 13527.80, NULL, '127.0.0.1'),
(19, '2015-04-24 10:35:14', '2015-04-24 10:35:14', 1, 3, 1, NULL, 4, 4, NULL, NULL, 'vincent@kolkmedia.com  heeft een  betaling voor  [invoice:4:2013/001-1]  ingegeven', NULL, 10, -2359.50, 11168.30, NULL, '127.0.0.1'),
(20, '2015-04-24 10:35:23', '2015-04-24 10:35:23', 1, 3, 1, NULL, 5, 5, NULL, NULL, 'vincent@kolkmedia.com  heeft een  betaling voor  [invoice:5:2013/002-1]  ingegeven', NULL, 10, -2988.70, 8179.60, NULL, '127.0.0.1'),
(21, '2015-04-24 10:35:33', '2015-04-24 10:35:33', 1, 3, 1, NULL, 6, 6, NULL, NULL, 'vincent@kolkmedia.com  heeft een  betaling voor  [invoice:6:2013/003-1]  ingegeven', NULL, 10, -2988.70, 5190.90, NULL, '127.0.0.1'),
(22, '2015-04-24 10:35:44', '2015-04-24 10:35:44', 1, 3, 1, NULL, 7, 7, NULL, NULL, 'vincent@kolkmedia.com  heeft een  betaling voor  [invoice:7:2013/003-1.2]  ingegeven', NULL, 10, -2516.80, 2674.10, NULL, '127.0.0.1'),
(23, '2015-04-24 10:35:57', '2015-04-24 10:35:57', 1, 2, 1, NULL, 8, 10, NULL, NULL, 'vincent@kolkmedia.com  heeft een  betaling voor  [invoice:10:2014-3/001]  ingegeven', NULL, 10, -786.50, 0.00, NULL, '127.0.0.1'),
(24, '2015-04-24 10:36:25', '2015-04-24 10:36:25', 1, 3, 1, NULL, 9, 8, NULL, NULL, 'vincent@kolkmedia.com  heeft een  betaling voor  [invoice:8:2014/001]  ingegeven', NULL, 10, -2595.45, 78.65, NULL, '127.0.0.1'),
(25, '2015-04-24 10:37:18', '2015-04-24 10:37:18', 1, 3, 1, NULL, NULL, 1, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:1:2012/001-2]  bijgewerkt', '{\"invoice_number\":\"2012\\/001-2\",\"discount\":0,\"po_number\":\"\",\"invoice_date\":\"2012-06-29\",\"due_date\":\"2012-07-13\",\"terms\":\"U wordt verzocht het vermelde bedrag binnen 30 dagen over te\\nmaken op  bankrekeningnummer ING NL64INGB0007368249 onder\\nvermelding van het factuurnummer.\",\"public_notes\":\"\",\"tax_name\":\"19%\",\"tax_rate\":\"19.00\",\"amount\":\"2380.00\",\"balance\":\"0.00\",\"invoice_design_id\":1,\"is_quote\":0,\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":0,\"custom_taxes2\":0,\"is_amount_discount\":0,\"invoice_footer\":\"Wij danken u voor het vertrouwen in ons.\\nNeem bij vragen over deze factuur contact op met:\\n\\nNaam\\t:     Vincent van der Kolk\\nEmail\\t:      vincent@kolkmedia.com\\nTelefoon\\t:    0613830405\",\"invoice_items\":[{\"product_key\":\"Ontwerp\",\"notes\":\"ontwerp werkzaamheden\",\"cost\":\"1000.00\",\"qty\":\"2.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":3,\"name\":\"Hertek Holding B.V.\",\"address1\":\"Copernicusstraat\",\"address2\":\"8\",\"city\":\"Weert\",\"state\":\"Limburg\",\"postal_code\":\"6003 DE\",\"work_phone\":\"+31 (495) 584177\",\"payment_terms\":14,\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"hertek_normaal\",\"contacts\":[{\"first_name\":\"Peter\",\"last_name\":\"Vlemmix\",\"email\":\"peter.vlemmix@hertek.nl\",\"phone\":\"+31 (6) 29096751\"}]},\"account\":{\"currency_id\":3,\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":null,\"custom_value1\":null,\"custom_label2\":null,\"custom_value2\":null,\"custom_client_label1\":null,\"custom_client_label2\":null,\"primary_color\":null,\"secondary_color\":null,\"hide_quantity\":0,\"hide_paid_to_date\":0,\"custom_invoice_label1\":null,\"custom_invoice_label2\":null,\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":0}}', 5, 0.00, 78.65, NULL, '127.0.0.1'),
(26, '2015-04-24 10:38:00', '2015-04-24 10:38:00', 1, 3, 1, NULL, NULL, 1, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:1:2012/001-2]  bijgewerkt', '{\"invoice_number\":\"2012\\/001-2\",\"discount\":0,\"po_number\":\"\",\"invoice_date\":\"2015-04-24\",\"due_date\":\"2015-04-24\",\"terms\":\"U wordt verzocht het vermelde bedrag binnen 30 dagen over te\\nmaken op  bankrekeningnummer ING NL64INGB0007368249 onder\\nvermelding van het factuurnummer.\",\"public_notes\":\"\",\"tax_name\":\"19%\",\"tax_rate\":\"19.00\",\"amount\":\"2380.00\",\"balance\":\"0.00\",\"invoice_design_id\":1,\"is_quote\":0,\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":0,\"custom_taxes2\":0,\"is_amount_discount\":0,\"invoice_footer\":\"Wij danken u voor het vertrouwen in ons.\\nNeem bij vragen over deze factuur contact op met:\\n\\nNaam\\t:     Vincent van der Kolk\\nEmail\\t:      vincent@kolkmedia.com\\nTelefoon\\t:    0613830405\",\"invoice_items\":[{\"product_key\":\"Ontwerp\",\"notes\":\"ontwerp werkzaamheden\",\"cost\":\"1000.00\",\"qty\":\"2.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":3,\"name\":\"Hertek Holding B.V.\",\"address1\":\"Copernicusstraat\",\"address2\":\"8\",\"city\":\"Weert\",\"state\":\"Limburg\",\"postal_code\":\"6003 DE\",\"work_phone\":\"+31 (495) 584177\",\"payment_terms\":14,\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"hertek_normaal\",\"contacts\":[{\"first_name\":\"Peter\",\"last_name\":\"Vlemmix\",\"email\":\"peter.vlemmix@hertek.nl\",\"phone\":\"+31 (6) 29096751\"}]},\"account\":{\"currency_id\":3,\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":null,\"custom_value1\":null,\"custom_label2\":null,\"custom_value2\":null,\"custom_client_label1\":null,\"custom_client_label2\":null,\"primary_color\":null,\"secondary_color\":null,\"hide_quantity\":0,\"hide_paid_to_date\":0,\"custom_invoice_label1\":null,\"custom_invoice_label2\":null,\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":0}}', 5, 0.00, 78.65, NULL, '127.0.0.1'),
(27, '2015-04-24 10:40:17', '2015-04-24 10:40:17', 1, 3, 1, NULL, NULL, 5, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:5:2013/002-1]  bijgewerkt', '{\"invoice_number\":\"2013\\/002-1\",\"discount\":0,\"po_number\":\"\",\"invoice_date\":\"2015-04-24\",\"due_date\":\"2015-05-08\",\"terms\":\"U wordt verzocht het vermelde bedrag binnen 30 dagen over te\\nmaken op  bankrekeningnummer ING NL64INGB0007368249 onder\\nvermelding van het factuurnummer.\",\"public_notes\":\"\",\"tax_name\":\"BTW-21%\",\"tax_rate\":\"21.00\",\"amount\":\"2988.70\",\"balance\":\"0.00\",\"invoice_design_id\":1,\"is_quote\":0,\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":0,\"custom_taxes2\":0,\"is_amount_discount\":0,\"invoice_footer\":\"Wij danken u voor het vertrouwen in ons.\\nNeem bij vragen over deze factuur contact op met:\\n\\nNaam\\t:     Vincent van der Kolk\\nEmail\\t:      vincent@kolkmedia.com\\nTelefoon\\t:    0613830405\",\"invoice_items\":[{\"product_key\":\"Klantomgeving\",\"notes\":\"Ontwikkeling module elementen\",\"cost\":\"1950.00\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"Documenten module\",\"notes\":\"Ontwikkeling module elementen\",\"cost\":\"520.00\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":3,\"name\":\"Hertek Holding B.V.\",\"address1\":\"Copernicusstraat\",\"address2\":\"8\",\"city\":\"Weert\",\"state\":\"Limburg\",\"postal_code\":\"6003 DE\",\"work_phone\":\"+31 (495) 584177\",\"payment_terms\":14,\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"hertek_normaal\",\"contacts\":[{\"first_name\":\"Peter\",\"last_name\":\"Vlemmix\",\"email\":\"peter.vlemmix@hertek.nl\",\"phone\":\"+31 (6) 29096751\"}]},\"account\":{\"currency_id\":3,\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":null,\"custom_value1\":null,\"custom_label2\":null,\"custom_value2\":null,\"custom_client_label1\":null,\"custom_client_label2\":null,\"primary_color\":null,\"secondary_color\":null,\"hide_quantity\":0,\"hide_paid_to_date\":0,\"custom_invoice_label1\":null,\"custom_invoice_label2\":null,\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":0}}', 5, 0.00, 78.65, NULL, '127.0.0.1'),
(28, '2015-04-24 10:40:58', '2015-04-24 10:40:58', 1, 3, 1, NULL, NULL, 7, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:7:2013/003-1.2]  bijgewerkt', '{\"invoice_number\":\"2013\\/003-1.2\",\"discount\":0,\"po_number\":\"\",\"invoice_date\":\"2015-04-24\",\"due_date\":\"2015-05-08\",\"terms\":\"U wordt verzocht het vermelde bedrag binnen 30 dagen over te\\nmaken op  bankrekeningnummer ING NL64INGB0007368249 onder\\nvermelding van het factuurnummer.\",\"public_notes\":\"\",\"tax_name\":\"BTW-21%\",\"tax_rate\":\"21.00\",\"amount\":\"2516.80\",\"balance\":\"0.00\",\"invoice_design_id\":1,\"is_quote\":0,\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":0,\"custom_taxes2\":0,\"is_amount_discount\":0,\"invoice_footer\":\"Wij danken u voor het vertrouwen in ons.\\nNeem bij vragen over deze factuur contact op met:\\n\\nNaam\\t:     Vincent van der Kolk\\nEmail\\t:      vincent@kolkmedia.com\\nTelefoon\\t:    0613830405\",\"invoice_items\":[{\"product_key\":\"Styling\",\"notes\":\"Presentatie aanpassingen fireweb\",\"cost\":\"2080.00\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":3,\"name\":\"Hertek Holding B.V.\",\"address1\":\"Copernicusstraat\",\"address2\":\"8\",\"city\":\"Weert\",\"state\":\"Limburg\",\"postal_code\":\"6003 DE\",\"work_phone\":\"+31 (495) 584177\",\"payment_terms\":14,\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"hertek_normaal\",\"contacts\":[{\"first_name\":\"Peter\",\"last_name\":\"Vlemmix\",\"email\":\"peter.vlemmix@hertek.nl\",\"phone\":\"+31 (6) 29096751\"}]},\"account\":{\"currency_id\":3,\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":null,\"custom_value1\":null,\"custom_label2\":null,\"custom_value2\":null,\"custom_client_label1\":null,\"custom_client_label2\":null,\"primary_color\":null,\"secondary_color\":null,\"hide_quantity\":0,\"hide_paid_to_date\":0,\"custom_invoice_label1\":null,\"custom_invoice_label2\":null,\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":0}}', 5, 0.00, 78.65, NULL, '127.0.0.1'),
(29, '2015-04-24 10:41:22', '2015-04-24 10:41:22', 1, 3, 1, NULL, NULL, 8, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:8:2014/001]  bijgewerkt', '{\"invoice_number\":\"2014\\/001\",\"discount\":0,\"po_number\":\"\",\"invoice_date\":\"2015-04-24\",\"due_date\":\"2015-05-08\",\"terms\":\"U wordt verzocht het vermelde bedrag binnen 30 dagen over te\\nmaken op  bankrekeningnummer ING NL64INGB0007368249 onder\\nvermelding van het factuurnummer.\",\"public_notes\":\"Deze factuur is bij belasting aangifte over 2013 meegenomen.\",\"tax_name\":\"BTW-21%\",\"tax_rate\":\"21.00\",\"amount\":\"2595.45\",\"balance\":\"0.00\",\"invoice_design_id\":1,\"is_quote\":0,\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":0,\"custom_taxes2\":0,\"is_amount_discount\":0,\"invoice_footer\":\"Wij danken u voor het vertrouwen in ons.\\nNeem bij vragen over deze factuur contact op met:\\n\\nNaam\\t:     Vincent van der Kolk\\nEmail\\t:      vincent@kolkmedia.com\\nTelefoon\\t:    0613830405\",\"invoice_items\":[{\"product_key\":\"Ondersteuning\",\"notes\":\"Installatie ondersteuning\",\"cost\":\"65.00\",\"qty\":\"33.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":3,\"name\":\"Hertek Holding B.V.\",\"address1\":\"Copernicusstraat\",\"address2\":\"8\",\"city\":\"Weert\",\"state\":\"Limburg\",\"postal_code\":\"6003 DE\",\"work_phone\":\"+31 (495) 584177\",\"payment_terms\":14,\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"hertek_normaal\",\"contacts\":[{\"first_name\":\"Peter\",\"last_name\":\"Vlemmix\",\"email\":\"peter.vlemmix@hertek.nl\",\"phone\":\"+31 (6) 29096751\"}]},\"account\":{\"currency_id\":3,\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":null,\"custom_value1\":null,\"custom_label2\":null,\"custom_value2\":null,\"custom_client_label1\":null,\"custom_client_label2\":null,\"primary_color\":null,\"secondary_color\":null,\"hide_quantity\":0,\"hide_paid_to_date\":0,\"custom_invoice_label1\":null,\"custom_invoice_label2\":null,\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":0}}', 5, 0.00, 78.65, NULL, '127.0.0.1'),
(30, '2015-04-24 11:59:49', '2015-04-24 11:59:49', 1, 3, 1, NULL, NULL, 1, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:1:2012/001-2]  verwijderd', NULL, 8, NULL, 78.65, NULL, '127.0.0.1'),
(31, '2015-04-24 11:59:49', '2015-04-24 11:59:49', 1, 3, 1, NULL, NULL, 2, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:2:2012/002-1]  verwijderd', NULL, 8, NULL, 78.65, NULL, '127.0.0.1'),
(32, '2015-04-24 11:59:49', '2015-04-24 11:59:49', 1, 3, 1, NULL, NULL, 3, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:3:2012/003-1]  verwijderd', NULL, 8, NULL, 78.65, NULL, '127.0.0.1'),
(33, '2015-04-24 11:59:49', '2015-04-24 11:59:49', 1, 3, 1, NULL, NULL, 4, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:4:2013/001-1]  verwijderd', NULL, 8, NULL, 78.65, NULL, '127.0.0.1'),
(34, '2015-04-24 11:59:49', '2015-04-24 11:59:49', 1, 3, 1, NULL, NULL, 5, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:5:2013/002-1]  verwijderd', NULL, 8, NULL, 78.65, NULL, '127.0.0.1'),
(35, '2015-04-24 11:59:49', '2015-04-24 11:59:49', 1, 3, 1, NULL, NULL, 6, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:6:2013/003-1]  verwijderd', NULL, 8, NULL, 78.65, NULL, '127.0.0.1'),
(36, '2015-04-24 11:59:49', '2015-04-24 11:59:49', 1, 3, 1, NULL, NULL, 7, NULL, NULL, 'vincent@kolkmedia.com  heeft  [invoice:7:2013/003-1.2]  verwijderd', NULL, 8, NULL, 78.65, NULL, '127.0.0.1'),
(37, '2015-04-24 12:07:32', '2015-04-24 12:07:32', 1, 1, 1, NULL, NULL, 11, NULL, NULL, 'vincent@kolkmedia.com  heeft  [quote:11:testofferte]  gemaakt', NULL, 18, 0.00, NULL, NULL, '127.0.0.1'),
(38, '2015-04-24 14:35:03', '2015-04-24 14:35:03', 1, 1, 1, NULL, NULL, 12, NULL, NULL, 'vincent@kolkmedia.com  heeft  [quote:12:0001-1]  gemaakt', NULL, 18, 0.00, NULL, NULL, '127.0.0.1'),
(39, '2015-05-20 08:19:41', '2015-05-20 08:19:41', 1, 1, 1, NULL, NULL, 13, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:13:0012]  gemaakt', NULL, 4, 181.50, 181.50, NULL, '86.82.220.83'),
(40, '2015-05-20 08:20:15', '2015-05-20 08:20:15', 1, 1, 1, NULL, 10, 13, NULL, NULL, 'Vincent van der Kolk  heeft een  texts.payment fact. nr. 150536 voor  [invoice:13:0012]  ingegeven', NULL, 10, -181.50, 0.00, NULL, '86.82.220.83'),
(41, '2015-05-20 08:22:27', '2015-05-20 08:22:27', 1, 1, 1, NULL, NULL, 11, NULL, NULL, 'Vincent van der Kolk  heeft  [quote:11:testofferte]  verwijderd', NULL, 23, 0.00, 0.00, NULL, '86.82.220.83'),
(42, '2015-05-22 03:56:59', '2015-05-22 03:56:59', 1, 3, 1, 3, NULL, 9, NULL, 9, 'Peter Vlemmix  heeft  [invoice:9:DEBET 2014/002]  bekeken', NULL, 7, NULL, 78.65, NULL, '86.82.220.83'),
(43, '2015-09-15 06:13:43', '2015-09-15 06:13:43', 1, 4, 1, NULL, NULL, NULL, NULL, NULL, 'Vincent van der Kolk  heeft  [client:4:Incentro Nederland B.V.]  aangegemaakt', NULL, 1, NULL, NULL, NULL, '91.227.229.4'),
(44, '2015-09-15 07:17:12', '2015-09-15 07:17:12', 1, 3, 1, NULL, NULL, 8, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:8:2014/001]  gearchiveerd', NULL, 8, NULL, 78.65, NULL, '91.227.229.4'),
(45, '2015-09-15 07:17:12', '2015-09-15 07:17:12', 1, 3, 1, NULL, NULL, 9, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:9:DEBET 2014/002]  gearchiveerd', NULL, 8, NULL, 78.65, NULL, '91.227.229.4'),
(46, '2015-09-15 07:17:12', '2015-09-15 07:17:12', 1, 2, 1, NULL, NULL, 10, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:10:2014-3/001]  gearchiveerd', NULL, 8, NULL, 0.00, NULL, '91.227.229.4'),
(47, '2015-09-15 07:17:12', '2015-09-15 07:17:12', 1, 1, 1, NULL, NULL, 13, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:13:0012]  gearchiveerd', NULL, 8, NULL, 0.00, NULL, '91.227.229.4'),
(48, '2015-09-15 07:19:17', '2015-09-15 07:19:17', 1, 1, 1, NULL, NULL, 14, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:14:0013]  gemaakt', NULL, 4, 10841.60, 10841.60, NULL, '91.227.229.4'),
(49, '2015-09-29 05:44:16', '2015-09-29 05:44:16', 1, 1, 1, 4, NULL, 14, NULL, 15, 'Lorna O\'Connor  heeft  [invoice:14:0013]  bekeken', NULL, 7, NULL, 10841.60, NULL, '109.109.127.70'),
(50, '2015-09-29 05:55:09', '2015-09-29 05:55:09', 1, 1, 1, 4, NULL, 14, NULL, 15, 'Lorna O\'Connor  heeft  [invoice:14:0013]  bekeken', NULL, 7, NULL, 10841.60, NULL, '199.19.249.196'),
(51, '2015-09-29 05:55:09', '2015-09-29 05:55:09', 1, 1, 1, 4, NULL, 14, NULL, 15, 'Lorna O\'Connor  heeft  [invoice:14:0013]  bekeken', NULL, 7, NULL, 10841.60, NULL, '91.227.229.4'),
(52, '2015-09-29 05:55:10', '2015-09-29 05:55:10', 1, 1, 1, 4, NULL, 14, NULL, 15, 'Lorna O\'Connor  heeft  [invoice:14:0013]  bekeken', NULL, 7, NULL, 10841.60, NULL, '91.227.229.4'),
(53, '2015-09-30 12:42:51', '2015-09-30 12:42:51', 1, 1, 1, NULL, NULL, 14, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:14:0013]  bijgewerkt', '{\"invoice_number\":\"0013\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2015-09-15\",\"due_date\":\"2015-09-29\",\"terms\":\"U wordt verzocht het vermelde bedrag binnen 30 dagen over te\\r\\nmaken op  bankrekeningnummer ING NL64INGB0007368249 onder\\r\\nvermelding van het factuurnummer.\",\"public_notes\":\"Factuur voor de werkzaamheden in september\",\"tax_name\":\"BTW-21%\",\"tax_rate\":\"21.00\",\"amount\":\"10841.60\",\"balance\":\"10841.60\",\"invoice_design_id\":\"1\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Wij danken u voor het vertrouwen in ons.\\r\\nNeem bij vragen over deze factuur contact op met:\\r\\n\\r\\nNaam\\t:     Vincent van der Kolk\\r\\nEmail\\t:      vincent@kolkmedia.com\\r\\nTelefoon\\t:    0613830405\",\"invoice_items\":[{\"product_key\":\"[ING007]\",\"notes\":\"Fast Flex Interim Professionals\",\"cost\":\"80.00\",\"qty\":\"112.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"payment_terms\":\"14\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"contacts\":[{\"first_name\":\"Vincent\",\"last_name\":\"van der Kolk\",\"email\":\"vincent@kolkmedia.com\",\"phone\":\"0613830405\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":null,\"custom_value1\":null,\"custom_label2\":null,\"custom_value2\":null,\"custom_client_label1\":null,\"custom_client_label2\":null,\"primary_color\":null,\"secondary_color\":null,\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"0\",\"custom_invoice_label1\":null,\"custom_invoice_label2\":null,\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"0\"}}', 5, 6195.20, 17036.80, NULL, '86.82.220.83'),
(54, '2015-09-30 12:45:26', '2015-09-30 12:45:26', 1, 1, 1, NULL, NULL, 14, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:14:0013]  bijgewerkt', '{\"invoice_number\":\"0013\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2015-09-30\",\"due_date\":\"2015-10-30\",\"terms\":\"U wordt verzocht het vermelde bedrag binnen 30 dagen over te\\r\\nmaken op  bankrekeningnummer ING NL64INGB0007368249 onder\\r\\nvermelding van het factuurnummer.\",\"public_notes\":\"Factuur voor de werkzaamheden in september\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"17036.80\",\"balance\":\"17036.80\",\"invoice_design_id\":\"1\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Wij danken u voor het vertrouwen in ons.\\r\\nNeem bij vragen over deze factuur contact op met:\\r\\n\\r\\nNaam\\t:     Vincent van der Kolk\\r\\nEmail\\t:      vincent@kolkmedia.com\\r\\nTelefoon\\t:    0613830405\",\"invoice_items\":[{\"product_key\":\"[ING007]\",\"notes\":\"Fast Flex Interim Professionals\",\"cost\":\"80.00\",\"qty\":\"176.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"payment_terms\":\"14\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"contacts\":[{\"first_name\":\"Vincent\",\"last_name\":\"van der Kolk\",\"email\":\"vincent@kolkmedia.com\",\"phone\":\"0613830405\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":null,\"custom_value1\":null,\"custom_label2\":null,\"custom_value2\":null,\"custom_client_label1\":null,\"custom_client_label2\":null,\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":null,\"custom_invoice_label2\":null,\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"0\"}}', 5, 0.00, 17036.80, NULL, '86.82.220.83'),
(55, '2015-09-30 12:46:09', '2015-09-30 12:46:09', 1, 1, 1, NULL, NULL, 14, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:14:0013]  bijgewerkt', '{\"invoice_number\":\"0013\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2015-09-30\",\"due_date\":\"2015-10-30\",\"terms\":\"U wordt verzocht het vermelde bedrag binnen 30 dagen over te\\r\\nmaken op  bankrekeningnummer ING NL64INGB0007368249 onder\\r\\nvermelding van het factuurnummer.\",\"public_notes\":\"Factuur voor de werkzaamheden in september\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"17036.80\",\"balance\":\"17036.80\",\"invoice_design_id\":\"1\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Wij danken u voor het vertrouwen in ons.\",\"invoice_items\":[{\"product_key\":\"[ING007]\",\"notes\":\"Fast Flex Interim Professionals\",\"cost\":\"80.00\",\"qty\":\"176.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"payment_terms\":\"14\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"contacts\":[{\"first_name\":\"Vincent\",\"last_name\":\"van der Kolk\",\"email\":\"vincent@kolkmedia.com\",\"phone\":\"0613830405\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":null,\"custom_value1\":null,\"custom_label2\":null,\"custom_value2\":null,\"custom_client_label1\":null,\"custom_client_label2\":null,\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":null,\"custom_invoice_label2\":null,\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"0\"}}', 5, 0.00, 17036.80, NULL, '86.82.220.83'),
(56, '2015-09-30 12:49:26', '2015-09-30 12:49:26', 1, 1, 1, NULL, NULL, 14, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:14:0013]  bijgewerkt', '{\"invoice_number\":\"0013\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2015-09-30\",\"due_date\":\"2015-10-30\",\"terms\":\"U wordt verzocht het vermelde bedrag binnen 30 dagen over te\\r\\nmaken op  bankrekeningnummer ING NL64INGB0007368249 onder\\r\\nvermelding van het factuurnummer.\",\"public_notes\":\"Factuur voor de werkzaamheden in september\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"17036.80\",\"balance\":\"17036.80\",\"invoice_design_id\":\"1\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"U wordt verzocht het vermelde bedrag binnen 30 dagen over te maken op  bankrekeningnummer ING NL64INGB0007368249 onder\\nvermelding van het factuurnummer.\\n\\nWij danken u voor het vertrouwen in ons.\",\"invoice_items\":[{\"product_key\":\"[ING007]\",\"notes\":\"Fast Flex Interim Professionals\",\"cost\":\"80.00\",\"qty\":\"176.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"payment_terms\":\"14\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"contacts\":[{\"first_name\":\"Vincent\",\"last_name\":\"van der Kolk\",\"email\":\"vincent@kolkmedia.com\",\"phone\":\"0613830405\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":null,\"custom_value1\":null,\"custom_label2\":null,\"custom_value2\":null,\"custom_client_label1\":null,\"custom_client_label2\":null,\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":null,\"custom_invoice_label2\":null,\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"0\"}}', 5, 0.00, 17036.80, NULL, '86.82.220.83'),
(57, '2015-09-30 12:51:00', '2015-09-30 12:51:00', 1, 1, 1, NULL, NULL, 14, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:14:001]  bijgewerkt', '{\"invoice_number\":\"0013\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2015-09-30\",\"due_date\":\"2015-10-30\",\"terms\":\"\",\"public_notes\":\"Factuur voor de werkzaamheden in september\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"17036.80\",\"balance\":\"17036.80\",\"invoice_design_id\":\"1\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"U wordt verzocht het vermelde bedrag binnen 30 dagen over te maken op  bankrekeningnummer ING NL64INGB0007368249 onder\\nvermelding van het factuurnummer.\\n\\nWij danken u voor het vertrouwen in ons.\",\"invoice_items\":[{\"product_key\":\"[ING007]\",\"notes\":\"Fast Flex Interim Professionals\",\"cost\":\"80.00\",\"qty\":\"176.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"payment_terms\":\"14\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"contacts\":[{\"first_name\":\"Vincent\",\"last_name\":\"van der Kolk\",\"email\":\"vincent@kolkmedia.com\",\"phone\":\"0613830405\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":null,\"custom_value1\":null,\"custom_label2\":null,\"custom_value2\":null,\"custom_client_label1\":null,\"custom_client_label2\":null,\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":null,\"custom_invoice_label2\":null,\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"0\"}}', 5, 0.00, 17036.80, NULL, '86.82.220.83'),
(58, '2015-10-24 15:09:04', '2015-10-24 15:09:04', 1, 4, 1, NULL, NULL, 14, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:14:001]  bijgewerkt', '{\"invoice_number\":\"001\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2015-09-30\",\"due_date\":\"2015-10-30\",\"terms\":\"\",\"public_notes\":\"Factuur voor de werkzaamheden in september\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"17036.80\",\"balance\":\"17036.80\",\"invoice_design_id\":\"1\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"U wordt verzocht het vermelde bedrag binnen 30 dagen over te maken op  bankrekeningnummer ING NL64INGB0007368249 onder\\nvermelding van het factuurnummer.\\n\\nWij danken u voor het vertrouwen in ons.\",\"invoice_items\":[{\"product_key\":\"[ING007]\",\"notes\":\"Fast Flex Interim Professionals\",\"cost\":\"80.00\",\"qty\":\"176.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"lorna.oconnor@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":null,\"custom_value1\":null,\"custom_label2\":null,\"custom_value2\":null,\"custom_client_label1\":null,\"custom_client_label2\":null,\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":null,\"custom_invoice_label2\":null,\"vat_number\":\"BTW-nr. NL146175426B01\",\"id_number\":\"KVK nr. 54875765\",\"pdf_email_attachment\":\"0\"}}', 5, 0.00, NULL, NULL, '86.82.220.83'),
(59, '2015-10-24 15:20:28', '2015-10-24 15:20:28', 1, 4, 1, 1, NULL, 14, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:14:001]  gemaild naar Vincent van der Kolk', NULL, 20, NULL, NULL, NULL, '86.82.220.83'),
(60, '2015-10-24 15:20:28', '2015-10-24 15:20:28', 1, 4, 1, 4, NULL, 14, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:14:001]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, NULL, NULL, '86.82.220.83'),
(61, '2015-10-24 18:42:02', '2015-10-24 18:42:02', 1, 4, 1, 4, NULL, 14, NULL, 15, 'Lorna O\'Connor  heeft  [invoice:14:001]  bekeken', NULL, 7, NULL, NULL, NULL, '86.82.220.83'),
(62, '2015-10-25 10:03:29', '2015-10-25 10:03:29', 1, 4, 1, NULL, NULL, 15, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:15:0002]  gemaakt', NULL, 4, 0.00, 0.00, NULL, '86.82.220.83'),
(63, '2015-10-25 10:06:39', '2015-10-25 10:06:39', 1, 4, 1, NULL, NULL, 15, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:15:0002]  bijgewerkt', '{\"invoice_number\":\"0002\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2015-10-25\",\"due_date\":\"2015-11-24\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Werkzaamheden maand oktober\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"0.00\",\"balance\":\"0.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"[ING007]\",\"notes\":\"Fast Flex Interim Professionals\",\"cost\":\"0.00\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"vincent.vanderkolk@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"0\"}}', 5, 13440.00, 13440.00, NULL, '86.82.220.83'),
(64, '2015-10-25 10:07:19', '2015-10-25 10:07:19', 1, 4, 1, NULL, NULL, 15, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:15:0002]  bijgewerkt', '{\"invoice_number\":\"0002\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2015-10-25\",\"due_date\":\"2015-11-24\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Werkzaamheden maand oktober\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"13440.00\",\"balance\":\"13440.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"[ING007]\",\"notes\":\"Fast Flex Interim Professionals\",\"cost\":\"80.00\",\"qty\":\"168.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"vincent.vanderkolk@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"0\"}}', 5, 0.00, 13440.00, NULL, '86.82.220.83'),
(65, '2015-10-25 10:07:48', '2015-10-25 10:07:48', 1, 4, 1, 4, NULL, 15, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:15:0002]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, 13440.00, NULL, '86.82.220.83'),
(66, '2015-10-25 10:08:58', '2015-10-25 10:08:58', 1, 4, 1, 4, NULL, 15, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:15:0002]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, 13440.00, NULL, '86.82.220.83'),
(67, '2015-10-25 10:31:28', '2015-10-25 10:31:28', 1, 4, 1, 4, NULL, 15, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:15:0002]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, 13440.00, NULL, '86.82.220.83'),
(68, '2015-10-25 11:02:04', '2015-10-25 11:02:04', 1, 4, 1, 4, NULL, 15, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:15:0002]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, 13440.00, NULL, '86.82.220.83'),
(69, '2015-10-25 11:04:00', '2015-10-25 11:04:00', 1, 4, 1, 4, NULL, 15, NULL, 16, 'Lorna O\'Connor  heeft  [invoice:15:0002]  bekeken', NULL, 7, NULL, 13440.00, NULL, '86.82.220.83'),
(70, '2015-10-25 11:11:59', '2015-10-25 11:11:59', 1, 4, 1, 4, NULL, 15, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:15:0002]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, 13440.00, NULL, '86.82.220.83'),
(71, '2015-10-25 11:32:21', '2015-10-25 11:32:21', 1, 4, 1, 4, NULL, 15, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:15:0002]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, 13440.00, NULL, '86.82.220.83'),
(72, '2015-10-26 16:22:52', '2015-10-26 16:22:52', 1, 4, 1, 4, NULL, 15, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:15:0002]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, 13440.00, NULL, '86.82.220.83'),
(73, '2015-10-26 16:24:06', '2015-10-26 16:24:06', 1, 4, 1, 4, NULL, 15, NULL, 16, 'Lorna O\'Connor  heeft  [invoice:15:0002]  bekeken', NULL, 7, NULL, 13440.00, NULL, '86.82.220.83'),
(74, '2015-10-26 17:17:10', '2015-10-26 17:17:10', 1, 4, 1, 1, NULL, 14, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:14:001]  gemaild naar Vincent van der Kolk', NULL, 20, NULL, 13440.00, NULL, '86.82.220.83'),
(75, '2015-10-26 17:17:10', '2015-10-26 17:17:10', 1, 4, 1, 4, NULL, 14, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:14:001]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, 13440.00, NULL, '86.82.220.83'),
(76, '2015-10-26 17:24:44', '2015-10-26 17:24:44', 1, 4, 1, 1, NULL, 14, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:14:001]  gemaild naar Vincent van der Kolk', NULL, 20, NULL, 13440.00, NULL, '86.82.220.83'),
(77, '2015-10-26 17:24:44', '2015-10-26 17:24:44', 1, 4, 1, 4, NULL, 14, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:14:001]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, 13440.00, NULL, '86.82.220.83'),
(78, '2015-10-26 17:32:24', '2015-10-26 17:32:24', 1, 4, 1, 4, NULL, 14, NULL, 15, 'Lorna O\'Connor  heeft  [invoice:14:001]  bekeken', NULL, 7, NULL, 13440.00, NULL, '86.82.220.83'),
(79, '2015-10-26 17:37:01', '2015-10-26 17:37:01', 1, 4, 1, 4, NULL, 15, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:15:0002]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, 13440.00, NULL, '86.82.220.83'),
(80, '2015-10-26 17:37:40', '2015-10-26 17:37:40', 1, 4, 1, 4, NULL, 15, NULL, 17, 'Lorna O\'Connor  heeft  [invoice:15:0002]  bekeken', NULL, 7, NULL, 13440.00, NULL, '86.82.220.83'),
(81, '2015-10-26 17:58:14', '2015-10-26 17:58:14', 1, 1, 1, NULL, NULL, 12, NULL, NULL, 'Vincent van der Kolk  heeft  [quote:12:0001-1]  verwijderd', NULL, 23, 0.00, 17036.80, NULL, '86.82.220.83');
INSERT INTO `activities` (`id`, `created_at`, `updated_at`, `account_id`, `client_id`, `user_id`, `contact_id`, `payment_id`, `invoice_id`, `credit_id`, `invitation_id`, `message`, `json_backup`, `activity_type_id`, `adjustment`, `balance`, `token_id`, `ip`) VALUES
(82, '2015-10-28 16:14:03', '2015-10-28 16:14:03', 1, 4, 1, NULL, NULL, 15, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:15:0002]  bijgewerkt', '{\"invoice_number\":\"0002\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2015-10-25\",\"due_date\":\"2015-11-24\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in oktober\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"13440.00\",\"balance\":\"13440.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"[ING007]\",\"notes\":\"Fast Flex Interim Professionals\",\"cost\":\"80.00\",\"qty\":\"168.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"lorna.oconnor@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 2822.40, 16262.40, NULL, '91.227.229.4'),
(83, '2015-10-28 16:25:40', '2015-10-28 16:25:40', 1, 4, 1, NULL, 11, 14, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:14:001]  ingegeven', NULL, 10, -17036.80, -774.40, NULL, '91.227.229.4'),
(84, '2015-10-30 12:25:49', '2015-10-30 12:25:49', 1, 4, 1, 4, NULL, 15, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:15:0002]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, -774.40, NULL, '86.82.220.83'),
(85, '2015-11-02 14:22:51', '2015-11-02 14:22:51', 1, 4, 1, 4, NULL, 15, NULL, 18, 'Lorna O\'Connor  heeft  [invoice:15:0002]  bekeken', NULL, 7, NULL, -774.40, NULL, '109.109.127.70'),
(86, '2015-11-09 07:17:27', '2015-11-09 07:17:27', 1, 4, 1, NULL, NULL, 16, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:16:0003]  gemaakt', NULL, 4, 80.00, -694.40, NULL, '91.227.229.4'),
(87, '2015-11-18 09:26:10', '2015-11-18 09:26:10', 1, 4, 1, NULL, NULL, 16, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:16:0003]  bijgewerkt', '{\"invoice_number\":\"0003\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2015-11-09\",\"due_date\":\"2015-12-09\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden van de maand november\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"80.00\",\"balance\":\"80.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"[ING007]\",\"notes\":\"Fast Flex Interim Professionals\",\"cost\":\"80.00\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"lorna.oconnor@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 9520.00, 8825.60, NULL, '91.227.229.4'),
(88, '2015-11-18 09:26:32', '2015-11-18 09:26:32', 1, 4, 1, NULL, NULL, 16, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:16:0003]  bijgewerkt', '{\"invoice_number\":\"0003\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2015-11-09\",\"due_date\":\"2015-12-09\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden van de maand november\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"9600.00\",\"balance\":\"9600.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"[ING007]\",\"notes\":\"Fast Flex Interim Professionals\",\"cost\":\"80.00\",\"qty\":\"120.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"lorna.oconnor@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 8825.60, NULL, '91.227.229.4'),
(89, '2015-11-20 16:21:48', '2015-11-20 16:21:48', 1, 3, 1, NULL, NULL, 9, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:9:DEBET 2014/002]  verwijderd', NULL, 9, -78.65, 0.00, NULL, '86.82.220.83'),
(90, '2015-11-27 07:42:16', '2015-11-27 07:42:16', 1, 4, 1, NULL, NULL, 16, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:16:0003]  bijgewerkt', '{\"invoice_number\":\"0003\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2015-11-30\",\"due_date\":\"2015-12-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden van de maand november\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"9600.00\",\"balance\":\"9600.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"[ING007]\",\"notes\":\"Fast Flex Interim Professionals\",\"cost\":\"80.00\",\"qty\":\"120.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"lorna.oconnor@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 6662.40, 15488.00, NULL, '86.82.220.83'),
(91, '2015-11-27 07:43:56', '2015-11-27 07:43:56', 1, 4, 1, NULL, 12, 15, NULL, NULL, 'Vincent van der Kolk  heeft een  texts.payment werkzaamheden maand oktober voor  [invoice:15:0002]  ingegeven', NULL, 10, -16262.40, -774.40, NULL, '86.82.220.83'),
(92, '2015-11-30 09:39:32', '2015-11-30 09:39:32', 1, 4, 1, 4, NULL, 16, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:16:0003]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, -774.40, NULL, '91.227.229.4'),
(93, '2015-11-30 11:24:47', '2015-11-30 11:24:47', 1, 4, 1, 4, NULL, 16, NULL, 19, 'Lorna O\'Connor  heeft  [invoice:16:0003]  bekeken', NULL, 7, NULL, -774.40, NULL, '109.109.127.70'),
(94, '2015-12-18 09:02:48', '2015-12-18 09:02:48', 1, 4, 1, NULL, NULL, 17, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:17:0004]  gemaakt', NULL, 4, 8960.00, 8185.60, NULL, '86.82.220.83'),
(95, '2015-12-18 09:03:29', '2015-12-18 09:03:29', 1, 4, 1, NULL, NULL, 17, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:17:0004]  bijgewerkt', '{\"invoice_number\":\"0004\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2015-12-21\",\"due_date\":\"2016-01-21\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"8960.00\",\"balance\":\"8960.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"[ING007]\",\"notes\":\"Fast Flex Interim Professionals\",\"cost\":\"80.00\",\"qty\":\"112.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"lorna.oconnor@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 8185.60, NULL, '86.82.220.83'),
(96, '2015-12-21 09:23:54', '2015-12-21 09:23:54', 1, 4, 1, NULL, NULL, 17, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:17:0004]  bijgewerkt', '{\"invoice_number\":\"0004\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2015-12-21\",\"due_date\":\"2016-01-21\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in december\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"8960.00\",\"balance\":\"8960.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"[ING007]\",\"notes\":\"Fast Flex Interim Professionals\",\"cost\":\"80.00\",\"qty\":\"112.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"lorna.oconnor@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 1881.60, 10067.20, NULL, '86.82.220.83'),
(97, '2015-12-21 09:26:13', '2015-12-21 09:26:13', 1, 4, 1, 4, NULL, 17, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:17:0004]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, 10067.20, NULL, '86.82.220.83'),
(98, '2015-12-22 07:11:35', '2015-12-22 07:11:35', 1, 4, 1, 4, NULL, 17, NULL, 20, 'Lorna O\'Connor  heeft  [invoice:17:0004]  bekeken', NULL, 7, NULL, 10067.20, NULL, '109.109.127.70'),
(99, '2016-01-21 08:44:10', '2016-01-21 08:44:10', 1, 4, 1, NULL, 13, 17, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:17:0004]  ingegeven', NULL, 10, -10841.60, -774.40, NULL, '91.227.229.4'),
(100, '2016-01-21 08:45:08', '2016-01-21 08:45:08', 1, 4, 1, NULL, 14, 16, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:16:0003]  ingegeven', NULL, 10, -16262.40, -17036.80, NULL, '91.227.229.4'),
(101, '2016-01-21 08:48:00', '2016-01-21 08:48:00', 1, 4, 1, NULL, NULL, 18, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:18:0005]  gemaakt', NULL, 4, 10841.60, -6195.20, NULL, '91.227.229.4'),
(102, '2016-01-21 08:48:42', '2016-01-21 08:48:42', 1, 4, 1, NULL, NULL, 18, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:18:0005]  bijgewerkt', '{\"invoice_number\":\"0005\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-01-21\",\"due_date\":\"2016-01-21\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in december\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"10841.60\",\"balance\":\"10841.60\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"[ING007]\",\"notes\":\"Fast Flex Interim Professionals\",\"cost\":\"80.00\",\"qty\":\"112.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"lorna.oconnor@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 4646.40, -1548.80, NULL, '91.227.229.4'),
(103, '2016-01-29 08:56:27', '2016-01-29 08:56:27', 1, 4, 1, NULL, NULL, 18, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:18:0005]  bijgewerkt', '{\"invoice_number\":\"0005\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-01-21\",\"due_date\":\"2016-01-21\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in december\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"15488.00\",\"balance\":\"15488.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"[ING007]\",\"notes\":\"Fast Flex Interim Professionals\",\"cost\":\"80.00\",\"qty\":\"160.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"lorna.oconnor@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, -1548.80, NULL, '91.227.229.4'),
(104, '2016-01-29 08:56:39', '2016-01-29 08:56:39', 1, 4, 1, NULL, NULL, 18, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:18:0005]  bijgewerkt', '{\"invoice_number\":\"0005\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-01-29\",\"due_date\":\"2016-02-29\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in december\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"15488.00\",\"balance\":\"15488.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"[ING007]\",\"notes\":\"Fast Flex Interim Professionals\",\"cost\":\"80.00\",\"qty\":\"160.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"lorna.oconnor@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, -774.40, -2323.20, NULL, '91.227.229.4'),
(105, '2016-01-29 08:57:05', '2016-01-29 08:57:05', 1, 4, 1, NULL, NULL, 18, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:18:0005]  bijgewerkt', '{\"invoice_number\":\"0005\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-01-29\",\"due_date\":\"2016-02-29\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in december\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"14713.60\",\"balance\":\"14713.60\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"[ING007]\",\"notes\":\"Fast Flex Interim Professionals\",\"cost\":\"80.00\",\"qty\":\"152.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"lorna.oconnor@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, -2323.20, NULL, '91.227.229.4'),
(106, '2016-01-29 08:57:59', '2016-01-29 08:57:59', 1, 4, 1, 4, NULL, 18, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:18:0005]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, -2323.20, NULL, '91.227.229.4'),
(107, '2016-02-01 08:48:40', '2016-02-01 08:48:40', 1, 4, 1, 4, NULL, 18, NULL, 21, 'Lorna O\'Connor  heeft  [invoice:18:0005]  bekeken', NULL, 7, NULL, -2323.20, NULL, '109.109.127.70'),
(108, '2016-02-24 11:21:12', '2016-02-24 11:21:12', 1, 4, 1, NULL, 15, 18, NULL, NULL, 'Vincent van der Kolk  heeft een  texts.payment Factuur Januari 2016 voor  [invoice:18:0005]  ingegeven', NULL, 10, -14713.60, -17036.80, NULL, '86.82.220.83'),
(109, '2016-02-24 11:23:42', '2016-02-24 11:23:42', 1, 4, 1, NULL, NULL, 19, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:19:0006]  gemaakt', NULL, 4, 14713.60, -2323.20, NULL, '86.82.220.83'),
(110, '2016-02-29 07:47:22', '2016-02-29 07:47:22', 1, 4, 1, 4, NULL, 19, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:19:0006]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, -2323.20, NULL, '91.227.229.4'),
(111, '2016-03-08 15:10:20', '2016-03-08 15:10:20', 1, 4, 1, 4, NULL, 19, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:19:0006]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, -2323.20, NULL, '86.82.220.83'),
(112, '2016-03-15 12:11:26', '2016-03-15 12:11:26', 1, 4, 1, 4, NULL, 19, NULL, 23, 'Lorna O\'Connor  heeft  [invoice:19:0006]  bekeken', NULL, 7, NULL, -2323.20, NULL, '109.109.127.70'),
(113, '2016-03-18 08:36:39', '2016-03-18 08:36:39', 1, 4, 1, NULL, NULL, 20, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:20:0007]  gemaakt', NULL, 4, 17811.20, 15488.00, NULL, '86.82.220.83'),
(114, '2016-03-26 08:42:36', '2016-03-26 08:42:36', 1, 4, 1, NULL, 16, 19, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:19:0006]  ingegeven', NULL, 10, -14713.60, 774.40, NULL, '86.82.220.83'),
(115, '2016-03-30 10:23:13', '2016-03-30 10:23:13', 1, 4, 1, NULL, NULL, 20, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:20:0007]  bijgewerkt', '{\"invoice_number\":\"0007\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-03-30\",\"due_date\":\"2016-04-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in maand 2016\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"17811.20\",\"balance\":\"17811.20\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"[ING007]\",\"notes\":\"Fast Flex Interim Professionals\",\"cost\":\"80.00\",\"qty\":\"184.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"lorna.oconnor@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 774.40, NULL, '86.82.220.83'),
(116, '2016-03-30 10:24:12', '2016-03-30 10:24:12', 1, 4, 1, 4, NULL, 20, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:20:0007]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, 774.40, NULL, '86.82.220.83'),
(117, '2016-03-30 11:58:11', '2016-03-30 11:58:11', 1, 4, 1, 4, NULL, 20, NULL, 24, 'Lorna O\'Connor  heeft  [invoice:20:0007]  bekeken', NULL, 7, NULL, 774.40, NULL, '109.109.127.70'),
(118, '2016-03-31 15:16:06', '2016-03-31 15:16:06', 1, 4, 1, NULL, NULL, 20, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:20:0007]  bijgewerkt', '{\"invoice_number\":\"0007\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-03-30\",\"due_date\":\"2016-04-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in maart 2016\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"17811.20\",\"balance\":\"17811.20\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"[ING007]\",\"notes\":\"Fast Flex Interim Professionals\",\"cost\":\"80.00\",\"qty\":\"184.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"lorna.oconnor@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, -774.40, 0.00, NULL, '86.82.220.83'),
(119, '2016-03-31 15:16:19', '2016-03-31 15:16:19', 1, 4, 1, 4, NULL, 20, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:20:0007]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, 0.00, NULL, '86.82.220.83'),
(120, '2016-04-04 05:31:19', '2016-04-04 05:31:19', 1, 4, 1, 4, NULL, 20, NULL, 24, 'Lorna O\'Connor  heeft  [invoice:20:0007]  bekeken', NULL, 7, NULL, 0.00, NULL, '109.109.127.70'),
(121, '2016-04-08 15:49:49', '2016-04-08 15:49:49', 1, 4, 1, NULL, 17, 20, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:20:0007]  ingegeven', NULL, 10, -17036.80, -17036.80, NULL, '86.82.220.83'),
(122, '2016-04-22 06:17:22', '2016-04-22 06:17:22', 1, 4, 1, NULL, NULL, 21, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:21:0008]  gemaakt', NULL, 4, 15488.00, -1548.80, NULL, '86.82.220.83'),
(123, '2016-04-29 07:04:47', '2016-04-29 07:04:47', 1, 4, 1, NULL, NULL, 21, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:21:0008]  bijgewerkt', '{\"invoice_number\":\"0008\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-04-22\",\"due_date\":\"2016-04-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in maart 2016\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"15488.00\",\"balance\":\"15488.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"[ING007]\",\"notes\":\"Fast Flex Interim Professionals\",\"cost\":\"80.00\",\"qty\":\"160.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"lorna.oconnor@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, -774.40, -2323.20, NULL, '86.82.220.83'),
(124, '2016-04-29 07:05:30', '2016-04-29 07:05:30', 1, 4, 1, NULL, NULL, 21, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:21:0008]  bijgewerkt', '{\"invoice_number\":\"0008\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-04-22\",\"due_date\":\"2016-04-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in april 2016\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"14713.60\",\"balance\":\"14713.60\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"[ING007]\",\"notes\":\"Fast Flex Interim Professionals\",\"cost\":\"80.00\",\"qty\":\"152.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"lorna.oconnor@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, -2323.20, NULL, '86.82.220.83'),
(125, '2016-04-29 07:07:09', '2016-04-29 07:07:09', 1, 4, 1, 4, NULL, 21, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:21:0008]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, -2323.20, NULL, '86.82.220.83'),
(126, '2016-05-02 04:08:34', '2016-05-02 04:08:34', 1, 4, 1, 4, NULL, 21, NULL, 25, 'Lorna O\'Connor  heeft  [invoice:21:0008]  bekeken', NULL, 7, NULL, -2323.20, NULL, '213.125.187.244'),
(127, '2016-05-02 05:15:01', '2016-05-02 05:15:01', 1, 4, 1, 4, NULL, 21, NULL, 25, 'Lorna O\'Connor  heeft  [invoice:21:0008]  bekeken', NULL, 7, NULL, -2323.20, NULL, '109.109.127.70'),
(128, '2016-05-25 12:39:45', '2016-05-25 12:39:45', 1, 4, 1, NULL, NULL, 22, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:22:0009]  gemaakt', NULL, 4, 11616.00, 9292.80, NULL, '86.82.220.83'),
(129, '2016-05-28 12:01:08', '2016-05-28 12:01:08', 1, 4, 1, NULL, 18, 21, NULL, NULL, 'Vincent van der Kolk  heeft een  texts.payment Werkzaamheden maand april 2016 voor  [invoice:21:0008]  ingegeven', NULL, 10, -14713.60, -5420.80, NULL, '86.82.220.83'),
(130, '2016-05-30 07:08:24', '2016-05-30 07:08:24', 1, 4, 1, NULL, NULL, 22, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:22:0009]  bijgewerkt', '{\"invoice_number\":\"0009\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-05-31\",\"due_date\":\"2016-06-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in mei 2016\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"11616.00\",\"balance\":\"11616.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"[ING007]\",\"notes\":\"Fast Flex Interim Professionals\",\"cost\":\"80.00\",\"qty\":\"120.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"lorna.oconnor@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, -5420.80, NULL, '80.101.171.229'),
(131, '2016-05-30 07:08:48', '2016-05-30 07:08:48', 1, 4, 1, 4, NULL, 22, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:22:0009]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, -5420.80, NULL, '80.101.171.229'),
(132, '2016-05-30 07:11:28', '2016-05-30 07:11:28', 1, 4, 1, 4, NULL, 22, NULL, 26, 'Lorna O\'Connor  heeft  [invoice:22:0009]  bekeken', NULL, 7, NULL, -5420.80, NULL, '109.109.127.70'),
(133, '2016-06-02 03:57:23', '2016-06-02 03:57:23', 1, 4, 1, NULL, NULL, 23, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:23:0010]  gemaakt', NULL, 4, 1452.00, -3968.80, NULL, '141.93.23.140'),
(134, '2016-06-02 04:40:38', '2016-06-02 04:40:38', 1, 4, 1, 4, NULL, 22, NULL, 26, 'Lorna O\'Connor  heeft  [invoice:22:0009]  bekeken', NULL, 7, NULL, -3968.80, NULL, '109.109.127.70'),
(135, '2016-06-03 05:03:47', '2016-06-03 05:03:47', 1, 4, 1, NULL, NULL, 23, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:23:0010]  bijgewerkt', '{\"invoice_number\":\"0010\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-06-30\",\"due_date\":\"2016-07-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in juni 2016\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"1452.00\",\"balance\":\"1452.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"AHOLD015\",\"notes\":\"Sam Categorie 2 ontwikkeling\",\"cost\":\"75.00\",\"qty\":\"16.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 10890.00, 6921.20, NULL, '86.82.220.83'),
(136, '2016-06-17 04:56:05', '2016-06-17 04:56:05', 1, 5, 1, NULL, NULL, NULL, NULL, NULL, 'Vincent van der Kolk  heeft  [client:5:G.H.van der Kolk]  aangegemaakt', NULL, 1, NULL, NULL, NULL, '86.82.220.83'),
(137, '2016-06-17 05:47:31', '2016-06-17 05:47:31', 1, 5, 1, NULL, NULL, 24, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:24:kolkmedia-hardware-001]  gemaakt', NULL, 4, 276.99, 276.99, NULL, '86.82.220.83'),
(138, '2016-06-17 06:06:21', '2016-06-17 06:06:21', 1, 5, 1, NULL, NULL, 24, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:24:kolkmedia-hardware-001]  bijgewerkt', '{\"invoice_number\":\"kolkmedia-hardware-001\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-06-17\",\"due_date\":\"2016-07-17\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"276.99\",\"balance\":\"276.99\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"1252486\",\"notes\":\"APPLE AIRPORT EXTREME\",\"cost\":\"194.00\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"1186804\",\"notes\":\"APPLE USB SUPERDRIVE\",\"cost\":\"82.99\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"G.H.van der Kolk\",\"address1\":\"Kastanjelaan\",\"address2\":\"61\",\"city\":\"Bleiswijk\",\"state\":\"Zuid-holland\",\"postal_code\":\"2665 GA\",\"work_phone\":\"(06) 13 32 30 77\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"G.H.van der Kolk\",\"contacts\":[{\"first_name\":\"Gerard\",\"last_name\":\"van der Kolk\",\"email\":\"gerardvanderkolk@planet.nl\",\"phone\":\"(06) 13 32 30 77\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 1683.14, 1960.13, NULL, '86.82.220.83'),
(139, '2016-06-17 06:06:43', '2016-06-17 06:06:43', 1, 5, 1, NULL, NULL, 24, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:24:kolkmedia-hardware-001]  bijgewerkt', '{\"invoice_number\":\"kolkmedia-hardware-001\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-06-17\",\"due_date\":\"2016-07-17\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"1960.13\",\"balance\":\"1960.13\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"1252486\",\"notes\":\"APPLE AIRPORT EXTREME\",\"cost\":\"160.33\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"1186804\",\"notes\":\"APPLE USB SUPERDRIVE\",\"cost\":\"68.59\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"1412957\",\"notes\":\"APPLE IMAC 27\' 5K 3.2GI5\",\"cost\":\"1731.21\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"G.H.van der Kolk\",\"address1\":\"Kastanjelaan\",\"address2\":\"61\",\"city\":\"Bleiswijk\",\"state\":\"Zuid-holland\",\"postal_code\":\"2665 GA\",\"work_phone\":\"(06) 13 32 30 77\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"G.H.van der Kolk\",\"contacts\":[{\"first_name\":\"Gerard\",\"last_name\":\"van der Kolk\",\"email\":\"gerardvanderkolk@planet.nl\",\"phone\":\"(06) 13 32 30 77\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 1960.13, NULL, '86.82.220.83');
INSERT INTO `activities` (`id`, `created_at`, `updated_at`, `account_id`, `client_id`, `user_id`, `contact_id`, `payment_id`, `invoice_id`, `credit_id`, `invitation_id`, `message`, `json_backup`, `activity_type_id`, `adjustment`, `balance`, `token_id`, `ip`) VALUES
(140, '2016-06-17 06:09:00', '2016-06-17 06:09:00', 1, 5, 1, 5, NULL, 24, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:24:kolkmedia-hardware-001]  gemaild naar Gerard van der Kolk', NULL, 20, NULL, 1960.13, NULL, '86.82.220.83'),
(141, '2016-06-29 09:59:20', '2016-06-29 09:59:20', 1, 4, 1, NULL, 19, 22, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:22:0009]  ingegeven', NULL, 10, -11616.00, -4694.80, NULL, '141.93.23.140'),
(142, '2016-06-30 07:31:26', '2016-06-30 07:31:26', 1, 4, 1, 4, NULL, 23, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:23:0010]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, -4694.80, NULL, '86.82.220.83'),
(143, '2016-06-30 07:33:45', '2016-06-30 07:33:45', 1, 4, 1, 4, NULL, 23, NULL, 27, 'Lorna O\'Connor  heeft  [invoice:23:0010]  bekeken', NULL, 7, NULL, -4694.80, NULL, '213.125.187.244'),
(144, '2016-06-30 07:37:41', '2016-06-30 07:37:41', 1, 4, 1, 4, NULL, 23, NULL, 27, 'Lorna O\'Connor  heeft  [invoice:23:0010]  bekeken', NULL, 7, NULL, -4694.80, NULL, '109.109.127.70'),
(145, '2016-06-30 12:44:32', '2016-06-30 12:44:32', 1, 4, 1, 4, NULL, 23, NULL, 27, 'Lorna O\'Connor  heeft  [invoice:23:0010]  bekeken', NULL, 7, NULL, -4694.80, NULL, '213.125.187.244'),
(146, '2016-07-05 07:46:07', '2016-07-05 07:46:07', 1, 4, 1, 4, NULL, 22, NULL, 26, 'Lorna O\'Connor  heeft  [invoice:22:0009]  bekeken', NULL, 7, NULL, -4694.80, NULL, '109.109.127.70'),
(147, '2016-07-13 15:15:04', '2016-07-13 15:15:04', 1, 4, 1, NULL, NULL, 23, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:23:0010]  bijgewerkt', '{\"invoice_number\":\"0010\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-06-30\",\"due_date\":\"2016-07-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in juni 2016\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"12342.00\",\"balance\":\"12342.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"AHOLD015\",\"notes\":\"Sam Categorie 2 ontwikkeling\",\"cost\":\"75.00\",\"qty\":\"136.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, -6534.00, -11228.80, NULL, '86.82.220.83'),
(148, '2016-07-13 15:15:40', '2016-07-13 15:15:40', 1, 5, 1, 5, NULL, 24, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:24:kolkmedia-hardware-001]  gemaild naar Gerard van der Kolk', NULL, 20, NULL, 1960.13, NULL, '86.82.220.83'),
(149, '2016-07-18 09:05:48', '2016-07-18 09:05:48', 1, 4, 1, NULL, NULL, 23, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:23:0010]  bijgewerkt', '{\"invoice_number\":\"0010\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-06-30\",\"due_date\":\"2016-07-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in juni 2016\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"5808.00\",\"balance\":\"5808.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"AHOLD015\",\"notes\":\"Sam Categorie 2 ontwikkeling\",\"cost\":\"75.00\",\"qty\":\"64.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 2178.00, -9050.80, NULL, '86.82.220.83'),
(150, '2016-07-20 06:16:06', '2016-07-20 06:16:06', 1, 4, 1, NULL, NULL, 23, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:23:0010]  bijgewerkt', '{\"invoice_number\":\"0010\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-06-30\",\"due_date\":\"2016-07-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in juni 2016\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"7986.00\",\"balance\":\"7986.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"AHOLD015\",\"notes\":\"Sam Categorie 2 ontwikkeling\",\"cost\":\"75.00\",\"qty\":\"64.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"\",\"notes\":\"Bonus story\",\"cost\":\"75.00\",\"qty\":\"24.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, -9050.80, NULL, '86.82.220.83'),
(151, '2016-07-20 06:18:24', '2016-07-20 06:18:24', 1, 4, 1, NULL, NULL, 25, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:25:0011]  gemaakt', NULL, 4, 7986.00, -1064.80, NULL, '86.82.220.83'),
(152, '2016-07-20 06:19:14', '2016-07-20 06:19:14', 1, 4, 1, NULL, NULL, 23, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:23:0010]  bijgewerkt', '{\"invoice_number\":\"0010\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-06-30\",\"due_date\":\"2016-07-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in juli 2016\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"7986.00\",\"balance\":\"7986.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"AHOLD015\",\"notes\":\"Sam Categorie 2 ontwikkeling\",\"cost\":\"75.00\",\"qty\":\"64.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"AHOLD011\",\"notes\":\"Inzet Mahmut\",\"cost\":\"75.00\",\"qty\":\"24.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 4356.00, 3291.20, NULL, '86.82.220.83'),
(153, '2016-07-20 06:23:17', '2016-07-20 06:23:17', 1, 4, 1, 4, NULL, 25, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:25:0011]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, 3291.20, NULL, '86.82.220.83'),
(154, '2016-07-20 06:23:52', '2016-07-20 06:23:52', 1, 5, 1, NULL, 20, 24, NULL, NULL, 'Vincent van der Kolk  heeft een  texts.payment Betaling hardware voor  [invoice:24:kolkmedia-hardware-001]  ingegeven', NULL, 10, -1960.13, 0.00, NULL, '86.82.220.83'),
(155, '2016-07-20 07:11:52', '2016-07-20 07:11:52', 1, 5, 1, NULL, NULL, 24, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:24:kolkmedia-hardware-001]  bijgewerkt', '{\"invoice_number\":\"kolkmedia-hardware-001\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-06-17\",\"due_date\":\"2016-07-17\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Aanschaf hardware 27-05-2016\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"1960.13\",\"balance\":\"0.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"1252486\",\"notes\":\"APPLE AIRPORT EXTREME\",\"cost\":\"160.33\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"1186804\",\"notes\":\"APPLE USB SUPERDRIVE\",\"cost\":\"68.59\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"1412957\",\"notes\":\"APPLE IMAC 27\' 5K 3.2GI5\",\"cost\":\"1731.21\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"G.H.van der Kolk\",\"address1\":\"Kastanjelaan\",\"address2\":\"61\",\"city\":\"Bleiswijk\",\"state\":\"Zuid-holland\",\"postal_code\":\"2665 GA\",\"work_phone\":\"(06) 13 32 30 77\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"G.H.van der Kolk\",\"contacts\":[{\"first_name\":\"Gerard\",\"last_name\":\"van der Kolk\",\"email\":\"gerardvanderkolk@planet.nl\",\"phone\":\"(06) 13 32 30 77\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 411.63, 411.63, NULL, '86.82.220.83'),
(156, '2016-07-20 07:11:52', '2016-07-20 07:11:52', 1, 5, 1, NULL, NULL, 24, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:24:kolkmedia-hardware-001]  bijgewerkt', '{\"invoice_number\":\"kolkmedia-hardware-001\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-06-17\",\"due_date\":\"2016-07-17\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Aanschaf hardware 27-05-2016\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"1960.13\",\"balance\":\"0.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"1252486\",\"notes\":\"APPLE AIRPORT EXTREME\",\"cost\":\"160.33\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"1186804\",\"notes\":\"APPLE USB SUPERDRIVE\",\"cost\":\"68.59\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"1412957\",\"notes\":\"APPLE IMAC 27\' 5K 3.2GI5\",\"cost\":\"1731.21\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"G.H.van der Kolk\",\"address1\":\"Kastanjelaan\",\"address2\":\"61\",\"city\":\"Bleiswijk\",\"state\":\"Zuid-holland\",\"postal_code\":\"2665 GA\",\"work_phone\":\"(06) 13 32 30 77\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"G.H.van der Kolk\",\"contacts\":[{\"first_name\":\"Gerard\",\"last_name\":\"van der Kolk\",\"email\":\"gerardvanderkolk@planet.nl\",\"phone\":\"(06) 13 32 30 77\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 411.63, 823.26, NULL, '86.82.220.83'),
(157, '2016-08-12 05:41:06', '2016-08-12 05:41:06', 1, 4, 1, NULL, 21, 23, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:23:0010]  ingegeven', NULL, 10, -12342.00, -9050.80, NULL, '86.82.220.83'),
(158, '2016-08-12 05:41:49', '2016-08-12 05:41:49', 1, 4, 1, NULL, 22, 25, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:25:0011]  ingegeven', NULL, 10, -7986.00, -17036.80, NULL, '86.82.220.83'),
(159, '2016-08-12 05:42:51', '2016-08-12 05:42:51', 1, 5, 1, NULL, NULL, 24, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:24:kolkmedia-hardware-001]  bijgewerkt', '{\"invoice_number\":\"kolkmedia-hardware-001\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-06-17\",\"due_date\":\"2016-07-17\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Aanschaf hardware 27-05-2016\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"2371.76\",\"balance\":\"411.63\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"1252486\",\"notes\":\"APPLE AIRPORT EXTREME\",\"cost\":\"160.33\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"1186804\",\"notes\":\"APPLE USB SUPERDRIVE\",\"cost\":\"68.59\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"1412957\",\"notes\":\"APPLE IMAC 27\' 5K 3.2GI5\",\"cost\":\"1731.21\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"G.H.van der Kolk\",\"address1\":\"Kastanjelaan\",\"address2\":\"61\",\"city\":\"Bleiswijk\",\"state\":\"Zuid-holland\",\"postal_code\":\"2665 GA\",\"work_phone\":\"(06) 13 32 30 77\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"G.H.van der Kolk\",\"contacts\":[{\"first_name\":\"Gerard\",\"last_name\":\"van der Kolk\",\"email\":\"gerardvanderkolk@planet.nl\",\"phone\":\"(06) 13 32 30 77\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, -411.63, 411.63, NULL, '86.82.220.83'),
(160, '2016-08-12 05:43:11', '2016-08-12 05:43:11', 1, 5, 1, NULL, 23, 24, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:24:kolkmedia-hardware-001]  ingegeven', NULL, 10, 0.00, 411.63, NULL, '86.82.220.83'),
(161, '2016-08-30 11:04:49', '2016-08-30 11:04:49', 1, 4, 1, NULL, NULL, 26, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:26:0013]  gemaakt', NULL, 4, 12390.40, -4646.40, NULL, '86.82.220.83'),
(162, '2016-08-30 11:06:17', '2016-08-30 11:06:17', 1, 1, 1, NULL, NULL, 13, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:13:0012]  hersteld', NULL, 25, NULL, 17036.80, NULL, '86.82.220.83'),
(163, '2016-08-30 11:07:18', '2016-08-30 11:07:18', 1, 1, 1, NULL, NULL, 13, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:13:0012]  verwijderd', NULL, 9, 0.00, 17036.80, NULL, '86.82.220.83'),
(164, '2016-08-30 11:11:13', '2016-08-30 11:11:13', 1, 4, 1, NULL, NULL, 26, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:26:0012]  bijgewerkt', '{\"invoice_number\":\"0013\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-09-30\",\"due_date\":\"2016-10-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in september 2016\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"12390.40\",\"balance\":\"12390.40\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPNS&I\",\"notes\":\"Inzet KPN S&I\",\"cost\":\"80.00\",\"qty\":\"128.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, -4646.40, NULL, '86.82.220.83'),
(165, '2016-09-05 13:33:59', '2016-09-05 13:33:59', 1, 4, 1, NULL, NULL, 26, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:26:0012]  bijgewerkt', '{\"invoice_number\":\"0012\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-09-30\",\"due_date\":\"2016-10-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in september 2016\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"12390.40\",\"balance\":\"12390.40\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPNS&I\",\"notes\":\"Inzet KPN S&I\",\"cost\":\"80.00\",\"qty\":\"128.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, -12003.20, -16649.60, NULL, '86.82.220.83'),
(166, '2016-09-09 05:31:10', '2016-09-09 05:31:10', 1, 4, 1, NULL, NULL, 26, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:26:0012]  bijgewerkt', '{\"invoice_number\":\"0012\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-09-30\",\"due_date\":\"2016-10-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in september 2016\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"387.20\",\"balance\":\"387.20\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPNS&I\",\"notes\":\"Inzet KPN S&I - ma 05-09\",\"cost\":\"80.00\",\"qty\":\"4.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"KPNS&I\",\"notes\":\"\",\"cost\":\"0.00\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 1548.80, -15100.80, NULL, '86.82.220.83'),
(167, '2016-09-16 07:02:21', '2016-09-16 07:02:21', 1, 4, 1, NULL, NULL, 26, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:26:0012]  bijgewerkt', '{\"invoice_number\":\"0012\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-09-30\",\"due_date\":\"2016-10-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in september 2016\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"1936.00\",\"balance\":\"1936.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPN142\",\"notes\":\"KPN S&I offerte GX development open team -\\nPO3200911\",\"cost\":\"80.00\",\"qty\":\"20.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 9292.80, -5808.00, NULL, '86.82.220.83'),
(168, '2016-09-29 14:04:47', '2016-09-29 14:04:47', 1, 4, 1, NULL, NULL, 27, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:27:0013]  gemaakt', NULL, 4, 13164.80, 7356.80, NULL, '86.82.220.83'),
(169, '2016-09-29 14:05:53', '2016-09-29 14:05:53', 1, 4, 1, NULL, NULL, 27, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:27:0013]  bijgewerkt', '{\"invoice_number\":\"0013\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-09-29\",\"due_date\":\"2016-10-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in oktober 2016\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"13164.80\",\"balance\":\"13164.80\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPN142\",\"notes\":\"KPN S&I offerte GX development open team -\\nPO3200911\",\"cost\":\"80.00\",\"qty\":\"136.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 7356.80, NULL, '86.82.220.83'),
(170, '2016-09-29 14:07:48', '2016-09-29 14:07:48', 1, 4, 1, NULL, NULL, 28, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:28:0014]  gemaakt', NULL, 4, 13939.20, 21296.00, NULL, '86.82.220.83'),
(171, '2016-09-29 14:09:12', '2016-09-29 14:09:12', 1, 4, 1, NULL, NULL, 29, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:29:0015]  gemaakt', NULL, 4, 12390.40, 33686.40, NULL, '86.82.220.83'),
(172, '2016-09-30 05:29:04', '2016-09-30 05:29:04', 1, 1, 1, 1, NULL, 26, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:26:0012]  gemaild naar Vincent van der Kolk', NULL, 20, NULL, 17036.80, NULL, '86.82.220.83'),
(173, '2016-09-30 05:29:04', '2016-09-30 05:29:04', 1, 1, 1, 4, NULL, 26, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:26:0012]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, 17036.80, NULL, '86.82.220.83'),
(174, '2016-09-30 05:29:42', '2016-09-30 05:29:42', 1, 4, 1, 4, NULL, 26, NULL, 30, 'Lorna O\'Connor  heeft  [invoice:26:0012]  bekeken', NULL, 7, NULL, 33686.40, NULL, '86.82.220.83'),
(175, '2016-09-30 05:39:48', '2016-09-30 05:39:48', 1, 4, 1, 4, NULL, 26, NULL, 30, 'Lorna O\'Connor  heeft  [invoice:26:0012]  bekeken', NULL, 7, NULL, 33686.40, NULL, '86.82.220.83'),
(176, '2016-09-30 05:40:25', '2016-09-30 05:40:25', 1, 4, 1, 4, NULL, 26, NULL, 30, 'Lorna O\'Connor  heeft  [invoice:26:0012]  bekeken', NULL, 7, NULL, 33686.40, NULL, '89.200.8.109'),
(177, '2016-09-30 05:41:27', '2016-09-30 05:41:27', 1, 4, 1, 1, NULL, 26, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:26:0012]  gemaild naar Vincent van der Kolk', NULL, 20, NULL, 33686.40, NULL, '86.82.220.83'),
(178, '2016-09-30 05:41:27', '2016-09-30 05:41:27', 1, 4, 1, 4, NULL, 26, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:26:0012]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, 33686.40, NULL, '86.82.220.83'),
(179, '2016-09-30 07:56:45', '2016-09-30 07:56:45', 1, 4, 1, 4, NULL, 26, NULL, 30, 'Lorna O\'Connor  heeft  [invoice:26:0012]  bekeken', NULL, 7, NULL, 33686.40, NULL, '213.125.187.244'),
(180, '2016-10-31 08:01:04', '2016-10-31 08:01:04', 1, 4, 1, 4, NULL, 27, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:27:0013]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, 33686.40, NULL, '192.33.238.54'),
(181, '2016-10-31 11:57:49', '2016-10-31 11:57:49', 1, 4, 1, 4, NULL, 27, NULL, 31, 'Lorna O\'Connor  heeft  [invoice:27:0013]  bekeken', NULL, 7, NULL, 33686.40, NULL, '213.125.187.244'),
(182, '2016-10-31 15:50:22', '2016-10-31 15:50:22', 1, 4, 1, NULL, 24, 26, NULL, NULL, 'Vincent van der Kolk  heeft een  texts.payment Factuur september voor  [invoice:26:0012]  ingegeven', NULL, 10, -11228.80, 22457.60, NULL, '86.82.220.83'),
(183, '2016-11-30 11:17:29', '2016-11-30 11:17:29', 1, 4, 1, NULL, NULL, 28, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:28:0014]  bijgewerkt', '{\"invoice_number\":\"0014\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-11-30\",\"due_date\":\"2016-12-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in november 2016\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"13939.20\",\"balance\":\"13939.20\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPN142\",\"notes\":\"KPN S&I offerte GX development open team -\\nPO3200911\",\"cost\":\"80.00\",\"qty\":\"144.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, -1548.80, 20908.80, NULL, '192.33.238.52'),
(184, '2016-11-30 11:18:20', '2016-11-30 11:18:20', 1, 4, 1, 4, NULL, 28, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:28:0014]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, 20908.80, NULL, '192.33.238.52'),
(185, '2016-12-06 08:56:02', '2016-12-06 08:56:02', 1, 4, 1, 4, NULL, 28, NULL, 32, 'Lorna O\'Connor  heeft  [invoice:28:0014]  bekeken', NULL, 7, NULL, 20908.80, NULL, '213.125.187.244'),
(186, '2016-12-15 07:09:00', '2016-12-15 07:09:00', 1, 4, 1, NULL, 25, 27, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:27:0013]  ingegeven', NULL, 10, -13164.80, 7744.00, NULL, '86.82.220.83'),
(187, '2016-12-15 07:10:31', '2016-12-15 07:10:31', 1, 4, 1, NULL, NULL, 29, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:29:0015]  bijgewerkt', '{\"invoice_number\":\"0015\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-12-30\",\"due_date\":\"2017-01-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in december 2016\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"12390.40\",\"balance\":\"12390.40\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPN142\",\"notes\":\"KPN S&I offerte GX development open team -\\nPO3200911\",\"cost\":\"80.00\",\"qty\":\"128.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Esdoornstraat\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RC\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, -11809.60, -4065.60, NULL, '86.82.220.83'),
(188, '2017-01-09 11:03:37', '2017-01-09 11:03:37', 1, 4, 1, 4, NULL, 29, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:29:0015]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, -4065.60, NULL, '192.33.238.54'),
(189, '2017-01-10 08:32:17', '2017-01-10 08:32:17', 1, 4, 1, 4, NULL, 29, NULL, 33, 'Lorna O\'Connor  heeft  [invoice:29:0015]  bekeken', NULL, 7, NULL, -4065.60, NULL, '185.127.109.23'),
(190, '2017-01-11 07:51:33', '2017-01-11 07:51:33', 1, 4, 1, NULL, NULL, 29, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:29:0015]  bijgewerkt', '{\"invoice_number\":\"0015\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-12-30\",\"due_date\":\"2017-01-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in december 2016\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"580.80\",\"balance\":\"580.80\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPN142\",\"notes\":\"KPN S&I offerte GX development open team -\\nPO3200911\",\"cost\":\"80.00\",\"qty\":\"6.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 2904.00, -1161.60, NULL, '192.33.238.53'),
(191, '2017-01-11 10:37:32', '2017-01-11 10:37:32', 1, 4, 1, NULL, NULL, 30, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:30:Creditfactuur-0015-1]  gemaakt', NULL, 4, 3484.80, 2323.20, NULL, '192.33.238.53'),
(192, '2017-01-13 08:41:48', '2017-01-13 08:41:48', 1, 4, 1, NULL, NULL, 30, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:30:Creditfactuur-0015-1]  bijgewerkt', '{\"invoice_number\":\"Creditfactuur-0015-1\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2017-01-11\",\"due_date\":\"2017-01-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Creditfactuur voor de werkzaamheden in december 2016\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"3484.80\",\"balance\":\"3484.80\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPN142\",\"notes\":\"KPN S&I offerte GX development open team -\\nPO3200911\",\"cost\":\"80.00\",\"qty\":\"36.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 1161.60, 3484.80, NULL, '77.163.43.18'),
(193, '2017-01-16 08:06:39', '2017-01-16 08:06:39', 1, 4, 1, NULL, NULL, 29, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:29:0015]  bijgewerkt', '{\"invoice_number\":\"0015\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2016-12-30\",\"due_date\":\"2017-01-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in december 2016\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"3484.80\",\"balance\":\"3484.80\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPN142\",\"notes\":\"KPN S&I offerte GX development open team -\\nPO3200911\",\"cost\":\"80.00\",\"qty\":\"36.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, -2904.00, 580.80, NULL, '192.33.238.53');
INSERT INTO `activities` (`id`, `created_at`, `updated_at`, `account_id`, `client_id`, `user_id`, `contact_id`, `payment_id`, `invoice_id`, `credit_id`, `invitation_id`, `message`, `json_backup`, `activity_type_id`, `adjustment`, `balance`, `token_id`, `ip`) VALUES
(194, '2017-01-16 08:07:05', '2017-01-16 08:07:05', 1, 4, 1, NULL, NULL, 30, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:30:0015-1]  bijgewerkt', '{\"invoice_number\":\"Creditfactuur-0015-1\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2017-01-11\",\"due_date\":\"2017-01-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Creditfactuur voor de werkzaamheden in december 2016\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"4646.40\",\"balance\":\"4646.40\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPN142\",\"notes\":\"KPN S&I offerte GX development open team -\\nPO3200911\",\"cost\":\"80.00\",\"qty\":\"48.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, -580.80, 0.00, NULL, '192.33.238.53'),
(195, '2017-01-30 08:03:31', '2017-01-30 08:03:31', 1, 4, 1, NULL, NULL, 30, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:30:0015-1]  bijgewerkt', '{\"invoice_number\":\"0015-1\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2017-01-11\",\"due_date\":\"2017-01-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Aanvullende factuur voor de werkzaamheden in december 2016\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"4065.60\",\"balance\":\"4065.60\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPN142\",\"notes\":\"KPN S&I offerte GX development open team -\\nPO3200911\",\"cost\":\"80.00\",\"qty\":\"42.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 0.00, NULL, '192.33.238.53'),
(196, '2017-01-30 08:04:29', '2017-01-30 08:04:29', 1, 4, 1, NULL, 26, 29, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:29:0015]  ingegeven', NULL, 10, -580.80, -580.80, NULL, '192.33.238.53'),
(197, '2017-01-30 08:05:08', '2017-01-30 08:05:08', 1, 4, 1, NULL, 27, 28, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:28:0014]  ingegeven', NULL, 10, -12390.40, -12971.20, NULL, '192.33.238.53'),
(198, '2017-01-30 08:41:48', '2017-01-30 08:41:48', 1, 4, 1, NULL, NULL, 31, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:31:0016]  gemaakt', NULL, 4, 10067.20, -2904.00, NULL, '192.33.238.53'),
(199, '2017-01-30 08:42:10', '2017-01-30 08:42:10', 1, 4, 1, NULL, NULL, 31, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:31:0016]  bijgewerkt', '{\"invoice_number\":\"0016\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2017-01-30\",\"due_date\":\"2016-12-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in januari 2017\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"10067.20\",\"balance\":\"10067.20\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPN142\",\"notes\":\"KPN S&I offerte GX development open team -\\nPO3200911\",\"cost\":\"80.00\",\"qty\":\"104.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, -2904.00, NULL, '192.33.238.53'),
(200, '2017-01-30 08:42:17', '2017-01-30 08:42:17', 1, 4, 1, NULL, NULL, 31, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:31:0016]  bijgewerkt', '{\"invoice_number\":\"0016\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2017-01-30\",\"due_date\":\"2017-02-28\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in januari 2017\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"10067.20\",\"balance\":\"10067.20\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPN142\",\"notes\":\"KPN S&I offerte GX development open team -\\nPO3200911\",\"cost\":\"80.00\",\"qty\":\"104.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, -2904.00, NULL, '192.33.238.53'),
(201, '2017-01-31 08:18:09', '2017-01-31 08:18:09', 1, 4, 1, NULL, NULL, 31, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:31:0016]  bijgewerkt', '{\"invoice_number\":\"0016\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2017-01-31\",\"due_date\":\"2017-02-28\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in januari 2017\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"10067.20\",\"balance\":\"10067.20\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPN142\",\"notes\":\"KPN S&I offerte GX development open team -\\nPO3200911\",\"cost\":\"80.00\",\"qty\":\"104.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, -387.20, -3291.20, NULL, '192.33.238.53'),
(202, '2017-01-31 08:31:11', '2017-01-31 08:31:11', 1, 4, 1, 4, NULL, 31, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:31:0016]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, -3291.20, NULL, '192.33.238.53'),
(203, '2017-01-31 11:28:58', '2017-01-31 11:28:58', 1, 4, 1, 4, NULL, 31, NULL, 36, 'Lorna O\'Connor  heeft  [invoice:31:0016]  bekeken', NULL, 7, NULL, -3291.20, NULL, '185.127.109.23'),
(204, '2017-03-01 13:38:54', '2017-03-01 13:38:54', 1, 4, 1, NULL, 28, 31, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:31:0016]  ingegeven', NULL, 10, -9680.00, -12971.20, NULL, '77.163.43.18'),
(205, '2017-03-01 13:39:27', '2017-03-01 13:39:27', 1, 4, 1, NULL, 29, 30, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:30:0015-1]  ingegeven', NULL, 10, -4065.60, -17036.80, NULL, '77.163.43.18'),
(206, '2017-03-01 13:44:13', '2017-03-01 13:44:13', 1, 4, 1, NULL, NULL, 32, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:32:0017]  gemaakt', NULL, 4, 11616.00, -5420.80, NULL, '77.163.43.18'),
(207, '2017-03-01 13:44:55', '2017-03-01 13:44:55', 1, 4, 1, NULL, NULL, 14, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:14:0001]  gearchiveerd', NULL, 8, NULL, -5420.80, NULL, '77.163.43.18'),
(208, '2017-03-01 13:44:55', '2017-03-01 13:44:55', 1, 4, 1, NULL, NULL, 15, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:15:0002]  gearchiveerd', NULL, 8, NULL, -5420.80, NULL, '77.163.43.18'),
(209, '2017-03-01 13:44:55', '2017-03-01 13:44:55', 1, 4, 1, NULL, NULL, 16, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:16:0003]  gearchiveerd', NULL, 8, NULL, -5420.80, NULL, '77.163.43.18'),
(210, '2017-03-01 13:44:55', '2017-03-01 13:44:55', 1, 4, 1, NULL, NULL, 17, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:17:0004]  gearchiveerd', NULL, 8, NULL, -5420.80, NULL, '77.163.43.18'),
(211, '2017-03-01 13:47:40', '2017-03-01 13:47:40', 1, 4, 1, NULL, NULL, 32, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:32:0017]  bijgewerkt', '{\"invoice_number\":\"0017\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2017-02-28\",\"due_date\":\"2017-03-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in januari 2017\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"11616.00\",\"balance\":\"11616.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPNS&I011\",\"notes\":\"GX development open team feb\\/mrt 2017 \\nKPNS&I011\",\"cost\":\"80.00\",\"qty\":\"120.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, -5420.80, NULL, '77.163.43.18'),
(212, '2017-03-01 13:48:00', '2017-03-01 13:48:00', 1, 4, 1, 4, NULL, 32, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:32:0017]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, -5420.80, NULL, '77.163.43.18'),
(213, '2017-03-07 07:52:41', '2017-03-07 07:52:41', 1, 4, 1, 4, NULL, 32, NULL, 37, 'Lorna O\'Connor  heeft  [invoice:32:0017]  bekeken', NULL, 7, NULL, -5420.80, NULL, '185.127.109.23'),
(214, '2017-03-30 08:00:31', '2017-03-30 08:00:31', 1, 4, 1, NULL, NULL, 33, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:33:0018]  gemaakt', NULL, 4, 11616.00, 6195.20, NULL, '192.33.238.54'),
(215, '2017-03-30 08:06:58', '2017-03-30 08:06:58', 1, 4, 1, NULL, NULL, 33, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:33:0018]  bijgewerkt', '{\"invoice_number\":\"0018\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2017-03-30\",\"due_date\":\"2017-04-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in maart 2017\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"11616.00\",\"balance\":\"11616.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPNS&I011\",\"notes\":\"KPN - GX development open team feb\\/mrt\\n2017\",\"cost\":\"80.00\",\"qty\":\"120.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 2710.40, 8905.60, NULL, '192.33.238.54'),
(216, '2017-03-30 08:10:09', '2017-03-30 08:10:09', 1, 4, 1, 4, NULL, 33, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:33:0018]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, 8905.60, NULL, '192.33.238.54'),
(217, '2017-03-30 10:31:48', '2017-03-30 10:31:48', 1, 4, 1, 4, NULL, 33, NULL, 38, 'Lorna O\'Connor  heeft  [invoice:33:0018]  bekeken', NULL, 7, NULL, 8905.60, NULL, '185.127.109.23'),
(218, '2017-04-06 12:29:33', '2017-04-06 12:29:33', 1, 4, 1, NULL, 30, 32, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:32:0017]  ingegeven', NULL, 10, -11616.00, -2710.40, NULL, '192.33.238.56'),
(219, '2017-04-28 07:12:24', '2017-04-28 07:12:24', 1, 4, 1, NULL, 31, 33, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:33:0018]  ingegeven', NULL, 10, -14326.40, -17036.80, NULL, '192.33.238.51'),
(220, '2017-04-28 08:07:27', '2017-04-28 08:07:27', 1, 4, 1, NULL, NULL, 34, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:34:0019]  gemaakt', NULL, 4, 9680.00, -7356.80, NULL, '192.33.238.51'),
(221, '2017-04-28 08:11:19', '2017-04-28 08:11:19', 1, 4, 1, 4, NULL, 34, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:34:0019]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, -7356.80, NULL, '192.33.238.51'),
(222, '2017-05-03 09:37:10', '2017-05-03 09:37:10', 1, 4, 1, 4, NULL, 34, NULL, 39, 'Lorna O\'Connor  heeft  [invoice:34:0019]  bekeken', NULL, 7, NULL, -7356.80, NULL, '185.127.109.23'),
(223, '2017-05-24 06:55:18', '2017-05-24 06:55:18', 1, 4, 1, 4, NULL, 34, NULL, 39, 'Lorna O\'Connor  heeft  [invoice:34:0019]  bekeken', NULL, 7, NULL, -7356.80, NULL, '185.127.109.23'),
(224, '2017-05-24 09:55:58', '2017-05-24 09:55:58', 1, 4, 1, 4, NULL, 34, NULL, 39, 'Lorna O\'Connor  heeft  [invoice:34:0019]  bekeken', NULL, 7, NULL, -7356.80, NULL, '192.33.238.53'),
(225, '2017-05-30 05:16:24', '2017-05-30 05:16:24', 1, 4, 1, NULL, NULL, 35, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:35:0020]  gemaakt', NULL, 4, 9292.80, 1936.00, NULL, '192.33.238.53'),
(226, '2017-05-30 05:18:43', '2017-05-30 05:18:43', 1, 4, 1, NULL, 32, 34, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:34:0019]  ingegeven', NULL, 10, -9680.00, -7744.00, NULL, '192.33.238.53'),
(227, '2017-05-31 05:00:09', '2017-05-31 05:00:09', 1, 4, 1, 4, NULL, 35, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:35:0020]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, -7744.00, NULL, '192.33.238.54'),
(228, '2017-05-31 05:22:11', '2017-05-31 05:22:11', 1, 4, 1, 4, NULL, 35, NULL, 40, 'Lorna O\'Connor  heeft  [invoice:35:0020]  bekeken', NULL, 7, NULL, -7744.00, NULL, '185.127.109.23'),
(229, '2017-05-31 06:05:19', '2017-05-31 06:05:19', 1, 4, 1, 4, NULL, 35, NULL, 40, 'Lorna O\'Connor  heeft  [invoice:35:0020]  bekeken', NULL, 7, NULL, -7744.00, NULL, '185.127.109.23'),
(230, '2017-05-31 06:14:57', '2017-05-31 06:14:57', 1, 4, 1, 4, NULL, 35, NULL, 40, 'Lorna O\'Connor  heeft  [invoice:35:0020]  bekeken', NULL, 7, NULL, -7744.00, NULL, '185.127.109.23'),
(231, '2017-06-30 06:38:07', '2017-06-30 06:38:07', 1, 4, 1, NULL, 33, 35, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:35:0020]  ingegeven', NULL, 10, -9292.80, -17036.80, NULL, '77.163.43.18'),
(232, '2017-06-30 06:39:06', '2017-06-30 06:39:06', 1, 4, 1, NULL, NULL, 36, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:36:0021]  gemaakt', NULL, 4, 12390.40, -4646.40, NULL, '77.163.43.18'),
(233, '2017-06-30 06:42:07', '2017-06-30 06:42:07', 1, 4, 1, 4, NULL, 36, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:36:0021]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, -4646.40, NULL, '77.163.43.18'),
(234, '2017-06-30 07:09:16', '2017-06-30 07:09:16', 1, 4, 1, 4, NULL, 36, NULL, 41, 'Lorna O\'Connor  heeft  [invoice:36:0021]  bekeken', NULL, 7, NULL, -4646.40, NULL, '185.127.109.23'),
(235, '2017-07-28 05:43:04', '2017-07-28 05:43:04', 1, 4, 1, NULL, 34, 36, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:36:0021]  ingegeven', NULL, 10, -12390.40, -17036.80, NULL, '77.163.43.18'),
(236, '2017-07-28 05:49:14', '2017-07-28 05:49:14', 1, 4, 1, NULL, NULL, 37, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:37:0022]  gemaakt', NULL, 4, 12390.40, -4646.40, NULL, '77.163.43.18'),
(237, '2017-07-31 06:57:30', '2017-07-31 06:57:30', 1, 4, 1, 4, NULL, 37, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:37:0022]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, -4646.40, NULL, '192.33.238.53'),
(238, '2017-07-31 08:28:15', '2017-07-31 08:28:15', 1, 4, 1, 4, NULL, 37, NULL, 42, 'Lorna O\'Connor  heeft  [invoice:37:0022]  bekeken', NULL, 7, NULL, -4646.40, NULL, '185.127.109.23'),
(239, '2017-08-30 07:52:18', '2017-08-30 07:52:18', 1, 4, 1, NULL, 35, 37, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:37:0022]  ingegeven', NULL, 10, -12390.40, -17036.80, NULL, '192.33.238.51'),
(240, '2017-08-30 07:52:39', '2017-08-30 07:52:39', 1, 5, 1, NULL, NULL, 24, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:24:kolkmedia-hardware-001]  gearchiveerd', NULL, 8, NULL, 411.63, NULL, '192.33.238.51'),
(241, '2017-08-30 07:53:02', '2017-08-30 07:53:02', 1, 4, 1, NULL, NULL, 18, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:18:0005]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '192.33.238.51'),
(242, '2017-08-30 07:53:02', '2017-08-30 07:53:02', 1, 4, 1, NULL, NULL, 19, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:19:0006]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '192.33.238.51'),
(243, '2017-08-30 07:53:02', '2017-08-30 07:53:02', 1, 4, 1, NULL, NULL, 20, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:20:0007]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '192.33.238.51'),
(244, '2017-08-30 07:53:02', '2017-08-30 07:53:02', 1, 4, 1, NULL, NULL, 21, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:21:0008]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '192.33.238.51'),
(245, '2017-08-30 07:53:02', '2017-08-30 07:53:02', 1, 4, 1, NULL, NULL, 22, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:22:0009]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '192.33.238.51'),
(246, '2017-08-30 07:53:02', '2017-08-30 07:53:02', 1, 4, 1, NULL, NULL, 23, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:23:0010]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '192.33.238.51'),
(247, '2017-08-30 07:53:02', '2017-08-30 07:53:02', 1, 4, 1, NULL, NULL, 25, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:25:0011]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '192.33.238.51'),
(248, '2017-08-30 07:53:02', '2017-08-30 07:53:02', 1, 4, 1, NULL, NULL, 26, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:26:0012]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '192.33.238.51'),
(249, '2017-08-30 07:53:02', '2017-08-30 07:53:02', 1, 4, 1, NULL, NULL, 27, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:27:0013]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '192.33.238.51'),
(250, '2017-08-30 07:53:02', '2017-08-30 07:53:02', 1, 4, 1, NULL, NULL, 28, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:28:0014]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '192.33.238.51'),
(251, '2017-08-30 07:55:50', '2017-08-30 07:55:50', 1, 4, 1, NULL, NULL, 38, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:38:0023]  gemaakt', NULL, 4, 11616.00, -5420.80, NULL, '192.33.238.51'),
(252, '2017-08-30 07:57:07', '2017-08-30 07:57:07', 1, 4, 1, NULL, NULL, 29, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:29:0015]  gearchiveerd', NULL, 8, NULL, -5420.80, NULL, '192.33.238.51'),
(253, '2017-08-30 07:57:07', '2017-08-30 07:57:07', 1, 4, 1, NULL, NULL, 30, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:30:0015-1]  gearchiveerd', NULL, 8, NULL, -5420.80, NULL, '192.33.238.51'),
(254, '2017-08-30 07:57:35', '2017-08-30 07:57:35', 1, 4, 1, NULL, NULL, 38, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:38:0023]  bijgewerkt', '{\"invoice_number\":\"0023\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2017-08-30\",\"due_date\":\"2017-07-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in augustus 2017\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"11616.00\",\"balance\":\"11616.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPNS&I016\",\"notes\":\"GX development open team Q3 207 -\\nPO 3239692\",\"cost\":\"80.00\",\"qty\":\"120.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, -5420.80, NULL, '192.33.238.51'),
(255, '2017-09-28 12:39:37', '2017-09-28 12:39:37', 1, 4, 1, 4, NULL, 38, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:38:0023]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, -5420.80, NULL, '2a02:a453:c90b:1:7842:6270:f653:e11a'),
(256, '2017-09-28 12:40:56', '2017-09-28 12:40:56', 1, 4, 1, NULL, NULL, 39, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:39:0024]  gemaakt', NULL, 4, 11616.00, 6195.20, NULL, '2a02:a453:c90b:1:7842:6270:f653:e11a'),
(257, '2017-09-28 12:43:07', '2017-09-28 12:43:07', 1, 4, 1, 4, NULL, 39, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:39:0024]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, 6195.20, NULL, '2a02:a453:c90b:1:7842:6270:f653:e11a'),
(258, '2017-09-28 12:51:07', '2017-09-28 12:51:07', 1, 4, 1, 4, NULL, 39, NULL, 44, 'Lorna O\'Connor  heeft  [invoice:39:0024]  bekeken', NULL, 7, NULL, 6195.20, NULL, '185.127.109.23'),
(259, '2017-09-29 09:07:39', '2017-09-29 09:07:39', 1, 4, 1, 4, NULL, 38, NULL, 43, 'Lorna O\'Connor  heeft  [invoice:38:0023]  bekeken', NULL, 7, NULL, 6195.20, NULL, '185.127.109.23'),
(260, '2017-10-03 14:07:46', '2017-10-03 14:07:46', 1, 4, 1, NULL, NULL, 40, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:40:0023-1]  gemaakt', NULL, 4, -96.80, 6098.40, NULL, '2a02:a453:c90b:1:30fd:52c2:cad2:cf7d'),
(261, '2017-10-16 12:17:32', '2017-10-16 12:17:32', 1, 4, 1, NULL, NULL, 40, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:40:0023-1]  bijgewerkt', '{\"invoice_number\":\"0023-1\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2017-10-03\",\"due_date\":\"2017-11-03\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Credit Factuur voor de werkzaamheden in augustus 2017\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"-96.80\",\"balance\":\"-96.80\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPNS&I016\",\"notes\":\"GX development open team Q3 207 -\\nPO 3239692\",\"cost\":\"80.00\",\"qty\":\"-1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, -677.60, 5420.80, NULL, '192.33.238.55'),
(262, '2017-10-16 12:18:12', '2017-10-16 12:18:12', 1, 4, 1, NULL, NULL, 40, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:40:0023-1]  bijgewerkt', '{\"invoice_number\":\"0023-1\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2017-10-03\",\"due_date\":\"2017-11-03\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Credit Factuur voor de werkzaamheden in augustus 2017\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"-774.40\",\"balance\":\"-774.40\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPNS&I016\",\"notes\":\"GX development open team Q3 207 -\\nPO 3239692\",\"cost\":\"80.00\",\"qty\":\"-8.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 677.60, 6098.40, NULL, '192.33.238.55'),
(263, '2017-10-16 12:18:50', '2017-10-16 12:18:50', 1, 4, 1, NULL, NULL, 41, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:41:0023-2]  gemaakt', NULL, 4, -677.60, 5420.80, NULL, '192.33.238.55'),
(264, '2017-10-26 04:16:25', '2017-10-26 04:16:25', 1, 4, 1, NULL, NULL, 38, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:38:0023]  bijgewerkt', '{\"invoice_number\":\"0023\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2017-08-31\",\"due_date\":\"2017-09-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in augustus 2017\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"11616.00\",\"balance\":\"11616.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPNS&I016\",\"notes\":\"GX development open team Q3 207 -\\nPO 3239692\",\"cost\":\"80.00\",\"qty\":\"120.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, -774.40, 4646.40, NULL, '2a02:a453:c90b:1:b9f8:61e7:a68b:ac41'),
(265, '2017-10-26 04:16:56', '2017-10-26 04:16:56', 1, 4, 1, NULL, NULL, 40, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:40:0023-1]  verwijderd', NULL, 9, 96.80, 4743.20, NULL, '2a02:a453:c90b:1:b9f8:61e7:a68b:ac41'),
(266, '2017-10-26 04:17:07', '2017-10-26 04:17:07', 1, 4, 1, NULL, NULL, 41, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:41:0023-2]  verwijderd', NULL, 9, 677.60, 5420.80, NULL, '2a02:a453:c90b:1:b9f8:61e7:a68b:ac41'),
(267, '2017-10-26 04:17:22', '2017-10-26 04:17:22', 1, 4, 1, NULL, 36, 38, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:38:0023]  ingegeven', NULL, 10, -10841.60, -5420.80, NULL, '2a02:a453:c90b:1:b9f8:61e7:a68b:ac41'),
(268, '2017-10-26 04:18:48', '2017-10-26 04:18:48', 1, 4, 1, NULL, NULL, 42, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:42:0025]  gemaakt', NULL, 4, 9292.80, 3872.00, NULL, '2a02:a453:c90b:1:b9f8:61e7:a68b:ac41'),
(269, '2017-10-27 06:31:48', '2017-10-27 06:31:48', 1, 4, 1, NULL, NULL, 42, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:42:0025]  bijgewerkt', '{\"invoice_number\":\"0025\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2017-10-26\",\"due_date\":\"2017-10-28\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in oktober 2017\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"9292.80\",\"balance\":\"9292.80\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPNS&I016\",\"notes\":\"GX development open team Q3 207 -\\nPO 3239692\",\"cost\":\"80.00\",\"qty\":\"96.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 3872.00, NULL, '2a02:a453:c90b:1:296e:7c0f:75d2:f82e'),
(270, '2017-10-27 06:35:17', '2017-10-27 06:35:17', 1, 4, 1, 4, NULL, 42, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:42:0025]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, 3872.00, NULL, '2a02:a453:c90b:1:296e:7c0f:75d2:f82e'),
(271, '2017-10-27 07:18:52', '2017-10-27 07:18:52', 1, 4, 1, 4, NULL, 42, NULL, 47, 'Lorna O\'Connor  heeft  [invoice:42:0025]  bekeken', NULL, 7, NULL, 3872.00, NULL, '185.127.109.23'),
(272, '2017-10-27 07:18:59', '2017-10-27 07:18:59', 1, 4, 1, 4, NULL, 42, NULL, 47, 'Lorna O\'Connor  heeft  [invoice:42:0025]  bekeken', NULL, 7, NULL, 3872.00, NULL, '185.127.109.23'),
(273, '2017-11-30 09:17:03', '2017-11-30 09:17:03', 1, 4, 1, NULL, 37, 39, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:39:0024]  ingegeven', NULL, 10, -11616.00, -7744.00, NULL, '192.33.238.55'),
(274, '2017-11-30 09:17:23', '2017-11-30 09:17:23', 1, 4, 1, NULL, 38, 42, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:42:0025]  ingegeven', NULL, 10, -9292.80, -17036.80, NULL, '192.33.238.55'),
(275, '2017-11-30 09:18:44', '2017-11-30 09:18:44', 1, 4, 1, NULL, NULL, 43, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:43:0026]  gemaakt', NULL, 4, 11616.00, -5420.80, NULL, '192.33.238.55'),
(276, '2017-11-30 13:21:24', '2017-11-30 13:21:24', 1, 4, 1, NULL, NULL, 43, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:43:0026]  bijgewerkt', '{\"invoice_number\":\"0026\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2017-11-30\",\"due_date\":\"2017-12-29\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in november 2017\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"11616.00\",\"balance\":\"11616.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\r\\nEsdoornstraat 41\\r\\n2665 RC Bleiswijk\\r\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPNS&I016\",\"notes\":\"GX development open team Q3 207 -\\nPO 3239692\",\"cost\":\"80.00\",\"qty\":\"120.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, -5420.80, NULL, '2a02:a453:c90b:1:95bd:af8e:71fe:fe80'),
(277, '2017-11-30 13:29:07', '2017-11-30 13:29:07', 1, 4, 1, 4, NULL, 43, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:43:0026]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, -5420.80, NULL, '2a02:a453:c90b:1:95bd:af8e:71fe:fe80'),
(278, '2017-12-01 09:06:32', '2017-12-01 09:06:32', 1, 4, 1, 4, NULL, 43, NULL, 48, 'Lorna O\'Connor  heeft  [invoice:43:0026]  bekeken', NULL, 7, NULL, -5420.80, NULL, '31.161.137.32'),
(279, '2017-12-07 10:46:04', '2017-12-07 10:46:04', 1, 4, 1, 4, NULL, 43, NULL, 48, 'Lorna O\'Connor  heeft  [invoice:43:0026]  bekeken', NULL, 7, NULL, -5420.80, NULL, '185.127.109.23'),
(280, '2017-12-07 10:46:30', '2017-12-07 10:46:30', 1, 4, 1, 4, NULL, 43, NULL, 48, 'Lorna O\'Connor  heeft  [invoice:43:0026]  bekeken', NULL, 7, NULL, -5420.80, NULL, '185.127.109.23'),
(281, '2017-12-29 07:58:35', '2017-12-29 07:58:35', 1, 4, 1, NULL, 39, 43, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:43:0026]  ingegeven', NULL, 10, -11616.00, -17036.80, NULL, '2a02:a453:c90b:1:94cf:39bb:75fd:f990'),
(282, '2017-12-29 07:59:11', '2017-12-29 07:59:11', 1, 4, 1, NULL, NULL, 44, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:44:0027]  gemaakt', NULL, 4, 6195.20, -10841.60, NULL, '2a02:a453:c90b:1:94cf:39bb:75fd:f990'),
(283, '2017-12-29 08:01:00', '2017-12-29 08:01:00', 1, 4, 1, 4, NULL, 44, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:44:0027]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, -10841.60, NULL, '2a02:a453:c90b:1:94cf:39bb:75fd:f990'),
(284, '2017-12-29 09:13:00', '2017-12-29 09:13:00', 1, 4, 1, 4, NULL, 44, NULL, 49, 'Lorna O\'Connor  heeft  [invoice:44:0027]  bekeken', NULL, 7, NULL, -10841.60, NULL, '185.127.109.23'),
(285, '2018-01-18 10:14:46', '2018-01-18 10:14:46', 1, 4, 1, NULL, NULL, 45, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:45:0028]  gemaakt', NULL, 4, 13164.80, 2323.20, NULL, '192.33.238.54'),
(286, '2018-01-26 07:33:56', '2018-01-26 07:33:56', 1, 4, 1, NULL, 40, 44, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:44:0027]  ingegeven', NULL, 10, -6195.20, -3872.00, NULL, '2a02:a453:c90b:1:d054:20fe:7964:fd9'),
(287, '2018-01-30 09:16:55', '2018-01-30 09:16:55', 1, 4, 1, NULL, NULL, 45, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:45:0028]  bijgewerkt', '{\"invoice_number\":\"0028\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2018-01-18\",\"due_date\":\"2017-12-29\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in januari 2017\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"13164.80\",\"balance\":\"13164.80\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPNS&I026\",\"notes\":\"GX development open team Q1 2018\",\"cost\":\"80.00\",\"qty\":\"136.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, -3872.00, NULL, '192.33.238.55'),
(288, '2018-01-31 08:13:25', '2018-01-31 08:13:25', 1, 4, 1, 4, NULL, 45, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:45:0028]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, -3872.00, NULL, '192.33.238.55'),
(289, '2018-02-14 07:21:25', '2018-02-14 07:21:25', 1, 4, 1, 4, NULL, 45, NULL, 50, 'Lorna O\'Connor  heeft  [invoice:45:0028]  bekeken', NULL, 7, NULL, -3872.00, NULL, '185.127.109.23'),
(290, '2018-02-14 07:29:15', '2018-02-14 07:29:15', 1, 4, 1, 4, NULL, 45, NULL, 50, 'Lorna O\'Connor  heeft  [invoice:45:0028]  bekeken', NULL, 7, NULL, -3872.00, NULL, '185.127.109.23'),
(291, '2018-02-28 06:49:21', '2018-02-28 06:49:21', 1, 4, 1, NULL, NULL, 46, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:46:0029]  gemaakt', NULL, 4, 9292.80, 5420.80, NULL, '192.33.238.51');
INSERT INTO `activities` (`id`, `created_at`, `updated_at`, `account_id`, `client_id`, `user_id`, `contact_id`, `payment_id`, `invoice_id`, `credit_id`, `invitation_id`, `message`, `json_backup`, `activity_type_id`, `adjustment`, `balance`, `token_id`, `ip`) VALUES
(292, '2018-02-28 06:51:40', '2018-02-28 06:51:40', 1, 4, 1, NULL, NULL, 46, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:46:0029]  bijgewerkt', '{\"invoice_number\":\"0029\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2018-01-01\",\"due_date\":\"2018-02-28\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in februari 2018\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"9292.80\",\"balance\":\"9292.80\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPNS&I026\",\"notes\":\"GX development open team Q1 2018\",\"cost\":\"80.00\",\"qty\":\"96.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 5420.80, NULL, '192.33.238.51'),
(293, '2018-02-28 06:51:56', '2018-02-28 06:51:56', 1, 4, 1, 4, NULL, 46, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:46:0029]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, 5420.80, NULL, '192.33.238.51'),
(294, '2018-02-28 06:52:17', '2018-02-28 06:52:17', 1, 4, 1, NULL, NULL, 45, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:45:0028]  bijgewerkt', '{\"invoice_number\":\"0028\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2018-01-31\",\"due_date\":\"2018-02-28\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in januari 2017\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"13164.80\",\"balance\":\"13164.80\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPNS&I026\",\"notes\":\"GX development open team Q1 2018\",\"cost\":\"80.00\",\"qty\":\"136.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 5420.80, NULL, '192.33.238.51'),
(295, '2018-03-05 06:48:41', '2018-03-05 06:48:41', 1, 4, 1, 4, NULL, 46, NULL, 51, 'Lorna O\'Connor  heeft  [invoice:46:0029]  bekeken', NULL, 7, NULL, 5420.80, NULL, '185.127.109.23'),
(296, '2018-03-22 11:35:21', '2018-03-22 11:35:21', 1, 4, 1, NULL, 41, 45, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:45:0028]  ingegeven', NULL, 10, -13164.80, -7744.00, NULL, '192.33.238.51'),
(297, '2018-03-29 05:21:28', '2018-03-29 05:21:28', 1, 4, 1, NULL, NULL, 47, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:47:0030]  gemaakt', NULL, 4, 9292.80, 1548.80, NULL, '2a02:a453:c90b:1:898:7925:7980:47c3'),
(298, '2018-03-29 05:26:07', '2018-03-29 05:26:07', 1, 4, 1, NULL, NULL, 47, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:47:0030]  bijgewerkt', '{\"invoice_number\":\"0030\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2018-03-29\",\"due_date\":\"2018-03-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Factuur voor de werkzaamheden in maart 2018\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"9292.80\",\"balance\":\"9292.80\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"KPNS&I026\",\"notes\":\"GX development open team Q1 2018\",\"cost\":\"80.00\",\"qty\":\"96.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Incentro Nederland B.V.\",\"address1\":\"Van Nelleweg\",\"address2\":\"1\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"3044 BC\",\"work_phone\":\"0102020544\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"Incentro Nederland B.V.\",\"contacts\":[{\"first_name\":\"Lorna\",\"last_name\":\"O\'Connor\",\"email\":\"inkoop@incentro.com\",\"phone\":\"0102020544\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"41\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 3097.60, 4646.40, NULL, '2a02:a453:c90b:1:898:7925:7980:47c3'),
(299, '2018-03-30 07:52:27', '2018-03-30 07:52:27', 1, 4, 1, NULL, 42, 46, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:46:0029]  ingegeven', NULL, 10, -9292.80, -4646.40, NULL, '2a02:a453:c90b:1:f0dd:ff56:5491:f232'),
(300, '2018-03-30 07:54:24', '2018-03-30 07:54:24', 1, 4, 1, 4, NULL, 47, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:47:0030]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, -4646.40, NULL, '2a02:a453:c90b:1:f0dd:ff56:5491:f232'),
(301, '2018-03-31 06:35:58', '2018-03-31 06:35:58', 1, 4, 1, 4, NULL, 47, NULL, 52, 'Lorna O\'Connor  heeft  [invoice:47:0030]  bekeken', NULL, 7, NULL, -4646.40, NULL, '77.172.253.227'),
(302, '2018-04-26 07:11:56', '2018-04-26 07:11:56', 1, 4, 1, NULL, NULL, 48, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:48:0031]  gemaakt', NULL, 4, 11616.00, 6969.60, NULL, '2a02:a453:c90b:1:f4a5:d09e:304b:a07a'),
(303, '2018-04-30 04:50:10', '2018-04-30 04:50:10', 1, 4, 1, 4, NULL, 48, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:48:0031]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, 6969.60, NULL, '2a02:a453:c90b:1:7097:d039:11c8:8a56'),
(304, '2018-05-02 04:41:24', '2018-05-02 04:41:24', 1, 4, 1, 4, NULL, 48, NULL, 53, 'Lorna O\'Connor  heeft  [invoice:48:0031]  bekeken', NULL, 7, NULL, 6969.60, NULL, '185.127.109.23'),
(305, '2018-05-30 05:29:09', '2018-05-30 05:29:09', 1, 4, 1, NULL, 43, 47, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:47:0030]  ingegeven', NULL, 10, -12390.40, -5420.80, NULL, '77.163.43.18'),
(306, '2018-05-30 05:33:21', '2018-05-30 05:33:21', 1, 4, 1, NULL, NULL, 49, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:49:0032]  gemaakt', NULL, 4, 4646.40, -774.40, NULL, '2a02:a453:c90b:1:a025:5a34:3a31:47c2'),
(307, '2018-05-30 05:33:38', '2018-05-30 05:33:38', 1, 4, 1, 4, NULL, 49, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:49:0032]  gemaild naar Lorna O\'Connor', NULL, 20, NULL, -774.40, NULL, '2a02:a453:c90b:1:a025:5a34:3a31:47c2'),
(308, '2018-05-31 07:26:01', '2018-05-31 07:26:01', 1, 4, 1, 4, NULL, 49, NULL, 54, 'Lorna O\'Connor  heeft  [invoice:49:0032]  bekeken', NULL, 7, NULL, -774.40, NULL, '185.127.109.23'),
(309, '2018-06-06 08:16:49', '2018-06-06 08:16:49', 1, 4, 1, NULL, 44, 48, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:48:0031]  ingegeven', NULL, 10, -11616.00, -12390.40, NULL, '2a02:a453:c90b:1:888c:f77:1785:8bd0'),
(310, '2018-06-06 08:23:55', '2018-06-06 08:23:55', 1, 6, 1, NULL, NULL, NULL, NULL, NULL, 'Vincent van der Kolk  heeft  [client:6:Fastflex]  aangegemaakt', NULL, 1, NULL, NULL, NULL, '2a02:a453:c90b:1:258a:f0c6:85f6:d1b5'),
(311, '2018-06-06 08:25:59', '2018-06-06 08:25:59', 1, 6, 1, NULL, NULL, 50, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:50:L04169.1]  gemaakt', NULL, 4, 0.00, 0.00, NULL, '2a02:a453:c90b:1:258a:f0c6:85f6:d1b5'),
(312, '2018-06-06 08:30:04', '2018-06-06 08:30:04', 1, 6, 1, NULL, NULL, 50, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:50:L04169.1]  bijgewerkt', '{\"invoice_number\":\"L04169.1\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2018-05-31\",\"due_date\":\"2018-06-14\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"0.00\",\"balance\":\"0.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[],\"client\":{\"currency_id\":null,\"name\":\"Fast Flex B.V.\",\"address1\":\"Hogehilweg\",\"address2\":\"24\",\"city\":\"Amsterdam\",\"state\":\"Noord-holland\",\"postal_code\":\"1101 CD\",\"work_phone\":\"\",\"payment_terms\":\"0\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"Fastflex\",\"contacts\":[{\"first_name\":\"Administratie\",\"last_name\":\"\",\"email\":\"administratie@fastflex.nl\",\"phone\":\"\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 2447.49, 2447.49, NULL, '2a02:a453:c90b:1:258a:f0c6:85f6:d1b5'),
(313, '2018-06-06 08:30:25', '2018-06-06 08:30:25', 1, 6, 1, NULL, NULL, 50, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:50:L04169.1]  bijgewerkt', '{\"invoice_number\":\"L04169.1\",\"discount\":\"2.00\",\"po_number\":\"\",\"invoice_date\":\"2018-05-31\",\"due_date\":\"2018-06-14\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"2447.49\",\"balance\":\"2447.49\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"O-2018-1323-FF\",\"notes\":\"Nationale Nederlanden CMS\",\"cost\":\"86.00\",\"qty\":\"24.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":null,\"name\":\"Fast Flex B.V.\",\"address1\":\"Hogehilweg\",\"address2\":\"24\",\"city\":\"Amsterdam\",\"state\":\"Noord-holland\",\"postal_code\":\"1101 CD\",\"work_phone\":\"\",\"payment_terms\":\"0\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"Fastflex\",\"contacts\":[{\"first_name\":\"Administratie\",\"last_name\":\"\",\"email\":\"administratie@fastflex.nl\",\"phone\":\"\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 2447.49, NULL, '2a02:a453:c90b:1:258a:f0c6:85f6:d1b5'),
(314, '2018-07-26 12:24:57', '2018-07-26 12:24:57', 1, 7, 1, NULL, NULL, NULL, NULL, NULL, 'Vincent van der Kolk  heeft  [client:7:BOEM! Marketing]  aangegemaakt', NULL, 1, NULL, NULL, NULL, '2a02:a453:c90b:1:ed6b:d8b3:6e37:9f98'),
(315, '2018-07-26 12:32:04', '2018-07-26 12:32:04', 1, 7, 1, NULL, NULL, 51, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:51:41692]  gemaakt', NULL, 4, 225.00, 225.00, NULL, '2a02:a453:c90b:1:ed6b:d8b3:6e37:9f98'),
(316, '2018-07-26 12:32:24', '2018-07-26 12:32:24', 1, 7, 1, NULL, NULL, 51, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:51:support-001]  bijgewerkt', '{\"invoice_number\":\"41692\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2018-07-26\",\"due_date\":null,\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"225.00\",\"balance\":\"225.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"support\",\"notes\":\"ondersteunings werkzaamheden portals\",\"cost\":\"75.00\",\"qty\":\"3.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":null,\"name\":\"BOEM! Marketing\",\"address1\":\"Rotterdam Airportplein\",\"address2\":\"22\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"\",\"work_phone\":\"+31 6 30 62 62 94\",\"payment_terms\":\"0\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"123456\",\"id_number\":\"boem\",\"contacts\":[{\"first_name\":\"Martijn\",\"last_name\":\"van den Bosch\",\"email\":\"martijn@boemmarketing.nl\",\"phone\":\"0630626294\"},{\"first_name\":\"Jeroen\",\"last_name\":\"Voorn\",\"email\":\"jeroen@boemmarketing.nl\",\"phone\":\"0630626294\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 225.00, NULL, '2a02:a453:c90b:1:ed6b:d8b3:6e37:9f98'),
(317, '2018-08-20 11:18:53', '2018-08-20 11:18:53', 1, 7, 1, NULL, NULL, 51, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:51:support-001]  bijgewerkt', '{\"invoice_number\":\"support-001\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2018-07-26\",\"due_date\":null,\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"225.00\",\"balance\":\"225.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"support-001\",\"notes\":\"ondersteunings werkzaamheden portals\",\"cost\":\"75.00\",\"qty\":\"3.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":null,\"name\":\"BOEM! Marketing\",\"address1\":\"Rotterdam Airportplein\",\"address2\":\"22\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"\",\"work_phone\":\"+31 6 30 62 62 94\",\"payment_terms\":\"0\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"123456\",\"id_number\":\"boem\",\"contacts\":[{\"first_name\":\"Martijn\",\"last_name\":\"van den Bosch\",\"email\":\"martijn@boemmarketing.nl\",\"phone\":\"0630626294\"},{\"first_name\":\"Jeroen\",\"last_name\":\"Voorn\",\"email\":\"jeroen@boemmarketing.nl\",\"phone\":\"0630626294\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 600.00, 825.00, NULL, '2a02:a453:c90b:1:2100:ca16:eea9:972a'),
(318, '2018-08-23 13:47:44', '2018-08-23 13:47:44', 1, 7, 1, NULL, NULL, 51, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:51:support-001]  bijgewerkt', '{\"invoice_number\":\"support-001\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2018-07-26\",\"due_date\":null,\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"825.00\",\"balance\":\"825.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"support-001\",\"notes\":\"ondersteunings werkzaamheden portals (code\\nreview)\",\"cost\":\"75.00\",\"qty\":\"3.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"support-001\",\"notes\":\"Aanpassing sorteer functionaliteit\",\"cost\":\"75.00\",\"qty\":\"8.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":null,\"name\":\"BOEM! Marketing\",\"address1\":\"Rotterdam Airportplein\",\"address2\":\"22\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"\",\"work_phone\":\"+31 6 30 62 62 94\",\"payment_terms\":\"0\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"123456\",\"id_number\":\"boem\",\"contacts\":[{\"first_name\":\"Martijn\",\"last_name\":\"van den Bosch\",\"email\":\"martijn@boemmarketing.nl\",\"phone\":\"0630626294\"},{\"first_name\":\"Jeroen\",\"last_name\":\"Voorn\",\"email\":\"jeroen@boemmarketing.nl\",\"phone\":\"0630626294\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 825.00, NULL, '2a02:a453:c90b:1:f160:9f2:7703:1c6b'),
(319, '2018-08-23 13:49:53', '2018-08-23 13:49:53', 1, 7, 1, 7, NULL, 51, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:51:support-001]  gemaild naar Martijn van den Bosch', NULL, 20, NULL, 825.00, NULL, '2a02:a453:c90b:1:f160:9f2:7703:1c6b'),
(320, '2018-08-23 14:47:56', '2018-08-23 14:47:56', 1, 7, 1, 7, NULL, 51, NULL, 56, 'Martijn van den Bosch  heeft  [invoice:51:support-001]  bekeken', NULL, 7, NULL, 825.00, NULL, '84.84.12.39'),
(321, '2018-08-24 05:44:23', '2018-08-24 05:44:23', 1, 7, 1, 7, NULL, 51, NULL, 56, 'Martijn van den Bosch  heeft  [invoice:51:support-001]  bekeken', NULL, 7, NULL, 825.00, NULL, '212.123.192.70'),
(322, '2018-08-25 09:49:03', '2018-08-25 09:49:03', 1, 4, 1, NULL, 45, 49, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:49:0032]  ingegeven', NULL, 10, -4646.40, -17036.80, NULL, '2a02:a453:c90b:1:b9ad:b93d:f701:9ab8'),
(323, '2018-08-25 09:50:00', '2018-08-25 09:50:00', 1, 6, 1, NULL, 46, 50, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:50:L04169.1]  ingegeven', NULL, 10, -2447.49, 0.00, NULL, '2a02:a453:c90b:1:b9ad:b93d:f701:9ab8'),
(324, '2018-08-25 09:54:53', '2018-08-25 09:54:53', 1, 6, 1, NULL, NULL, 52, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:52:L04169.2]  gemaakt', NULL, 4, 13053.29, 13053.29, NULL, '2a02:a453:c90b:1:b9ad:b93d:f701:9ab8'),
(325, '2018-08-25 09:56:15', '2018-08-25 09:56:15', 1, 6, 1, NULL, NULL, 53, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:53:L04169.3]  gemaakt', NULL, 4, 8158.30, 21211.59, NULL, '2a02:a453:c90b:1:b9ad:b93d:f701:9ab8'),
(326, '2018-08-25 09:56:45', '2018-08-25 09:56:45', 1, 6, 1, NULL, 47, 52, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:52:L04169.2]  ingegeven', NULL, 10, -13053.29, 8158.30, NULL, '2a02:a453:c90b:1:b9ad:b93d:f701:9ab8'),
(327, '2018-08-25 09:57:00', '2018-08-25 09:57:00', 1, 6, 1, NULL, 48, 53, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:53:L04169.3]  ingegeven', NULL, 10, -8158.30, 0.00, NULL, '2a02:a453:c90b:1:b9ad:b93d:f701:9ab8'),
(328, '2018-08-31 06:14:20', '2018-08-31 06:14:20', 1, 4, 1, NULL, NULL, 31, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:31:0016]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '2a02:a453:c90b:1:fc66:cac3:174b:15d1'),
(329, '2018-08-31 06:14:20', '2018-08-31 06:14:20', 1, 4, 1, NULL, NULL, 32, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:32:0017]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '2a02:a453:c90b:1:fc66:cac3:174b:15d1'),
(330, '2018-08-31 06:14:20', '2018-08-31 06:14:20', 1, 4, 1, NULL, NULL, 33, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:33:0018]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '2a02:a453:c90b:1:fc66:cac3:174b:15d1'),
(331, '2018-08-31 06:14:20', '2018-08-31 06:14:20', 1, 4, 1, NULL, NULL, 34, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:34:0019]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '2a02:a453:c90b:1:fc66:cac3:174b:15d1'),
(332, '2018-08-31 06:14:20', '2018-08-31 06:14:20', 1, 4, 1, NULL, NULL, 35, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:35:0020]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '2a02:a453:c90b:1:fc66:cac3:174b:15d1'),
(333, '2018-08-31 06:14:20', '2018-08-31 06:14:20', 1, 4, 1, NULL, NULL, 36, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:36:0021]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '2a02:a453:c90b:1:fc66:cac3:174b:15d1'),
(334, '2018-08-31 06:14:20', '2018-08-31 06:14:20', 1, 4, 1, NULL, NULL, 37, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:37:0022]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '2a02:a453:c90b:1:fc66:cac3:174b:15d1'),
(335, '2018-08-31 06:14:20', '2018-08-31 06:14:20', 1, 4, 1, NULL, NULL, 38, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:38:0023]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '2a02:a453:c90b:1:fc66:cac3:174b:15d1'),
(336, '2018-08-31 06:14:20', '2018-08-31 06:14:20', 1, 4, 1, NULL, NULL, 39, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:39:0024]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '2a02:a453:c90b:1:fc66:cac3:174b:15d1'),
(337, '2018-08-31 06:14:20', '2018-08-31 06:14:20', 1, 4, 1, NULL, NULL, 42, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:42:0025]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '2a02:a453:c90b:1:fc66:cac3:174b:15d1'),
(338, '2018-08-31 06:14:26', '2018-08-31 06:14:26', 1, 4, 1, NULL, NULL, 43, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:43:0026]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '2a02:a453:c90b:1:fc66:cac3:174b:15d1'),
(339, '2018-08-31 06:14:26', '2018-08-31 06:14:26', 1, 4, 1, NULL, NULL, 44, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:44:0027]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '2a02:a453:c90b:1:fc66:cac3:174b:15d1'),
(340, '2018-08-31 06:14:44', '2018-08-31 06:14:44', 1, 7, 1, NULL, 49, 51, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:51:support-001]  ingegeven', NULL, 10, -825.00, 0.00, NULL, '2a02:a453:c90b:1:fc66:cac3:174b:15d1'),
(341, '2018-08-31 06:16:40', '2018-08-31 06:16:40', 1, 6, 1, NULL, NULL, 54, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:54:L04169.4]  gemaakt', NULL, 4, 12237.46, 12237.46, NULL, '2a02:a453:c90b:1:fc66:cac3:174b:15d1'),
(342, '2018-08-31 06:16:51', '2018-08-31 06:16:51', 1, 6, 1, NULL, 50, 54, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:54:L04169.4]  ingegeven', NULL, 10, -12237.46, 0.00, NULL, '2a02:a453:c90b:1:fc66:cac3:174b:15d1'),
(343, '2018-08-31 06:38:19', '2018-08-31 06:38:19', 1, 6, 1, NULL, NULL, 54, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:54:L04169.4]  bijgewerkt', '{\"invoice_number\":\"L04169.4\",\"discount\":\"2.00\",\"po_number\":\"\",\"invoice_date\":\"2018-07-31\",\"due_date\":\"2018-08-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Werkzaamheden augustus 2018\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"12237.46\",\"balance\":\"0.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"O-2018-1323-FF\",\"notes\":\"Nationale Nederlanden CMS\",\"cost\":\"86.00\",\"qty\":\"120.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":null,\"name\":\"Fast Flex B.V.\",\"address1\":\"Hogehilweg\",\"address2\":\"24\",\"city\":\"Amsterdam\",\"state\":\"Noord-holland\",\"postal_code\":\"1101 CD\",\"work_phone\":\"\",\"payment_terms\":\"0\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"Fastflex\",\"contacts\":[{\"first_name\":\"Administratie\",\"last_name\":\"\",\"email\":\"administratie@fastflex.nl\",\"phone\":\"\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 0.00, NULL, '2a02:a453:c90b:1:fc66:cac3:174b:15d1'),
(344, '2018-08-31 06:39:02', '2018-08-31 06:39:02', 1, 7, 1, NULL, NULL, 51, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:51:support-001]  bijgewerkt', '{\"invoice_number\":\"support-001\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2018-07-26\",\"due_date\":\"2018-09-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"825.00\",\"balance\":\"0.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"support-001-1\",\"notes\":\"werkzaamheden portals (code\\nreview)\",\"cost\":\"75.00\",\"qty\":\"3.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"support-001-2\",\"notes\":\"werkzaamheden portals (sortering\\nproducten op prijs)\",\"cost\":\"75.00\",\"qty\":\"8.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":null,\"name\":\"BOEM! Marketing\",\"address1\":\"Rotterdam Airportplein\",\"address2\":\"22\",\"city\":\"Rotterdam\",\"state\":\"Zuid-holland\",\"postal_code\":\"\",\"work_phone\":\"+31 6 30 62 62 94\",\"payment_terms\":\"0\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"123456\",\"id_number\":\"boem\",\"contacts\":[{\"first_name\":\"Martijn\",\"last_name\":\"van den Bosch\",\"email\":\"martijn@boemmarketing.nl\",\"phone\":\"0630626294\"},{\"first_name\":\"Jeroen\",\"last_name\":\"Voorn\",\"email\":\"jeroen@boemmarketing.nl\",\"phone\":\"0630626294\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 0.00, NULL, '2a02:a453:c90b:1:fc66:cac3:174b:15d1'),
(345, '2018-10-12 12:27:50', '2018-10-12 12:27:50', 1, 7, 1, 7, NULL, 51, NULL, 56, 'Martijn van den Bosch  heeft  [invoice:51:support-001]  bekeken', NULL, 7, NULL, 0.00, NULL, '212.123.192.70'),
(346, '2018-10-23 04:48:04', '2018-10-23 04:48:04', 1, 6, 1, NULL, NULL, 55, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:55:41695]  gemaakt', NULL, 4, 0.00, 0.00, NULL, '2a02:a453:c90b:1:bcc1:c58e:9769:cb85'),
(347, '2018-10-23 04:48:20', '2018-10-23 04:48:20', 1, 6, 1, NULL, NULL, 55, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:55:L04169.5]  bijgewerkt', '{\"invoice_number\":\"41695\",\"discount\":\"2.00\",\"po_number\":\"\",\"invoice_date\":\"2018-08-31\",\"due_date\":\"2018-09-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Werkzaamheden september 2018\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"0.00\",\"balance\":\"0.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"O-2018-1323-FF\",\"notes\":\"Vincent van der Kolk - Functie: ZP opdracht\",\"cost\":\"0.00\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":null,\"name\":\"Fast Flex B.V.\",\"address1\":\"Hogehilweg\",\"address2\":\"24\",\"city\":\"Amsterdam\",\"state\":\"Noord-holland\",\"postal_code\":\"1101 CD\",\"work_phone\":\"\",\"payment_terms\":\"0\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"Fastflex\",\"contacts\":[{\"first_name\":\"Administratie\",\"last_name\":\"\",\"email\":\"administratie@fastflex.nl\",\"phone\":\"\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 0.00, NULL, '2a02:a453:c90b:1:bcc1:c58e:9769:cb85'),
(348, '2018-10-23 04:49:42', '2018-10-23 04:49:42', 1, 6, 1, NULL, NULL, 54, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:54:L04169.4]  bijgewerkt', '{\"invoice_number\":\"L04169.4\",\"discount\":\"2.00\",\"po_number\":\"\",\"invoice_date\":\"2018-08-30\",\"due_date\":\"2018-09-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Werkzaamheden augustus 2018\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"12237.46\",\"balance\":\"0.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"O-2018-1323-FF\",\"notes\":\"Nationale Nederlanden CMS\",\"cost\":\"86.00\",\"qty\":\"120.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":null,\"name\":\"Fast Flex B.V.\",\"address1\":\"Hogehilweg\",\"address2\":\"24\",\"city\":\"Amsterdam\",\"state\":\"Noord-holland\",\"postal_code\":\"1101 CD\",\"work_phone\":\"\",\"payment_terms\":\"0\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"Fastflex\",\"contacts\":[{\"first_name\":\"Administratie\",\"last_name\":\"\",\"email\":\"administratie@fastflex.nl\",\"phone\":\"\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 0.00, NULL, '2a02:a453:c90b:1:bcc1:c58e:9769:cb85'),
(349, '2018-10-23 04:50:11', '2018-10-23 04:50:11', 1, 6, 1, NULL, NULL, 55, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:55:L04169.5]  bijgewerkt', '{\"invoice_number\":\"L04169.5\",\"discount\":\"2.00\",\"po_number\":\"\",\"invoice_date\":\"2018-08-31\",\"due_date\":\"2018-09-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Werkzaamheden september 2018\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"0.00\",\"balance\":\"0.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"O-2018-1323-FF\",\"notes\":\"Vincent van der Kolk - Functie: ZP opdracht\",\"cost\":\"0.00\",\"qty\":\"128.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":null,\"name\":\"Fast Flex B.V.\",\"address1\":\"Hogehilweg\",\"address2\":\"24\",\"city\":\"Amsterdam\",\"state\":\"Noord-holland\",\"postal_code\":\"1101 CD\",\"work_phone\":\"\",\"payment_terms\":\"0\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"Fastflex\",\"contacts\":[{\"first_name\":\"Administratie\",\"last_name\":\"\",\"email\":\"administratie@fastflex.nl\",\"phone\":\"\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 13053.29, 13053.29, NULL, '2a02:a453:c90b:1:bcc1:c58e:9769:cb85'),
(350, '2018-10-23 04:51:34', '2018-10-23 04:51:34', 1, 6, 1, NULL, 51, 55, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:55:L04169.5]  ingegeven', NULL, 10, -13053.29, 0.00, NULL, '2a02:a453:c90b:1:bcc1:c58e:9769:cb85'),
(351, '2018-10-23 10:15:50', '2018-10-23 10:15:50', 1, 8, 1, NULL, NULL, NULL, NULL, NULL, 'Vincent van der Kolk  heeft  [client:8:FireSafe B.V.]  aangegemaakt', NULL, 1, NULL, NULL, NULL, '2a02:a453:c90b:1:7807:8f57:bb14:d496'),
(352, '2018-10-23 10:16:18', '2018-10-23 10:16:18', 1, 9, 1, NULL, NULL, NULL, NULL, NULL, 'Vincent van der Kolk  heeft  [client:9:FireSafe B.V.]  aangegemaakt', NULL, 1, NULL, NULL, NULL, '2a02:a453:c90b:1:7807:8f57:bb14:d496'),
(353, '2018-10-23 10:16:21', '2018-10-23 10:16:21', 1, 10, 1, NULL, NULL, NULL, NULL, NULL, 'Vincent van der Kolk  heeft  [client:10:FireSafe B.V.]  aangegemaakt', NULL, 1, NULL, NULL, NULL, '2a02:a453:c90b:1:7807:8f57:bb14:d496'),
(354, '2018-10-23 10:17:14', '2018-10-23 10:17:14', 1, 11, 1, NULL, NULL, NULL, NULL, NULL, 'Vincent van der Kolk  heeft  [client:11:FireSafe B.V.]  aangegemaakt', NULL, 1, NULL, NULL, NULL, '2a02:a453:c90b:1:7807:8f57:bb14:d496'),
(355, '2018-10-23 10:17:19', '2018-10-23 10:17:19', 1, 12, 1, NULL, NULL, NULL, NULL, NULL, 'Vincent van der Kolk  heeft  [client:12:FireSafe B.V.]  aangegemaakt', NULL, 1, NULL, NULL, NULL, '2a02:a453:c90b:1:7807:8f57:bb14:d496'),
(356, '2018-10-23 10:17:19', '2018-10-23 10:17:19', 1, 13, 1, NULL, NULL, NULL, NULL, NULL, 'Vincent van der Kolk  heeft  [client:13:FireSafe B.V.]  aangegemaakt', NULL, 1, NULL, NULL, NULL, '2a02:a453:c90b:1:7807:8f57:bb14:d496'),
(357, '2018-10-23 10:17:23', '2018-10-23 10:17:23', 1, 14, 1, NULL, NULL, NULL, NULL, NULL, 'Vincent van der Kolk  heeft  [client:14:FireSafe B.V.]  aangegemaakt', NULL, 1, NULL, NULL, NULL, '2a02:a453:c90b:1:7807:8f57:bb14:d496'),
(358, '2018-10-23 10:45:32', '2018-10-23 10:45:32', 1, 14, 1, NULL, NULL, 56, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:56:41696]  gemaakt', NULL, 4, 0.00, 0.00, NULL, '2a02:a453:c90b:1:7807:8f57:bb14:d496'),
(359, '2018-10-23 10:46:26', '2018-10-23 10:46:26', 1, 8, 1, NULL, NULL, NULL, NULL, NULL, 'Vincent van der Kolk  heeft  [client:8:FireSafe B.V.]  verwijderd', NULL, 3, NULL, NULL, NULL, '2a02:a453:c90b:1:7807:8f57:bb14:d496'),
(360, '2018-10-23 10:46:26', '2018-10-23 10:46:26', 1, 9, 1, NULL, NULL, NULL, NULL, NULL, 'Vincent van der Kolk  heeft  [client:9:FireSafe B.V.]  verwijderd', NULL, 3, NULL, NULL, NULL, '2a02:a453:c90b:1:7807:8f57:bb14:d496'),
(361, '2018-10-23 10:46:26', '2018-10-23 10:46:26', 1, 10, 1, NULL, NULL, NULL, NULL, NULL, 'Vincent van der Kolk  heeft  [client:10:FireSafe B.V.]  verwijderd', NULL, 3, NULL, NULL, NULL, '2a02:a453:c90b:1:7807:8f57:bb14:d496'),
(362, '2018-10-23 10:46:26', '2018-10-23 10:46:26', 1, 11, 1, NULL, NULL, NULL, NULL, NULL, 'Vincent van der Kolk  heeft  [client:11:FireSafe B.V.]  verwijderd', NULL, 3, NULL, NULL, NULL, '2a02:a453:c90b:1:7807:8f57:bb14:d496'),
(363, '2018-10-23 10:46:26', '2018-10-23 10:46:26', 1, 12, 1, NULL, NULL, NULL, NULL, NULL, 'Vincent van der Kolk  heeft  [client:12:FireSafe B.V.]  verwijderd', NULL, 3, NULL, NULL, NULL, '2a02:a453:c90b:1:7807:8f57:bb14:d496'),
(364, '2018-10-23 10:46:26', '2018-10-23 10:46:26', 1, 13, 1, NULL, NULL, NULL, NULL, NULL, 'Vincent van der Kolk  heeft  [client:13:FireSafe B.V.]  verwijderd', NULL, 3, NULL, NULL, NULL, '2a02:a453:c90b:1:7807:8f57:bb14:d496'),
(365, '2018-10-23 10:47:11', '2018-10-23 10:47:11', 1, 14, 1, NULL, NULL, 56, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:56:0033]  bijgewerkt', '{\"invoice_number\":\"41696\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2018-10-23\",\"due_date\":\"2018-11-22\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"0.00\",\"balance\":\"0.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"\",\"notes\":\"Hosting\",\"cost\":\"0.00\",\"qty\":\"0.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"\",\"notes\":\"Ontwerp applicatie\",\"cost\":\"0.00\",\"qty\":\"0.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"FireSafe B.V.\",\"address1\":\"Kerkenbos\",\"address2\":\"10\",\"city\":\"Nijmegen\",\"state\":\"Gelderland\",\"postal_code\":\"6503 CK\",\"work_phone\":\"+31 24 371 2720\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"123456\",\"id_number\":\"FireSafe\",\"contacts\":[{\"first_name\":\"Peter\",\"last_name\":\"Vlemmix\",\"email\":\"p.vlemmix@firesafe.nl\",\"phone\":\"06 1653 5790\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 0.00, NULL, '2a02:a453:c90b:1:7807:8f57:bb14:d496'),
(366, '2018-10-23 11:07:49', '2018-10-23 11:07:49', 1, 14, 1, NULL, NULL, 56, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:56:0033]  bijgewerkt', '{\"invoice_number\":\"0033\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2018-10-23\",\"due_date\":\"2018-11-22\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"0.00\",\"balance\":\"0.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"Hosting\",\"notes\":\"Hostingpakket neostrada\\nPremium Professional \\\"fireprotector.nl\\\" (3 jaar)\",\"cost\":\"0.00\",\"qty\":\"0.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"\",\"notes\":\"www.fireprotector.nl (3 jaar)\",\"cost\":\"0.00\",\"qty\":\"0.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"\",\"notes\":\"www.fireprotector.eu (1 jaar)\",\"cost\":\"0.00\",\"qty\":\"0.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"\",\"notes\":\"www.fireprotector.be (1 jaar)\",\"cost\":\"0.00\",\"qty\":\"0.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"Ontwerp\",\"notes\":\"Ontwerp webapplicatie\",\"cost\":\"0.00\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"\",\"notes\":\"Ontwerp mobiele versie webapplicatie\",\"cost\":\"0.00\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"Database\",\"notes\":\"Aanleggen relationeel database model\",\"cost\":\"0.00\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"Offertetool\",\"notes\":\"\",\"cost\":\"0.00\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"\",\"notes\":\"Gebruikersbeheer: Inloggen - beheren gebruikers\",\"cost\":\"0.00\",\"qty\":\"0.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"\",\"notes\":\"Documenten: Toevoegen - bewerken - verwijderen\",\"cost\":\"0.00\",\"qty\":\"0.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"FireSafe B.V.\",\"address1\":\"Kerkenbos\",\"address2\":\"10\",\"city\":\"Nijmegen\",\"state\":\"Gelderland\",\"postal_code\":\"6503 CK\",\"work_phone\":\"+31 24 371 2720\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"123456\",\"id_number\":\"FireSafe\",\"contacts\":[{\"first_name\":\"Peter\",\"last_name\":\"Vlemmix\",\"email\":\"p.vlemmix@firesafe.nl\",\"phone\":\"06 1653 5790\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 308.20, 308.20, NULL, '2a02:a453:c90b:1:7807:8f57:bb14:d496');
INSERT INTO `activities` (`id`, `created_at`, `updated_at`, `account_id`, `client_id`, `user_id`, `contact_id`, `payment_id`, `invoice_id`, `credit_id`, `invitation_id`, `message`, `json_backup`, `activity_type_id`, `adjustment`, `balance`, `token_id`, `ip`) VALUES
(367, '2018-10-23 11:32:51', '2018-10-23 11:32:51', 1, 14, 1, NULL, NULL, 56, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:56:0033]  bijgewerkt', '{\"invoice_number\":\"0033\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2018-10-23\",\"due_date\":\"2018-11-22\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"308.20\",\"balance\":\"308.20\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"Hosting\",\"notes\":\"Hostingpakket neostrada\\nPremium Professional \\\"fireprotector.nl\\\" (3 jaar)\",\"cost\":\"76.32\",\"qty\":\"3.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"\",\"notes\":\"www.fireprotector.nl (3 jaar)\",\"cost\":\"5.95\",\"qty\":\"3.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"\",\"notes\":\"www.fireprotector.eu (1 jaar)\",\"cost\":\"4.95\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"\",\"notes\":\"www.fireprotector.be (1 jaar)\",\"cost\":\"2.95\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"Ontwerp\",\"notes\":\"Ontwerp webapplicatie\",\"cost\":\"0.00\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"\",\"notes\":\"Ontwerp mobiele versie webapplicatie\",\"cost\":\"0.00\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"Database\",\"notes\":\"Aanleggen relationeel database model\",\"cost\":\"0.00\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"Offertetool\",\"notes\":\"\",\"cost\":\"0.00\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"\",\"notes\":\"Gebruikersbeheer: Inloggen - beheren gebruikers\",\"cost\":\"0.00\",\"qty\":\"0.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"\",\"notes\":\"Documenten: Toevoegen - bewerken - verwijderen\",\"cost\":\"0.00\",\"qty\":\"0.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"FireSafe B.V.\",\"address1\":\"Kerkenbos\",\"address2\":\"10\",\"city\":\"Nijmegen\",\"state\":\"Gelderland\",\"postal_code\":\"6503 CK\",\"work_phone\":\"+31 24 371 2720\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"123456\",\"id_number\":\"FireSafe\",\"contacts\":[{\"first_name\":\"Peter\",\"last_name\":\"Vlemmix\",\"email\":\"p.vlemmix@firesafe.nl\",\"phone\":\"06 1653 5790\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 46464.00, 46772.20, NULL, '2a02:a453:c90b:1:7807:8f57:bb14:d496'),
(368, '2018-10-23 11:34:50', '2018-10-23 11:34:50', 1, 14, 1, NULL, NULL, 56, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:56:0033]  bijgewerkt', '{\"invoice_number\":\"0033\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2018-10-23\",\"due_date\":\"2018-11-22\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Werkzaamheden in uren verricht voor het ontwerp en realisatie van\\nde webapplicatie www.fireprotector.nl inclusief de domeinregistratie\\nen webhosting.\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"46772.20\",\"balance\":\"46772.20\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"Hosting\",\"notes\":\"Hostingpakket neostrada\\nPremium Professional \\\"fireprotector.nl\\\" (3 jaar)\",\"cost\":\"76.32\",\"qty\":\"3.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"\",\"notes\":\"www.fireprotector.nl (3 jaar)\",\"cost\":\"5.95\",\"qty\":\"3.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"\",\"notes\":\"www.fireprotector.eu (1 jaar)\",\"cost\":\"4.95\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"\",\"notes\":\"www.fireprotector.be (1 jaar)\",\"cost\":\"2.95\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"Ontwerp\",\"notes\":\"Ontwerp webapplicatie\",\"cost\":\"80.00\",\"qty\":\"40.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"\",\"notes\":\"Ontwerp mobiele versie webapplicatie\",\"cost\":\"80.00\",\"qty\":\"40.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"Database\",\"notes\":\"Aanleggen relationeel database model\",\"cost\":\"80.00\",\"qty\":\"40.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"Ontwikkeling\",\"notes\":\"Offertebeheer: aanmaken - bewerken - verwijderen\",\"cost\":\"80.00\",\"qty\":\"60.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"\",\"notes\":\"Gebruikersbeheer: Inloggen - accountgegevens\\nbeheren - aanmaken - bewerken - verwijderen\",\"cost\":\"80.00\",\"qty\":\"60.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"\",\"notes\":\"Gebruikersbeheer: gebruiker gegevens\\nbeheren - aanmaken - bewerken - verwijderen\",\"cost\":\"80.00\",\"qty\":\"60.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"\",\"notes\":\"Gebruikersbeheer: partner gegevens\\nbeheren - aanmaken - bewerken - verwijderen\",\"cost\":\"80.00\",\"qty\":\"60.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"\",\"notes\":\"Documentbeheer: aanmaken - bewerken -\\nverwijderen\",\"cost\":\"80.00\",\"qty\":\"60.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"},{\"product_key\":\"\",\"notes\":\"Klantbeheer: aanmaken - bewerken - verwijderen\",\"cost\":\"80.00\",\"qty\":\"60.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"FireSafe B.V.\",\"address1\":\"Kerkenbos\",\"address2\":\"10\",\"city\":\"Nijmegen\",\"state\":\"Gelderland\",\"postal_code\":\"6503 CK\",\"work_phone\":\"+31 24 371 2720\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"123456\",\"id_number\":\"FireSafe\",\"contacts\":[{\"first_name\":\"Peter\",\"last_name\":\"Vlemmix\",\"email\":\"p.vlemmix@firesafe.nl\",\"phone\":\"06 1653 5790\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 46772.20, NULL, '2a02:a453:c90b:1:7807:8f57:bb14:d496'),
(369, '2018-10-30 07:42:43', '2018-10-30 07:42:43', 1, 6, 1, NULL, NULL, 57, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:57:L04169.6]  gemaakt', NULL, 4, 13053.29, 13053.29, NULL, '185.46.212.107'),
(370, '2018-10-30 09:08:09', '2018-10-30 09:08:09', 1, 6, 1, NULL, NULL, 57, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:57:L04169.6]  bijgewerkt', '{\"invoice_number\":\"L04169.6\",\"discount\":\"2.00\",\"po_number\":\"\",\"invoice_date\":\"2018-10-30\",\"due_date\":\"2018-09-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Werkzaamheden oktober 2018\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"13053.29\",\"balance\":\"13053.29\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"O-2018-1323-FF\",\"notes\":\"Nationale Nederlanden CMS\",\"cost\":\"86.00\",\"qty\":\"128.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":null,\"name\":\"Fast Flex B.V.\",\"address1\":\"Hogehilweg\",\"address2\":\"24\",\"city\":\"Amsterdam\",\"state\":\"Noord-holland\",\"postal_code\":\"1101 CD\",\"work_phone\":\"\",\"payment_terms\":\"0\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"Fastflex\",\"contacts\":[{\"first_name\":\"Administratie\",\"last_name\":\"\",\"email\":\"administratie@fastflex.nl\",\"phone\":\"\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 1631.66, 14684.95, NULL, '185.46.212.107'),
(371, '2019-01-22 12:38:03', '2019-01-22 12:38:03', 1, 6, 1, NULL, NULL, 57, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:57:L04169.6]  bijgewerkt', '{\"invoice_number\":\"L04169.6\",\"discount\":\"2.00\",\"po_number\":\"\",\"invoice_date\":\"2018-10-30\",\"due_date\":\"2018-09-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Werkzaamheden oktober 2018\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"14684.95\",\"balance\":\"14684.95\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"O-2018-1323-FF\",\"notes\":\"Nationale Nederlanden CMS\",\"cost\":\"86.00\",\"qty\":\"144.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":null,\"name\":\"Fast Flex B.V.\",\"address1\":\"Hogehilweg\",\"address2\":\"24\",\"city\":\"Amsterdam\",\"state\":\"Noord-holland\",\"postal_code\":\"1101 CD\",\"work_phone\":\"\",\"payment_terms\":\"0\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"Fastflex\",\"contacts\":[{\"first_name\":\"Administratie\",\"last_name\":\"\",\"email\":\"administratie@fastflex.nl\",\"phone\":\"\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, -2447.49, 12237.46, NULL, '2a02:a453:c90b:1:d103:e40c:c274:e663'),
(372, '2019-05-04 05:53:54', '2019-05-04 05:53:54', 1, 14, 1, NULL, NULL, 58, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:58:fireprotector-001]  gemaakt', NULL, 4, 20000.00, 66772.20, NULL, '2a02:a453:c90b:1:3988:c99c:5050:2fbc'),
(373, '2019-05-04 06:00:52', '2019-05-04 06:00:52', 1, 14, 1, NULL, NULL, 58, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:58:fireprotector-001]  bijgewerkt', '{\"invoice_number\":\"fireprotector-001\",\"discount\":0,\"po_number\":\"\",\"invoice_date\":\"2019-04-30\",\"due_date\":\"2019-05-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"20000.00\",\"balance\":\"20000.00\",\"invoice_design_id\":11,\"is_quote\":0,\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":0,\"custom_taxes2\":0,\"is_amount_discount\":0,\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"fireprotector-001\",\"notes\":\"Opzet brandblusportal fireprotector.nl\",\"cost\":\"80.00\",\"qty\":\"250.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":3,\"name\":\"FireSafe B.V.\",\"address1\":\"Kerkenbos\",\"address2\":\"10\",\"city\":\"Nijmegen\",\"state\":\"Gelderland\",\"postal_code\":\"6503 CK\",\"work_phone\":\"+31 24 371 2720\",\"payment_terms\":30,\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"123456\",\"id_number\":\"FireSafe\",\"contacts\":[{\"first_name\":\"Peter\",\"last_name\":\"Vlemmix\",\"email\":\"p.vlemmix@firesafe.nl\",\"phone\":\"06 1653 5790\"}]},\"account\":{\"currency_id\":3,\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":0,\"hide_paid_to_date\":1,\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":1}}', 5, 0.00, 66772.20, NULL, '2a02:a453:c90b:1:3988:c99c:5050:2fbc'),
(374, '2019-05-04 06:03:17', '2019-05-04 06:03:17', 1, 14, 1, NULL, NULL, 59, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:59:fireprotector-002]  gemaakt', NULL, 4, 12160.00, 78932.20, NULL, '2a02:a453:c90b:1:3988:c99c:5050:2fbc'),
(375, '2019-05-04 06:03:50', '2019-05-04 06:03:50', 1, 14, 1, NULL, NULL, 59, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:59:fireprotector-002]  bijgewerkt', '{\"invoice_number\":\"fireprotector-002\",\"discount\":0,\"po_number\":\"\",\"invoice_date\":\"2019-04-30\",\"due_date\":\"2019-06-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (60\\ndagen) tegemoet, onder vermelding van het factuurnummer op\\nrekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Overeenkomstig uw opdracht van de heer P. Vlemmix op 20 april \\n2018 belasten wij u voor de tweede termijn van de opdracht.\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"12160.00\",\"balance\":\"12160.00\",\"invoice_design_id\":11,\"is_quote\":0,\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":0,\"custom_taxes2\":0,\"is_amount_discount\":0,\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"fireprotector-002\",\"notes\":\"Ontwikkeling brandblusportal fireprotector.nl\",\"cost\":\"80.00\",\"qty\":\"152.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":3,\"name\":\"FireSafe B.V.\",\"address1\":\"Kerkenbos\",\"address2\":\"10\",\"city\":\"Nijmegen\",\"state\":\"Gelderland\",\"postal_code\":\"6503 CK\",\"work_phone\":\"+31 24 371 2720\",\"payment_terms\":30,\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"123456\",\"id_number\":\"FireSafe\",\"contacts\":[{\"first_name\":\"Peter\",\"last_name\":\"Vlemmix\",\"email\":\"p.vlemmix@firesafe.nl\",\"phone\":\"06 1653 5790\"}]},\"account\":{\"currency_id\":3,\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":0,\"hide_paid_to_date\":1,\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":1}}', 5, 2553.60, 81485.80, NULL, '2a02:a453:c90b:1:3988:c99c:5050:2fbc'),
(376, '2019-05-04 06:06:04', '2019-05-04 06:06:04', 1, 14, 1, NULL, NULL, 60, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:60:fireprotector-003]  gemaakt', NULL, 4, 9389.60, 90875.40, NULL, '2a02:a453:c90b:1:3988:c99c:5050:2fbc'),
(377, '2019-05-04 06:06:32', '2019-05-04 06:06:32', 1, 14, 1, NULL, NULL, 58, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:58:fireprotector-001]  bijgewerkt', '{\"invoice_number\":\"fireprotector-001\",\"discount\":0,\"po_number\":\"\",\"invoice_date\":\"2019-04-30\",\"due_date\":\"2019-05-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Overeenkomstig uw opdracht van de heer P. Vlemmix op 20 april \\n2018 belasten wij u voor de eerste termijn van de opdracht.\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"20000.00\",\"balance\":\"20000.00\",\"invoice_design_id\":11,\"is_quote\":0,\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":0,\"custom_taxes2\":0,\"is_amount_discount\":0,\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"fireprotector-001\",\"notes\":\"Opzet brandblusportal fireprotector.nl\",\"cost\":\"80.00\",\"qty\":\"250.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":3,\"name\":\"FireSafe B.V.\",\"address1\":\"Kerkenbos\",\"address2\":\"10\",\"city\":\"Nijmegen\",\"state\":\"Gelderland\",\"postal_code\":\"6503 CK\",\"work_phone\":\"+31 24 371 2720\",\"payment_terms\":30,\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"123456\",\"id_number\":\"FireSafe\",\"contacts\":[{\"first_name\":\"Peter\",\"last_name\":\"Vlemmix\",\"email\":\"p.vlemmix@firesafe.nl\",\"phone\":\"06 1653 5790\"}]},\"account\":{\"currency_id\":3,\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":0,\"hide_paid_to_date\":1,\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":1}}', 5, 4200.00, 95075.40, NULL, '2a02:a453:c90b:1:3988:c99c:5050:2fbc'),
(378, '2019-05-24 10:30:20', '2019-05-24 10:30:20', 1, 14, 1, NULL, NULL, 58, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:58:50000123-217051]  bijgewerkt', '{\"invoice_number\":\"fireprotector-001\",\"discount\":0,\"po_number\":\"\",\"invoice_date\":\"2019-04-30\",\"due_date\":\"2019-05-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Overeenkomstig uw opdracht van de heer P. Vlemmix op 20 april \\n2018 belasten wij u voor de eerste termijn van de opdracht.\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"24200.00\",\"balance\":\"24200.00\",\"invoice_design_id\":11,\"is_quote\":0,\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":0,\"custom_taxes2\":0,\"is_amount_discount\":0,\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"fireprotector-001\",\"notes\":\"Opzet brandblusportal fireprotector.nl\",\"cost\":\"80.00\",\"qty\":\"250.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":3,\"name\":\"FireSafe B.V.\",\"address1\":\"Kerkenbos\",\"address2\":\"10\",\"city\":\"Nijmegen\",\"state\":\"Gelderland\",\"postal_code\":\"6503 CK\",\"work_phone\":\"+31 24 371 2720\",\"payment_terms\":30,\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"123456\",\"id_number\":\"FireSafe\",\"contacts\":[{\"first_name\":\"Peter\",\"last_name\":\"Vlemmix\",\"email\":\"p.vlemmix@firesafe.nl\",\"phone\":\"06 1653 5790\"}]},\"account\":{\"currency_id\":3,\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":0,\"hide_paid_to_date\":1,\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":1}}', 5, -2420.00, 92655.40, NULL, '2a02:a212:a702:1480:69a4:42a2:11b9:c22f'),
(379, '2019-05-24 10:30:36', '2019-05-24 10:30:36', 1, 14, 1, 15, NULL, 58, NULL, 64, 'Peter Vlemmix  heeft  [invoice:58:50000123-217051]  bekeken', NULL, 7, NULL, 92655.40, NULL, '2a02:a212:a702:1480:69a4:42a2:11b9:c22f'),
(380, '2019-05-24 10:41:59', '2019-05-24 10:41:59', 1, 14, 1, NULL, NULL, 58, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:58:Portal fireprotector Fase 1]  bijgewerkt', '{\"invoice_number\":\"50000123-217051\",\"discount\":0,\"po_number\":\"K501\",\"invoice_date\":\"2019-04-30\",\"due_date\":\"2019-05-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"50000123-217051\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"21780.00\",\"balance\":\"21780.00\",\"invoice_design_id\":11,\"is_quote\":0,\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":0,\"custom_taxes2\":0,\"is_amount_discount\":0,\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"50000123-217051\",\"notes\":\"K501- Fase 1 portal en werken offerte systeem\\nopgeleverd 5-4-2019\",\"cost\":\"75.00\",\"qty\":\"240.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":3,\"name\":\"FireSafe B.V.\",\"address1\":\"Kerkenbos\",\"address2\":\"10\",\"city\":\"Nijmegen\",\"state\":\"Gelderland\",\"postal_code\":\"6503 CK\",\"work_phone\":\"+31 24 371 2720\",\"payment_terms\":30,\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"123456\",\"id_number\":\"FireSafe\",\"contacts\":[{\"first_name\":\"Peter\",\"last_name\":\"Vlemmix\",\"email\":\"p.vlemmix@firesafe.nl\",\"phone\":\"06 1653 5790\"},{\"first_name\":\"Freddie\",\"last_name\":\"Cillessen\",\"email\":\"f.cillessen@firesafe.nl\",\"phone\":\"+31 24 360 7171\"}]},\"account\":{\"currency_id\":3,\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":0,\"hide_paid_to_date\":1,\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":1}}', 5, 0.00, 92655.40, NULL, '2a02:a212:a702:1480:69a4:42a2:11b9:c22f'),
(381, '2019-05-24 10:43:16', '2019-05-24 10:43:16', 1, 14, 1, NULL, NULL, 56, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:56:0033]  verwijderd', NULL, 9, -46772.20, 45883.20, NULL, '2a02:a212:a702:1480:69a4:42a2:11b9:c22f'),
(382, '2019-05-24 10:44:01', '2019-05-24 10:44:01', 1, 14, 1, NULL, NULL, 58, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:58:Portal fireprotector Fase 1]  bijgewerkt', '{\"invoice_number\":\"Portal fireprotector Fase 1\",\"discount\":0,\"po_number\":\"K501\",\"invoice_date\":\"2019-04-30\",\"due_date\":\"2019-05-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Inkooporder nr. 50000123-217051\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"21780.00\",\"balance\":\"21780.00\",\"invoice_design_id\":11,\"is_quote\":0,\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":0,\"custom_taxes2\":0,\"is_amount_discount\":0,\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"K501\",\"notes\":\"Fase 1 portal en werken offerte systeem\\nopgeleverd 5-4-2019 - Inkooporder nr.\\n50000123-217051\",\"cost\":\"75.00\",\"qty\":\"240.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":3,\"name\":\"FireSafe B.V.\",\"address1\":\"Kerkenbos\",\"address2\":\"10\",\"city\":\"Nijmegen\",\"state\":\"Gelderland\",\"postal_code\":\"6503 CK\",\"work_phone\":\"+31 24 371 2720\",\"payment_terms\":30,\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"123456\",\"id_number\":\"FireSafe\",\"contacts\":[{\"first_name\":\"Peter\",\"last_name\":\"Vlemmix\",\"email\":\"p.vlemmix@firesafe.nl\",\"phone\":\"06 1653 5790\"},{\"first_name\":\"Freddie\",\"last_name\":\"Cillessen\",\"email\":\"f.cillessen@firesafe.nl\",\"phone\":\"+31 24 360 7171\"}]},\"account\":{\"currency_id\":3,\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":0,\"hide_paid_to_date\":1,\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"pdf_email_attachment\":1}}', 5, 0.00, 45883.20, NULL, '2a02:a212:a702:1480:69a4:42a2:11b9:c22f'),
(383, '2019-05-24 10:44:14', '2019-05-24 10:44:14', 1, 14, 1, NULL, NULL, 59, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:59:fireprotector-002]  verwijderd', NULL, 9, -14713.60, 31169.60, NULL, '2a02:a212:a702:1480:69a4:42a2:11b9:c22f'),
(384, '2019-05-24 10:44:14', '2019-05-24 10:44:14', 1, 14, 1, NULL, NULL, 60, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:60:fireprotector-003]  verwijderd', NULL, 9, -9389.60, 21780.00, NULL, '2a02:a212:a702:1480:69a4:42a2:11b9:c22f'),
(385, '2019-05-24 10:46:49', '2019-05-24 10:46:49', 1, 14, 1, NULL, NULL, 61, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:61:Portal fireprotector Fase 2]  gemaakt', NULL, 4, 7260.00, 29040.00, NULL, '2a02:a212:a702:1480:69a4:42a2:11b9:c22f'),
(386, '2020-06-19 04:38:06', '2020-06-19 04:38:06', 1, 14, 1, NULL, NULL, 62, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:62:Aaanp. Fireprotector]  gemaakt', NULL, 4, 1452.00, 30492.00, NULL, '81.205.99.221'),
(387, '2021-02-22 10:43:06', '2021-02-22 10:43:06', 1, 15, 1, NULL, NULL, NULL, NULL, NULL, 'Vincent van der Kolk  heeft  [client:15:Chubb Fire & Security B.V.]  aangegemaakt', NULL, 1, NULL, NULL, NULL, '62.45.52.164'),
(388, '2021-02-22 10:45:28', '2021-02-22 10:45:28', 1, 15, 1, NULL, NULL, 63, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:63:ichubb-001]  gemaakt', NULL, 4, 0.00, 0.00, NULL, '62.45.52.164'),
(389, '2021-03-31 06:54:27', '2021-03-31 06:54:27', 1, 16, 1, NULL, NULL, NULL, NULL, NULL, 'Vincent van der Kolk  heeft  [client:16:HUMAN SOURCE GROUP]  aangegemaakt', NULL, 1, NULL, NULL, NULL, '2a02:a444:f231:1:481b:b878:33ee:78c3'),
(390, '2021-03-31 06:58:06', '2021-03-31 06:58:06', 1, 16, 1, NULL, NULL, 64, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:64:DELTAFIBER-HSG-FEB]  gemaakt', NULL, 4, 12390.40, 12390.40, NULL, '2a02:a444:f231:1:481b:b878:33ee:78c3'),
(391, '2021-03-31 07:12:49', '2021-03-31 07:12:49', 1, 16, 1, NULL, NULL, 64, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:64:DELTAFIBER-HSG-FEB]  bijgewerkt', '{\"invoice_number\":\"DELTAFIBER-HSG-FEB\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2021-02-28\",\"due_date\":\"2021-04-28\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"12390.40\",\"balance\":\"12390.40\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"Inhuur V. vd Kolk\",\"notes\":\"Inhuur V. vd Kolk Jan-Mrt 2021 Deltafiber maand\\nfebruari 2021\",\"cost\":\"80.00\",\"qty\":\"128.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"HUMAN SOURCE GROUP\",\"address1\":\"Riviumboulevard\",\"address2\":\"156 - 186\",\"city\":\"Capelle a\\/d IJssel\",\"state\":\"ZH\",\"postal_code\":\"2909 LK\",\"work_phone\":\"+31 850 607 657\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"\",\"contacts\":[{\"first_name\":\"Jouk\",\"last_name\":\"Pols\",\"email\":\"jpols@humansourcegroup.com\",\"phone\":\"\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL001724867B53\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 12390.40, NULL, '2a02:a444:f231:1:481b:b878:33ee:78c3'),
(392, '2021-04-06 04:19:49', '2021-04-06 04:19:49', 1, 4, 1, NULL, NULL, 45, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:45:0028]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '2a02:a444:f231:1:b1a2:89c7:aac1:29cb'),
(393, '2021-04-06 04:19:49', '2021-04-06 04:19:49', 1, 4, 1, NULL, NULL, 46, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:46:0029]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '2a02:a444:f231:1:b1a2:89c7:aac1:29cb'),
(394, '2021-04-06 04:19:49', '2021-04-06 04:19:49', 1, 4, 1, NULL, NULL, 47, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:47:0030]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '2a02:a444:f231:1:b1a2:89c7:aac1:29cb'),
(395, '2021-04-06 04:19:49', '2021-04-06 04:19:49', 1, 4, 1, NULL, NULL, 48, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:48:0031]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '2a02:a444:f231:1:b1a2:89c7:aac1:29cb'),
(396, '2021-04-06 04:19:49', '2021-04-06 04:19:49', 1, 4, 1, NULL, NULL, 49, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:49:0032]  gearchiveerd', NULL, 8, NULL, -17036.80, NULL, '2a02:a444:f231:1:b1a2:89c7:aac1:29cb'),
(397, '2021-04-06 04:19:49', '2021-04-06 04:19:49', 1, 6, 1, NULL, NULL, 50, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:50:L04169.1]  gearchiveerd', NULL, 8, NULL, 12237.46, NULL, '2a02:a444:f231:1:b1a2:89c7:aac1:29cb'),
(398, '2021-04-06 04:19:49', '2021-04-06 04:19:49', 1, 6, 1, NULL, NULL, 52, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:52:L04169.2]  gearchiveerd', NULL, 8, NULL, 12237.46, NULL, '2a02:a444:f231:1:b1a2:89c7:aac1:29cb'),
(399, '2021-04-06 04:20:05', '2021-04-06 04:20:05', 1, 7, 1, NULL, NULL, 51, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:51:support-001]  gearchiveerd', NULL, 8, NULL, 0.00, NULL, '2a02:a444:f231:1:b1a2:89c7:aac1:29cb'),
(400, '2021-04-06 04:20:05', '2021-04-06 04:20:05', 1, 6, 1, NULL, NULL, 53, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:53:L04169.3]  gearchiveerd', NULL, 8, NULL, 12237.46, NULL, '2a02:a444:f231:1:b1a2:89c7:aac1:29cb'),
(401, '2021-04-06 04:20:05', '2021-04-06 04:20:05', 1, 6, 1, NULL, NULL, 54, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:54:L04169.4]  gearchiveerd', NULL, 8, NULL, 12237.46, NULL, '2a02:a444:f231:1:b1a2:89c7:aac1:29cb'),
(402, '2021-04-06 04:20:05', '2021-04-06 04:20:05', 1, 6, 1, NULL, NULL, 55, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:55:L04169.5]  gearchiveerd', NULL, 8, NULL, 12237.46, NULL, '2a02:a444:f231:1:b1a2:89c7:aac1:29cb'),
(403, '2021-04-06 04:20:05', '2021-04-06 04:20:05', 1, 6, 1, NULL, NULL, 57, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:57:L04169.6]  gearchiveerd', NULL, 8, NULL, 12237.46, NULL, '2a02:a444:f231:1:b1a2:89c7:aac1:29cb'),
(404, '2021-04-06 04:20:05', '2021-04-06 04:20:05', 1, 14, 1, NULL, NULL, 58, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:58:Portal fireprotector Fase 1]  gearchiveerd', NULL, 8, NULL, 30492.00, NULL, '2a02:a444:f231:1:b1a2:89c7:aac1:29cb'),
(405, '2021-04-06 04:20:05', '2021-04-06 04:20:05', 1, 14, 1, NULL, NULL, 61, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:61:Portal fireprotector Fase 2]  gearchiveerd', NULL, 8, NULL, 30492.00, NULL, '2a02:a444:f231:1:b1a2:89c7:aac1:29cb'),
(406, '2021-04-06 04:20:25', '2021-04-06 04:20:25', 1, 16, 1, NULL, 52, 64, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:64:DELTAFIBER-HSG-FEB]  ingegeven', NULL, 10, -12390.40, 0.00, NULL, '2a02:a444:f231:1:b1a2:89c7:aac1:29cb'),
(407, '2021-04-06 04:22:37', '2021-04-06 04:22:37', 1, 16, 1, NULL, NULL, 65, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:65:IRDF21A00716_10000]  gemaakt', NULL, 4, 12390.40, 12390.40, NULL, '2a02:a444:f231:1:b1a2:89c7:aac1:29cb'),
(408, '2021-04-06 04:25:33', '2021-04-06 04:25:33', 1, 16, 1, NULL, NULL, 65, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:65:DELTAFIBER-HSG-MRT-APR]  bijgewerkt', '{\"invoice_number\":\"IRDF21A00716_10000\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2021-04-09\",\"due_date\":\"2021-04-09\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"12390.40\",\"balance\":\"12390.40\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"Inhuur V. vd Kolk\",\"notes\":\"IRDF21A00716_10000 - APR TM JUN21\\nIRDF21A00716 Inhuur V. vd Kolk Deltafiber maand\\nAPR-JUN 2021\",\"cost\":\"80.00\",\"qty\":\"128.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"HUMAN SOURCE GROUP\",\"address1\":\"Riviumboulevard\",\"address2\":\"156 - 186\",\"city\":\"Capelle a\\/d IJssel\",\"state\":\"ZH\",\"postal_code\":\"2909 LK\",\"work_phone\":\"+31 850 607 657\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"\",\"contacts\":[{\"first_name\":\"Jouk\",\"last_name\":\"Pols\",\"email\":\"jpols@humansourcegroup.com\",\"phone\":\"\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL001724867B53\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, -12293.60, 96.80, NULL, '2a02:a444:f231:1:b1a2:89c7:aac1:29cb'),
(409, '2021-04-06 04:30:21', '2021-04-06 04:30:21', 1, 16, 1, NULL, NULL, 65, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:65:DELTAFIBER-HSG-MRT-APR]  bijgewerkt', '{\"invoice_number\":\"DELTAFIBER-HSG-MRT-APR\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2021-04-09\",\"due_date\":\"2021-05-09\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Werkzaamheden voor de maand maart en april 2021 bij DeltaFiber\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"96.80\",\"balance\":\"96.80\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"Inhuur V. vd Kolk\",\"notes\":\"IRDF21A00716_10000 - Inhuur V. vd Kolk Mrt-Apr\\n2021 Deltafiber maand maart - april 2021\",\"cost\":\"80.00\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"HUMAN SOURCE GROUP\",\"address1\":\"Riviumboulevard\",\"address2\":\"156 - 186\",\"city\":\"Capelle a\\/d IJssel\",\"state\":\"ZH\",\"postal_code\":\"2909 LK\",\"work_phone\":\"+31 850 607 657\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"\",\"contacts\":[{\"first_name\":\"Jouk\",\"last_name\":\"Pols\",\"email\":\"jpols@humansourcegroup.com\",\"phone\":\"\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL001724867B53\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 20424.80, 20521.60, NULL, '2a02:a444:f231:1:b1a2:89c7:aac1:29cb'),
(410, '2021-04-08 04:15:07', '2021-04-08 04:15:07', 1, 16, 1, NULL, NULL, 65, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:65:DELTAFIBER-HSG-MRT-APR]  bijgewerkt', '{\"invoice_number\":\"DELTAFIBER-HSG-MRT-APR\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2021-04-09\",\"due_date\":\"2021-05-09\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Werkzaamheden voor de maand maart en april 2021 bij DeltaFiber\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"20521.60\",\"balance\":\"20521.60\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"Inhuur V. vd Kolk\",\"notes\":\"IRDF21A00716_10000 - Inhuur V. vd Kolk Mrt-Apr\\n2021 Deltafiber maand maart - april 2021\",\"cost\":\"80.00\",\"qty\":\"212.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"HUMAN SOURCE GROUP\",\"address1\":\"Riviumboulevard\",\"address2\":\"156 - 186\",\"city\":\"Capelle a\\/d IJssel\",\"state\":\"ZH\",\"postal_code\":\"2909 LK\",\"work_phone\":\"+31 850 607 657\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"\",\"contacts\":[{\"first_name\":\"Jouk\",\"last_name\":\"Pols\",\"email\":\"jpols@humansourcegroup.com\",\"phone\":\"\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL001724867B53\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, -4259.20, 16262.40, NULL, '2a02:a444:f231:1:e1fc:975c:5e3c:2e41'),
(411, '2021-04-08 04:15:59', '2021-04-08 04:15:59', 1, 16, 1, NULL, NULL, 65, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:65:DELTAFIBER-HSG-MRT]  bijgewerkt', '{\"invoice_number\":\"DELTAFIBER-HSG-MRT-APR\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2021-04-09\",\"due_date\":\"2021-05-09\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Werkzaamheden voor de maand maart 2021 bij DeltaFiber\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"16262.40\",\"balance\":\"16262.40\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"Inhuur V. vd Kolk\",\"notes\":\"IRDF21A00716_10000 - Inhuur V. vd Kolk Mrt-Apr\\n2021 Deltafiber maand maart - april 2021\",\"cost\":\"80.00\",\"qty\":\"168.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"HUMAN SOURCE GROUP\",\"address1\":\"Riviumboulevard\",\"address2\":\"156 - 186\",\"city\":\"Capelle a\\/d IJssel\",\"state\":\"ZH\",\"postal_code\":\"2909 LK\",\"work_phone\":\"+31 850 607 657\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"\",\"contacts\":[{\"first_name\":\"Jouk\",\"last_name\":\"Pols\",\"email\":\"jpols@humansourcegroup.com\",\"phone\":\"\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL001724867B53\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 16262.40, NULL, '2a02:a444:f231:1:e1fc:975c:5e3c:2e41'),
(412, '2021-04-08 04:16:13', '2021-04-08 04:16:13', 1, 16, 1, NULL, NULL, 66, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:66:DELTAFIBER-HSG-APR]  gemaakt', NULL, 4, 4259.20, 20521.60, NULL, '2a02:a444:f231:1:e1fc:975c:5e3c:2e41'),
(413, '2021-04-08 04:16:50', '2021-04-08 04:16:50', 1, 16, 1, NULL, NULL, 66, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:66:DELTAFIBER-HSG-APR]  bijgewerkt', '{\"invoice_number\":\"DELTAFIBER-HSG-APR\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2021-04-08\",\"due_date\":\"2021-05-09\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Werkzaamheden voor de maand april 2021 bij DeltaFiber\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"4259.20\",\"balance\":\"4259.20\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"Inhuur V. vd Kolk\",\"notes\":\"IRDF21A00716_10000 - Inhuur V. vd Kolk Mrt-Apr\\n2021 Deltafiber maand maart - april 2021\",\"cost\":\"80.00\",\"qty\":\"44.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"HUMAN SOURCE GROUP\",\"address1\":\"Riviumboulevard\",\"address2\":\"156 - 186\",\"city\":\"Capelle a\\/d IJssel\",\"state\":\"ZH\",\"postal_code\":\"2909 LK\",\"work_phone\":\"+31 850 607 657\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"\",\"contacts\":[{\"first_name\":\"Jouk\",\"last_name\":\"Pols\",\"email\":\"jpols@humansourcegroup.com\",\"phone\":\"\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL001724867B53\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 20521.60, NULL, '2a02:a444:f231:1:e1fc:975c:5e3c:2e41');
INSERT INTO `activities` (`id`, `created_at`, `updated_at`, `account_id`, `client_id`, `user_id`, `contact_id`, `payment_id`, `invoice_id`, `credit_id`, `invitation_id`, `message`, `json_backup`, `activity_type_id`, `adjustment`, `balance`, `token_id`, `ip`) VALUES
(414, '2021-04-08 04:17:20', '2021-04-08 04:17:20', 1, 16, 1, NULL, NULL, 65, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:65:DELTAFIBER-HSG-MRT]  bijgewerkt', '{\"invoice_number\":\"DELTAFIBER-HSG-MRT\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2021-04-09\",\"due_date\":\"2021-05-09\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"Werkzaamheden voor de maand maart 2021 bij DeltaFiber\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"16262.40\",\"balance\":\"16262.40\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"Inhuur V. vd Kolk\",\"notes\":\"IRDF21A00716_10000 - Inhuur V. vd Kolk Mrt-Apr\\n2021 Deltafiber maand maart - april 2021\",\"cost\":\"80.00\",\"qty\":\"168.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"HUMAN SOURCE GROUP\",\"address1\":\"Riviumboulevard\",\"address2\":\"156 - 186\",\"city\":\"Capelle a\\/d IJssel\",\"state\":\"ZH\",\"postal_code\":\"2909 LK\",\"work_phone\":\"+31 850 607 657\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"\",\"contacts\":[{\"first_name\":\"Jouk\",\"last_name\":\"Pols\",\"email\":\"jpols@humansourcegroup.com\",\"phone\":\"\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL001724867B53\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 20521.60, NULL, '2a02:a444:f231:1:e1fc:975c:5e3c:2e41'),
(415, '2021-06-02 11:40:32', '2021-06-02 11:40:32', 1, 17, 1, NULL, NULL, NULL, NULL, NULL, 'Vincent van der Kolk  heeft  [client:17:Vibe Group Contracts B.V.]  aangegemaakt', NULL, 1, NULL, NULL, NULL, '81.205.99.221'),
(416, '2021-06-02 11:41:57', '2021-06-02 11:41:57', 1, 17, 1, NULL, NULL, 67, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:67:0001-ANWB-SC1000003109]  gemaakt', NULL, 4, 0.00, 0.00, NULL, '81.205.99.221'),
(417, '2021-06-02 11:42:19', '2021-06-02 11:42:19', 1, 17, 1, NULL, NULL, 67, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:67:0001-05-2021-ANWB-SC1000003109]  bijgewerkt', '{\"invoice_number\":\"0001-ANWB-SC1000003109\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2021-06-02\",\"due_date\":null,\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"0.00\",\"balance\":\"0.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"SC1000003109\",\"notes\":\"Werkzaamheden mei 2021uitgevoerd voor de ANWB\",\"cost\":\"75.00\",\"qty\":\"0.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":null,\"name\":\"Vibe Group Contracts B.V.\",\"address1\":\"Gustav Mahlerplein\",\"address2\":\"76\",\"city\":\"Amsterdam\",\"state\":\"N-Holland\",\"postal_code\":\"1082 MA\",\"work_phone\":\"0647327476\",\"payment_terms\":\"0\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"64057569\",\"id_number\":\"Spilberg\",\"contacts\":[{\"first_name\":\"Jeroen\",\"last_name\":\"Kuijpers\",\"email\":\"jkuijpers@spilberg.nl\",\"phone\":\"0647327476\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL001724867B53\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 0.00, NULL, '81.205.99.221'),
(418, '2021-06-02 11:43:28', '2021-06-02 11:43:28', 1, 17, 1, NULL, NULL, 67, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:67:0001-05-2021-ANWB-SC1000003109]  bijgewerkt', '{\"invoice_number\":\"0001-05-2021-ANWB-SC1000003109\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2021-06-02\",\"due_date\":null,\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"0.00\",\"balance\":\"0.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"SC1000003109\",\"notes\":\"Werkzaamheden mei 2021uitgevoerd voor de ANWB\",\"cost\":\"75.00\",\"qty\":\"0.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":null,\"name\":\"Vibe Group Contracts B.V.\",\"address1\":\"Gustav Mahlerplein\",\"address2\":\"76\",\"city\":\"Amsterdam\",\"state\":\"N-Holland\",\"postal_code\":\"1082 MA\",\"work_phone\":\"0647327476\",\"payment_terms\":\"0\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"64057569\",\"id_number\":\"Spilberg\",\"contacts\":[{\"first_name\":\"Jeroen\",\"last_name\":\"Kuijpers\",\"email\":\"jkuijpers@spilberg.nl\",\"phone\":\"0647327476\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL001724867B53\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 0.00, NULL, '81.205.99.221'),
(419, '2021-06-03 04:15:58', '2021-06-03 04:15:58', 1, 16, 1, NULL, 53, 65, NULL, NULL, 'Vincent van der Kolk  heeft een  betaling voor  [invoice:65:DELTAFIBER-HSG-MRT]  ingegeven', NULL, 10, -16262.40, 4259.20, NULL, '2a02:a444:f231:1:217d:2420:6690:c0ac'),
(420, '2021-06-03 04:16:27', '2021-06-03 04:16:27', 1, 17, 1, NULL, NULL, 67, NULL, NULL, 'Vincent van der Kolk  heeft  [invoice:67:0001-05-2021-ANWB-SC1000003109]  bijgewerkt', '{\"invoice_number\":\"0001-05-2021-ANWB-SC1000003109\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2021-05-31\",\"due_date\":\"2021-06-30\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.\",\"public_notes\":\"\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"0.00\",\"balance\":\"0.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Kolkmedia\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\\n06-13830405\",\"invoice_items\":[{\"product_key\":\"SC1000003109\",\"notes\":\"Werkzaamheden mei 2021uitgevoerd voor de ANWB\",\"cost\":\"75.00\",\"qty\":\"0.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":null,\"name\":\"Vibe Group Contracts B.V.\",\"address1\":\"Gustav Mahlerplein\",\"address2\":\"76\",\"city\":\"Amsterdam\",\"state\":\"N-Holland\",\"postal_code\":\"1082 MA\",\"work_phone\":\"0647327476\",\"payment_terms\":\"0\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"64057569\",\"id_number\":\"Spilberg\",\"contacts\":[{\"first_name\":\"Jeroen\",\"last_name\":\"Kuijpers\",\"email\":\"jkuijpers@spilberg.nl\",\"phone\":\"0647327476\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"work_email\":\"vincent@kolkmedia.com\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"NL001724867B53\",\"id_number\":\"54875765\",\"pdf_email_attachment\":\"1\"}}', 5, 7078.50, 7078.50, NULL, '2a02:a444:f231:1:217d:2420:6690:c0ac');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `affiliates`
--

CREATE TABLE `affiliates` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `affiliate_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_title` text COLLATE utf8_unicode_ci NOT NULL,
  `payment_subtitle` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(7,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `public_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `categories`
--

INSERT INTO `categories` (`id`, `account_id`, `user_id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`, `public_id`) VALUES
(1, 1, 1, 'Parkeren', 'Parkeerkosten', '2015-08-30 08:28:24', '2015-08-30 08:28:24', NULL, 1),
(2, 1, 1, 'Reiskosten', 'Reiskosten', '2015-08-30 08:28:42', '2015-08-30 08:28:42', NULL, 2),
(3, 1, 1, 'Hardware', 'Hardware kosten', '2015-08-30 08:29:00', '2015-09-07 12:49:58', NULL, 3),
(4, 1, 1, 'Kolkmedia', 'Documenten gerelateerd aan Kolkmedia', '2015-09-08 10:55:43', '2015-09-08 10:55:43', NULL, 4),
(5, 1, 1, 'Lease', 'Leasekosten', '2015-09-16 06:29:37', '2015-09-16 06:29:37', NULL, 5);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `work_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` decimal(13,2) DEFAULT NULL,
  `paid_to_date` decimal(13,2) DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `industry_id` int(10) UNSIGNED DEFAULT NULL,
  `size_id` int(10) UNSIGNED DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `payment_terms` int(11) DEFAULT NULL,
  `public_id` int(10) UNSIGNED NOT NULL,
  `custom_value1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_value2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vat_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `clients`
--

INSERT INTO `clients` (`id`, `user_id`, `account_id`, `currency_id`, `created_at`, `updated_at`, `deleted_at`, `name`, `address1`, `address2`, `city`, `state`, `postal_code`, `country_id`, `work_phone`, `private_notes`, `balance`, `paid_to_date`, `last_login`, `website`, `industry_id`, `size_id`, `is_deleted`, `payment_terms`, `public_id`, `custom_value1`, `custom_value2`, `vat_number`, `id_number`) VALUES
(1, 1, 1, 3, '2015-04-24 09:52:20', '2016-08-30 11:07:18', NULL, 'Kolkmedia', 'Esdoornstraat', '41', 'Bleiswijk', 'zuid-holland', '2665 RC', 528, '0613830405', '', 17036.80, 0.00, '2015-09-29 05:55:10', 'www.kolkmedia.com', 10, 1, 0, 14, 1, '', '', 'NL146175426B01', '54875765'),
(2, 1, 1, 3, '2015-04-24 09:56:24', '2015-04-24 10:35:57', NULL, 'Hertek B.V.', 'Copernicusstraat', '8', 'Weert', 'Limburg', '6003 DE', 528, '+31 (495) 584177', '', 0.00, 786.50, NULL, 'www.hertek.eu', 8, 6, 0, 14, 2, '', '', '', 'hertek_onderhoud'),
(3, 1, 1, 3, '2015-04-24 09:58:10', '2015-11-20 16:21:48', NULL, 'Hertek Holding B.V.', 'Copernicusstraat', '8', 'Weert', 'Limburg', '6003 DE', 528, '+31 (495) 584177', '', 0.00, 20649.15, '2015-05-22 03:56:59', 'www.hertek.eu', 8, 6, 0, 14, 3, '', '', '', 'hertek_normaal'),
(4, 1, 1, 3, '2015-09-15 06:13:43', '2018-08-25 09:49:03', NULL, 'Incentro Nederland B.V.', 'Van Nelleweg', '1', 'Rotterdam', 'Zuid-holland', '3044 BC', 528, '0102020544', '', -17036.80, 375003.20, '2018-05-31 07:26:01', 'www.incentro.com', 10, 5, 0, 30, 4, '', '', 'NL146175426B01', 'Incentro Nederland B.V.'),
(5, 1, 1, 3, '2016-06-17 04:56:05', '2016-08-12 05:43:11', NULL, 'G.H.van der Kolk', 'Kastanjelaan', '61', 'Bleiswijk', 'Zuid-holland', '2665 GA', 528, '(06) 13 32 30 77', '', 411.63, 1960.13, NULL, 'https://nl.linkedin.com/in/gerard-van-der-kolk-kolk-40495824', 21, 1, 0, 30, 5, '', '', '', 'G.H.van der Kolk'),
(6, 1, 1, NULL, '2018-06-06 08:23:55', '2019-01-22 12:38:03', NULL, 'Fast Flex B.V.', 'Hogehilweg', '24', 'Amsterdam', 'Noord-holland', '1101 CD', 528, '', '', 12237.46, 48949.83, NULL, '', NULL, NULL, 0, 0, 6, '', '', '', 'Fastflex'),
(7, 1, 1, NULL, '2018-07-26 12:24:57', '2018-10-12 12:27:50', NULL, 'BOEM! Marketing', 'Rotterdam Airportplein', '22', 'Rotterdam', 'Zuid-holland', '', 528, '+31 6 30 62 62 94', '', 0.00, 825.00, '2018-10-12 12:27:49', 'http://boemmarketing.nl/contact/', NULL, NULL, 0, 0, 7, '', '', '123456', 'boem'),
(8, 1, 1, NULL, '2018-10-23 10:15:45', '2018-10-23 10:46:26', '2018-10-23 10:46:26', 'FireSafe B.V.', 'Kerkenbos', '10-135', 'Nijmegen', 'Gelderland', '6503 CK', 528, '+31 24 371 2720', '', NULL, NULL, NULL, 'www.firesafe.nl', NULL, NULL, 1, 0, 8, '', '', '123456', 'FireSafe'),
(9, 1, 1, 3, '2018-10-23 10:16:18', '2018-10-23 10:46:26', '2018-10-23 10:46:26', 'FireSafe B.V.', 'Kerkenbos', '10-135', 'Nijmegen', 'Gelderland', '6503 CK', 528, '+31 24 371 2720', '', NULL, NULL, NULL, 'www.firesafe.nl', 27, 4, 1, 30, 9, '', '', '123456', 'FireSafe'),
(10, 1, 1, 3, '2018-10-23 10:16:21', '2018-10-23 10:46:26', '2018-10-23 10:46:26', 'FireSafe B.V.', 'Kerkenbos', '10-135', 'Nijmegen', 'Gelderland', '6503 CK', 528, '+31 24 371 2720', '', NULL, NULL, NULL, 'www.firesafe.nl', 27, 4, 1, 30, 10, '', '', '123456', 'FireSafe'),
(11, 1, 1, 3, '2018-10-23 10:17:13', '2018-10-23 10:46:26', '2018-10-23 10:46:26', 'FireSafe B.V.', 'Kerkenbos', '10-135', 'Nijmegen', 'Gelderland', '6503 CK', 528, '+31 24 371 2720', '', NULL, NULL, NULL, 'www.firesafe.nl', 27, 4, 1, 30, 11, '', '', '123456', 'FireSafe'),
(12, 1, 1, 3, '2018-10-23 10:17:15', '2018-10-23 10:46:26', '2018-10-23 10:46:26', 'FireSafe B.V.', 'Kerkenbos', '10-135', 'Nijmegen', 'Gelderland', '6503 CK', 528, '+31 24 371 2720', '', NULL, NULL, NULL, 'www.firesafe.nl', 27, 4, 1, 30, 12, '', '', '123456', 'FireSafe'),
(13, 1, 1, 3, '2018-10-23 10:17:18', '2018-10-23 10:46:26', '2018-10-23 10:46:26', 'FireSafe B.V.', 'Kerkenbos', '10-135', 'Nijmegen', 'Gelderland', '6503 CK', 528, '+31 24 371 2720', '', NULL, NULL, NULL, 'www.firesafe.nl', 27, 4, 1, 30, 13, '', '', '123456', 'FireSafe'),
(14, 1, 1, 3, '2018-10-23 10:17:23', '2020-06-19 04:38:06', NULL, 'FireSafe B.V.', 'Kerkenbos', '10', 'Nijmegen', 'Gelderland', '6503 CK', 528, '+31 24 371 2720', '', 30492.00, 0.00, '2019-05-24 10:30:36', 'www.firesafe.nl', 27, 4, 0, 30, 14, '', '', '123456', 'FireSafe'),
(15, 1, 1, NULL, '2021-02-22 10:43:06', '2021-02-22 10:45:28', NULL, 'Chubb Fire & Security B.V.', 'Papendorpseweg', '83', 'Utrecht', 'Utrecht', '3528BJ Utrecht', 528, '+31 (0)88 112 40 00', '', 0.00, NULL, NULL, 'https://www.chubbfiresecurity.com/nl/nl/', NULL, NULL, 0, 0, 15, '', '', '000019483694', 'KVK 33257455'),
(16, 1, 1, 3, '2021-03-31 06:54:27', '2021-06-03 04:15:58', NULL, 'HUMAN SOURCE GROUP', 'Riviumboulevard', '156 - 186', 'Capelle a/d IJssel', 'ZH', '2909 LK', 528, '+31 850 607 657', '', 4259.20, 28652.80, NULL, 'http://www.humansourcegroup.com/', 10, 3, 0, 30, 16, '', '', '', ''),
(17, 1, 1, NULL, '2021-06-02 11:40:32', '2021-06-03 04:16:27', NULL, 'Vibe Group Contracts B.V.', 'Gustav Mahlerplein', '76', 'Amsterdam', 'N-Holland', '1082 MA', 528, '0647327476', '', 7078.50, NULL, NULL, 'https://www.spilberg.nl/', NULL, NULL, 0, 0, 17, '', '', '64057569', 'Spilberg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `send_invoice` tinyint(1) NOT NULL DEFAULT 0,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `public_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `contacts`
--

INSERT INTO `contacts` (`id`, `account_id`, `user_id`, `client_id`, `created_at`, `updated_at`, `deleted_at`, `is_primary`, `send_invoice`, `first_name`, `last_name`, `email`, `phone`, `last_login`, `public_id`) VALUES
(1, 1, 1, 1, '2015-04-24 09:52:20', '2016-09-30 05:29:04', NULL, 1, 1, 'Vincent', 'van der Kolk', 'vincent@kolkmedia.com', '0613830405', NULL, 1),
(2, 1, 1, 2, '2015-04-24 09:56:24', '2015-09-15 07:11:30', NULL, 1, 1, 'Peter', 'Vlemmix', 'peter.vlemmix@hertek.nl', '+31 (6) 29096751', NULL, 2),
(3, 1, 1, 3, '2015-04-24 09:58:10', '2015-04-24 10:41:22', NULL, 1, 1, 'Peter', 'Vlemmix', 'peter.vlemmix@hertek.nl', '+31 (6) 29096751', NULL, 3),
(4, 1, 1, 4, '2015-09-15 06:13:43', '2018-05-30 05:33:38', NULL, 1, 1, 'Lorna', 'O\'Connor', 'inkoop@incentro.com', '0102020544', NULL, 4),
(5, 1, 1, 5, '2016-06-17 04:56:05', '2016-08-12 05:42:51', NULL, 1, 1, 'Gerard', 'van der Kolk', 'gerardvanderkolk@planet.nl', '(06) 13 32 30 77', NULL, 5),
(6, 1, 1, 6, '2018-06-06 08:23:55', '2019-01-22 12:38:03', NULL, 1, 1, 'Administratie', '', 'administratie@fastflex.nl', '', NULL, 6),
(7, 1, 1, 7, '2018-07-26 12:24:57', '2018-08-31 06:39:02', NULL, 1, 1, 'Martijn', 'van den Bosch', 'martijn@boemmarketing.nl', '0630626294', NULL, 7),
(8, 1, 1, 7, '2018-07-26 12:26:13', '2018-08-31 06:39:02', NULL, 0, 0, 'Jeroen', 'Voorn', 'jeroen@boemmarketing.nl', '0630626294', NULL, 8),
(9, 1, 1, 8, '2018-10-23 10:15:50', '2018-10-23 10:15:50', NULL, 1, 0, 'Peter', 'Vlemmix', 'p.vlemmix@firesafe.nl', '06 1653 5790', NULL, 9),
(10, 1, 1, 9, '2018-10-23 10:16:18', '2018-10-23 10:16:18', NULL, 1, 0, 'Peter', 'Vlemmix', 'p.vlemmix@firesafe.nl', '06 1653 5790', NULL, 10),
(11, 1, 1, 10, '2018-10-23 10:16:21', '2018-10-23 10:16:21', NULL, 1, 0, 'Peter', 'Vlemmix', 'p.vlemmix@firesafe.nl', '06 1653 5790', NULL, 11),
(12, 1, 1, 11, '2018-10-23 10:17:13', '2018-10-23 10:17:13', NULL, 1, 0, 'Peter', 'Vlemmix', 'p.vlemmix@firesafe.nl', '06 1653 5790', NULL, 12),
(13, 1, 1, 12, '2018-10-23 10:17:18', '2018-10-23 10:17:18', NULL, 1, 0, 'Peter', 'Vlemmix', 'p.vlemmix@firesafe.nl', '06 1653 5790', NULL, 13),
(14, 1, 1, 13, '2018-10-23 10:17:19', '2018-10-23 10:17:19', NULL, 1, 0, 'Peter', 'Vlemmix', 'p.vlemmix@firesafe.nl', '06 1653 5790', NULL, 14),
(15, 1, 1, 14, '2018-10-23 10:17:23', '2020-06-19 04:38:06', '2020-06-19 04:38:06', 1, 0, 'Peter', 'Vlemmix', 'p.vlemmix@firesafe.nl', '06 1653 5790', NULL, 15),
(16, 1, 1, 14, '2019-05-24 10:38:08', '2020-06-19 04:38:06', NULL, 1, 1, 'Freddie', 'Cillessen', 'f.cillessen@firesafe.nl', '+31 24 360 7171', NULL, 16),
(17, 1, 1, 15, '2021-02-22 10:43:06', '2021-02-22 10:45:28', NULL, 1, 1, 'Peter', 'Vlemmix', 'peter.vlemmix@chubbfs.nl', '+31 (0) 6 20 40 24 31', NULL, 17),
(18, 1, 1, 16, '2021-03-31 06:54:27', '2021-04-08 04:17:20', NULL, 1, 1, 'Jouk', 'Pols', 'jpols@humansourcegroup.com', '', NULL, 18),
(19, 1, 1, 17, '2021-06-02 11:40:32', '2021-06-03 04:17:58', NULL, 1, 1, 'Jeroen', 'Kuijpers', 'jkuijpers@spilberg.nl', '0647327476', NULL, 19);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `capital` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `citizenship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_sub_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso_3166_2` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `iso_3166_3` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `region_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sub_region_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `eea` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `countries`
--

INSERT INTO `countries` (`id`, `capital`, `citizenship`, `country_code`, `currency`, `currency_code`, `currency_sub_unit`, `full_name`, `iso_3166_2`, `iso_3166_3`, `name`, `region_code`, `sub_region_code`, `eea`) VALUES
(4, 'Kabul', 'Afghan', '004', 'afghani', 'AFN', 'pul', 'Islamic Republic of Afghanistan', 'AF', 'AFG', 'Afghanistan', '142', '034', 0),
(8, 'Tirana', 'Albanian', '008', 'lek', 'ALL', '(qindar (pl. qindarka))', 'Republic of Albania', 'AL', 'ALB', 'Albania', '150', '039', 0),
(10, 'Antartica', 'of Antartica', '010', '', '', '', 'Antarctica', 'AQ', 'ATA', 'Antarctica', '', '', 0),
(12, 'Algiers', 'Algerian', '012', 'Algerian dinar', 'DZD', 'centime', 'People’s Democratic Republic of Algeria', 'DZ', 'DZA', 'Algeria', '002', '015', 0),
(16, 'Pago Pago', 'American Samoan', '016', 'US dollar', 'USD', 'cent', 'Territory of American', 'AS', 'ASM', 'American Samoa', '009', '061', 0),
(20, 'Andorra la Vella', 'Andorran', '020', 'euro', 'EUR', 'cent', 'Principality of Andorra', 'AD', 'AND', 'Andorra', '150', '039', 0),
(24, 'Luanda', 'Angolan', '024', 'kwanza', 'AOA', 'cêntimo', 'Republic of Angola', 'AO', 'AGO', 'Angola', '002', '017', 0),
(28, 'St John’s', 'of Antigua and Barbuda', '028', 'East Caribbean dollar', 'XCD', 'cent', 'Antigua and Barbuda', 'AG', 'ATG', 'Antigua and Barbuda', '019', '029', 0),
(31, 'Baku', 'Azerbaijani', '031', 'Azerbaijani manat', 'AZN', 'kepik (inv.)', 'Republic of Azerbaijan', 'AZ', 'AZE', 'Azerbaijan', '142', '145', 0),
(32, 'Buenos Aires', 'Argentinian', '032', 'Argentine peso', 'ARS', 'centavo', 'Argentine Republic', 'AR', 'ARG', 'Argentina', '019', '005', 0),
(36, 'Canberra', 'Australian', '036', 'Australian dollar', 'AUD', 'cent', 'Commonwealth of Australia', 'AU', 'AUS', 'Australia', '009', '053', 0),
(40, 'Vienna', 'Austrian', '040', 'euro', 'EUR', 'cent', 'Republic of Austria', 'AT', 'AUT', 'Austria', '150', '155', 1),
(44, 'Nassau', 'Bahamian', '044', 'Bahamian dollar', 'BSD', 'cent', 'Commonwealth of the Bahamas', 'BS', 'BHS', 'Bahamas', '019', '029', 0),
(48, 'Manama', 'Bahraini', '048', 'Bahraini dinar', 'BHD', 'fils (inv.)', 'Kingdom of Bahrain', 'BH', 'BHR', 'Bahrain', '142', '145', 0),
(50, 'Dhaka', 'Bangladeshi', '050', 'taka (inv.)', 'BDT', 'poisha (inv.)', 'People’s Republic of Bangladesh', 'BD', 'BGD', 'Bangladesh', '142', '034', 0),
(51, 'Yerevan', 'Armenian', '051', 'dram (inv.)', 'AMD', 'luma', 'Republic of Armenia', 'AM', 'ARM', 'Armenia', '142', '145', 0),
(52, 'Bridgetown', 'Barbadian', '052', 'Barbados dollar', 'BBD', 'cent', 'Barbados', 'BB', 'BRB', 'Barbados', '019', '029', 0),
(56, 'Brussels', 'Belgian', '056', 'euro', 'EUR', 'cent', 'Kingdom of Belgium', 'BE', 'BEL', 'Belgium', '150', '155', 1),
(60, 'Hamilton', 'Bermudian', '060', 'Bermuda dollar', 'BMD', 'cent', 'Bermuda', 'BM', 'BMU', 'Bermuda', '019', '021', 0),
(64, 'Thimphu', 'Bhutanese', '064', 'ngultrum (inv.)', 'BTN', 'chhetrum (inv.)', 'Kingdom of Bhutan', 'BT', 'BTN', 'Bhutan', '142', '034', 0),
(68, 'Sucre (BO1)', 'Bolivian', '068', 'boliviano', 'BOB', 'centavo', 'Plurinational State of Bolivia', 'BO', 'BOL', 'Bolivia, Plurinational State of', '019', '005', 0),
(70, 'Sarajevo', 'of Bosnia and Herzegovina', '070', 'convertible mark', 'BAM', 'fening', 'Bosnia and Herzegovina', 'BA', 'BIH', 'Bosnia and Herzegovina', '150', '039', 0),
(72, 'Gaborone', 'Botswanan', '072', 'pula (inv.)', 'BWP', 'thebe (inv.)', 'Republic of Botswana', 'BW', 'BWA', 'Botswana', '002', '018', 0),
(74, 'Bouvet island', 'of Bouvet island', '074', '', '', '', 'Bouvet Island', 'BV', 'BVT', 'Bouvet Island', '', '', 0),
(76, 'Brasilia', 'Brazilian', '076', 'real (pl. reais)', 'BRL', 'centavo', 'Federative Republic of Brazil', 'BR', 'BRA', 'Brazil', '019', '005', 0),
(84, 'Belmopan', 'Belizean', '084', 'Belize dollar', 'BZD', 'cent', 'Belize', 'BZ', 'BLZ', 'Belize', '019', '013', 0),
(86, 'Diego Garcia', 'Changosian', '086', 'US dollar', 'USD', 'cent', 'British Indian Ocean Territory', 'IO', 'IOT', 'British Indian Ocean Territory', '', '', 0),
(90, 'Honiara', 'Solomon Islander', '090', 'Solomon Islands dollar', 'SBD', 'cent', 'Solomon Islands', 'SB', 'SLB', 'Solomon Islands', '009', '054', 0),
(92, 'Road Town', 'British Virgin Islander;', '092', 'US dollar', 'USD', 'cent', 'British Virgin Islands', 'VG', 'VGB', 'Virgin Islands, British', '019', '029', 0),
(96, 'Bandar Seri Begawan', 'Bruneian', '096', 'Brunei dollar', 'BND', 'sen (inv.)', 'Brunei Darussalam', 'BN', 'BRN', 'Brunei Darussalam', '142', '035', 0),
(100, 'Sofia', 'Bulgarian', '100', 'lev (pl. leva)', 'BGN', 'stotinka', 'Republic of Bulgaria', 'BG', 'BGR', 'Bulgaria', '150', '151', 1),
(104, 'Yangon', 'Burmese', '104', 'kyat', 'MMK', 'pya', 'Union of Myanmar/', 'MM', 'MMR', 'Myanmar', '142', '035', 0),
(108, 'Bujumbura', 'Burundian', '108', 'Burundi franc', 'BIF', 'centime', 'Republic of Burundi', 'BI', 'BDI', 'Burundi', '002', '014', 0),
(112, 'Minsk', 'Belarusian', '112', 'Belarusian rouble', 'BYR', 'kopek', 'Republic of Belarus', 'BY', 'BLR', 'Belarus', '150', '151', 0),
(116, 'Phnom Penh', 'Cambodian', '116', 'riel', 'KHR', 'sen (inv.)', 'Kingdom of Cambodia', 'KH', 'KHM', 'Cambodia', '142', '035', 0),
(120, 'Yaoundé', 'Cameroonian', '120', 'CFA franc (BEAC)', 'XAF', 'centime', 'Republic of Cameroon', 'CM', 'CMR', 'Cameroon', '002', '017', 0),
(124, 'Ottawa', 'Canadian', '124', 'Canadian dollar', 'CAD', 'cent', 'Canada', 'CA', 'CAN', 'Canada', '019', '021', 0),
(132, 'Praia', 'Cape Verdean', '132', 'Cape Verde escudo', 'CVE', 'centavo', 'Republic of Cape Verde', 'CV', 'CPV', 'Cape Verde', '002', '011', 0),
(136, 'George Town', 'Caymanian', '136', 'Cayman Islands dollar', 'KYD', 'cent', 'Cayman Islands', 'KY', 'CYM', 'Cayman Islands', '019', '029', 0),
(140, 'Bangui', 'Central African', '140', 'CFA franc (BEAC)', 'XAF', 'centime', 'Central African Republic', 'CF', 'CAF', 'Central African Republic', '002', '017', 0),
(144, 'Colombo', 'Sri Lankan', '144', 'Sri Lankan rupee', 'LKR', 'cent', 'Democratic Socialist Republic of Sri Lanka', 'LK', 'LKA', 'Sri Lanka', '142', '034', 0),
(148, 'N’Djamena', 'Chadian', '148', 'CFA franc (BEAC)', 'XAF', 'centime', 'Republic of Chad', 'TD', 'TCD', 'Chad', '002', '017', 0),
(152, 'Santiago', 'Chilean', '152', 'Chilean peso', 'CLP', 'centavo', 'Republic of Chile', 'CL', 'CHL', 'Chile', '019', '005', 0),
(156, 'Beijing', 'Chinese', '156', 'renminbi-yuan (inv.)', 'CNY', 'jiao (10)', 'People’s Republic of China', 'CN', 'CHN', 'China', '142', '030', 0),
(158, 'Taipei', 'Taiwanese', '158', 'new Taiwan dollar', 'TWD', 'fen (inv.)', 'Republic of China, Taiwan (TW1)', 'TW', 'TWN', 'Taiwan, Province of China', '142', '030', 0),
(162, 'Flying Fish Cove', 'Christmas Islander', '162', 'Australian dollar', 'AUD', 'cent', 'Christmas Island Territory', 'CX', 'CXR', 'Christmas Island', '', '', 0),
(166, 'Bantam', 'Cocos Islander', '166', 'Australian dollar', 'AUD', 'cent', 'Territory of Cocos (Keeling) Islands', 'CC', 'CCK', 'Cocos (Keeling) Islands', '', '', 0),
(170, 'Santa Fe de Bogotá', 'Colombian', '170', 'Colombian peso', 'COP', 'centavo', 'Republic of Colombia', 'CO', 'COL', 'Colombia', '019', '005', 0),
(174, 'Moroni', 'Comorian', '174', 'Comorian franc', 'KMF', '', 'Union of the Comoros', 'KM', 'COM', 'Comoros', '002', '014', 0),
(175, 'Mamoudzou', 'Mahorais', '175', 'euro', 'EUR', 'cent', 'Departmental Collectivity of Mayotte', 'YT', 'MYT', 'Mayotte', '002', '014', 0),
(178, 'Brazzaville', 'Congolese', '178', 'CFA franc (BEAC)', 'XAF', 'centime', 'Republic of the Congo', 'CG', 'COG', 'Congo', '002', '017', 0),
(180, 'Kinshasa', 'Congolese', '180', 'Congolese franc', 'CDF', 'centime', 'Democratic Republic of the Congo', 'CD', 'COD', 'Congo, the Democratic Republic of the', '002', '017', 0),
(184, 'Avarua', 'Cook Islander', '184', 'New Zealand dollar', 'NZD', 'cent', 'Cook Islands', 'CK', 'COK', 'Cook Islands', '009', '061', 0),
(188, 'San José', 'Costa Rican', '188', 'Costa Rican colón (pl. colones)', 'CRC', 'céntimo', 'Republic of Costa Rica', 'CR', 'CRI', 'Costa Rica', '019', '013', 0),
(191, 'Zagreb', 'Croatian', '191', 'kuna (inv.)', 'HRK', 'lipa (inv.)', 'Republic of Croatia', 'HR', 'HRV', 'Croatia', '150', '039', 1),
(192, 'Havana', 'Cuban', '192', 'Cuban peso', 'CUP', 'centavo', 'Republic of Cuba', 'CU', 'CUB', 'Cuba', '019', '029', 0),
(196, 'Nicosia', 'Cypriot', '196', 'euro', 'EUR', 'cent', 'Republic of Cyprus', 'CY', 'CYP', 'Cyprus', '142', '145', 1),
(203, 'Prague', 'Czech', '203', 'Czech koruna (pl. koruny)', 'CZK', 'halér', 'Czech Republic', 'CZ', 'CZE', 'Czech Republic', '150', '151', 1),
(204, 'Porto Novo (BJ1)', 'Beninese', '204', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Republic of Benin', 'BJ', 'BEN', 'Benin', '002', '011', 0),
(208, 'Copenhagen', 'Danish', '208', 'Danish krone', 'DKK', 'øre (inv.)', 'Kingdom of Denmark', 'DK', 'DNK', 'Denmark', '150', '154', 1),
(212, 'Roseau', 'Dominican', '212', 'East Caribbean dollar', 'XCD', 'cent', 'Commonwealth of Dominica', 'DM', 'DMA', 'Dominica', '019', '029', 0),
(214, 'Santo Domingo', 'Dominican', '214', 'Dominican peso', 'DOP', 'centavo', 'Dominican Republic', 'DO', 'DOM', 'Dominican Republic', '019', '029', 0),
(218, 'Quito', 'Ecuadorian', '218', 'US dollar', 'USD', 'cent', 'Republic of Ecuador', 'EC', 'ECU', 'Ecuador', '019', '005', 0),
(222, 'San Salvador', 'Salvadoran', '222', 'Salvadorian colón (pl. colones)', 'SVC', 'centavo', 'Republic of El Salvador', 'SV', 'SLV', 'El Salvador', '019', '013', 0),
(226, 'Malabo', 'Equatorial Guinean', '226', 'CFA franc (BEAC)', 'XAF', 'centime', 'Republic of Equatorial Guinea', 'GQ', 'GNQ', 'Equatorial Guinea', '002', '017', 0),
(231, 'Addis Ababa', 'Ethiopian', '231', 'birr (inv.)', 'ETB', 'cent', 'Federal Democratic Republic of Ethiopia', 'ET', 'ETH', 'Ethiopia', '002', '014', 0),
(232, 'Asmara', 'Eritrean', '232', 'nakfa', 'ERN', 'cent', 'State of Eritrea', 'ER', 'ERI', 'Eritrea', '002', '014', 0),
(233, 'Tallinn', 'Estonian', '233', 'euro', 'EUR', 'cent', 'Republic of Estonia', 'EE', 'EST', 'Estonia', '150', '154', 1),
(234, 'Tórshavn', 'Faeroese', '234', 'Danish krone', 'DKK', 'øre (inv.)', 'Faeroe Islands', 'FO', 'FRO', 'Faroe Islands', '150', '154', 0),
(238, 'Stanley', 'Falkland Islander', '238', 'Falkland Islands pound', 'FKP', 'new penny', 'Falkland Islands', 'FK', 'FLK', 'Falkland Islands (Malvinas)', '019', '005', 0),
(239, 'King Edward Point (Grytviken)', 'of South Georgia and the South Sandwich Islands', '239', '', '', '', 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 'South Georgia and the South Sandwich Islands', '', '', 0),
(242, 'Suva', 'Fijian', '242', 'Fiji dollar', 'FJD', 'cent', 'Republic of Fiji', 'FJ', 'FJI', 'Fiji', '009', '054', 0),
(246, 'Helsinki', 'Finnish', '246', 'euro', 'EUR', 'cent', 'Republic of Finland', 'FI', 'FIN', 'Finland', '150', '154', 1),
(248, 'Mariehamn', 'Åland Islander', '248', 'euro', 'EUR', 'cent', 'Åland Islands', 'AX', 'ALA', 'Åland Islands', '150', '154', 0),
(250, 'Paris', 'French', '250', 'euro', 'EUR', 'cent', 'French Republic', 'FR', 'FRA', 'France', '150', '155', 1),
(254, 'Cayenne', 'Guianese', '254', 'euro', 'EUR', 'cent', 'French Guiana', 'GF', 'GUF', 'French Guiana', '019', '005', 0),
(258, 'Papeete', 'Polynesian', '258', 'CFP franc', 'XPF', 'centime', 'French Polynesia', 'PF', 'PYF', 'French Polynesia', '009', '061', 0),
(260, 'Port-aux-Francais', 'of French Southern and Antarctic Lands', '260', 'euro', 'EUR', 'cent', 'French Southern and Antarctic Lands', 'TF', 'ATF', 'French Southern Territories', '', '', 0),
(262, 'Djibouti', 'Djiboutian', '262', 'Djibouti franc', 'DJF', '', 'Republic of Djibouti', 'DJ', 'DJI', 'Djibouti', '002', '014', 0),
(266, 'Libreville', 'Gabonese', '266', 'CFA franc (BEAC)', 'XAF', 'centime', 'Gabonese Republic', 'GA', 'GAB', 'Gabon', '002', '017', 0),
(268, 'Tbilisi', 'Georgian', '268', 'lari', 'GEL', 'tetri (inv.)', 'Georgia', 'GE', 'GEO', 'Georgia', '142', '145', 0),
(270, 'Banjul', 'Gambian', '270', 'dalasi (inv.)', 'GMD', 'butut', 'Republic of the Gambia', 'GM', 'GMB', 'Gambia', '002', '011', 0),
(275, NULL, 'Palisitnean', '275', NULL, NULL, NULL, NULL, 'PS', 'PSE', 'Palestinian Territory, Occupied', '142', '145', 0),
(276, 'Berlin', 'German', '276', 'euro', 'EUR', 'cent', 'Federal Republic of Germany', 'DE', 'DEU', 'Germany', '150', '155', 1),
(288, 'Accra', 'Ghanaian', '288', 'Ghana cedi', 'GHS', 'pesewa', 'Republic of Ghana', 'GH', 'GHA', 'Ghana', '002', '011', 0),
(292, 'Gibraltar', 'Gibraltarian', '292', 'Gibraltar pound', 'GIP', 'penny', 'Gibraltar', 'GI', 'GIB', 'Gibraltar', '150', '039', 0),
(296, 'Tarawa', 'Kiribatian', '296', 'Australian dollar', 'AUD', 'cent', 'Republic of Kiribati', 'KI', 'KIR', 'Kiribati', '009', '057', 0),
(300, 'Athens', 'Greek', '300', 'euro', 'EUR', 'cent', 'Hellenic Republic', 'GR', 'GRC', 'Greece', '150', '039', 1),
(304, 'Nuuk', 'Greenlander', '304', 'Danish krone', 'DKK', 'øre (inv.)', 'Greenland', 'GL', 'GRL', 'Greenland', '019', '021', 0),
(308, 'St George’s', 'Grenadian', '308', 'East Caribbean dollar', 'XCD', 'cent', 'Grenada', 'GD', 'GRD', 'Grenada', '019', '029', 0),
(312, 'Basse Terre', 'Guadeloupean', '312', 'euro', 'EUR ', 'cent', 'Guadeloupe', 'GP', 'GLP', 'Guadeloupe', '019', '029', 0),
(316, 'Agaña (Hagåtña)', 'Guamanian', '316', 'US dollar', 'USD', 'cent', 'Territory of Guam', 'GU', 'GUM', 'Guam', '009', '057', 0),
(320, 'Guatemala City', 'Guatemalan', '320', 'quetzal (pl. quetzales)', 'GTQ', 'centavo', 'Republic of Guatemala', 'GT', 'GTM', 'Guatemala', '019', '013', 0),
(324, 'Conakry', 'Guinean', '324', 'Guinean franc', 'GNF', '', 'Republic of Guinea', 'GN', 'GIN', 'Guinea', '002', '011', 0),
(328, 'Georgetown', 'Guyanese', '328', 'Guyana dollar', 'GYD', 'cent', 'Cooperative Republic of Guyana', 'GY', 'GUY', 'Guyana', '019', '005', 0),
(332, 'Port-au-Prince', 'Haitian', '332', 'gourde', 'HTG', 'centime', 'Republic of Haiti', 'HT', 'HTI', 'Haiti', '019', '029', 0),
(334, 'Territory of Heard Island and McDonald Islands', 'of Territory of Heard Island and McDonald Islands', '334', '', '', '', 'Territory of Heard Island and McDonald Islands', 'HM', 'HMD', 'Heard Island and McDonald Islands', '', '', 0),
(336, 'Vatican City', 'of the Holy See/of the Vatican', '336', 'euro', 'EUR', 'cent', 'the Holy See/ Vatican City State', 'VA', 'VAT', 'Holy See (Vatican City State)', '150', '039', 0),
(340, 'Tegucigalpa', 'Honduran', '340', 'lempira', 'HNL', 'centavo', 'Republic of Honduras', 'HN', 'HND', 'Honduras', '019', '013', 0),
(344, '(HK3)', 'Hong Kong Chinese', '344', 'Hong Kong dollar', 'HKD', 'cent', 'Hong Kong Special Administrative Region of the People’s Republic of China (HK2)', 'HK', 'HKG', 'Hong Kong', '142', '030', 0),
(348, 'Budapest', 'Hungarian', '348', 'forint (inv.)', 'HUF', '(fillér (inv.))', 'Republic of Hungary', 'HU', 'HUN', 'Hungary', '150', '151', 1),
(352, 'Reykjavik', 'Icelander', '352', 'króna (pl. krónur)', 'ISK', '', 'Republic of Iceland', 'IS', 'ISL', 'Iceland', '150', '154', 1),
(356, 'New Delhi', 'Indian', '356', 'Indian rupee', 'INR', 'paisa', 'Republic of India', 'IN', 'IND', 'India', '142', '034', 0),
(360, 'Jakarta', 'Indonesian', '360', 'Indonesian rupiah (inv.)', 'IDR', 'sen (inv.)', 'Republic of Indonesia', 'ID', 'IDN', 'Indonesia', '142', '035', 0),
(364, 'Tehran', 'Iranian', '364', 'Iranian rial', 'IRR', '(dinar) (IR1)', 'Islamic Republic of Iran', 'IR', 'IRN', 'Iran, Islamic Republic of', '142', '034', 0),
(368, 'Baghdad', 'Iraqi', '368', 'Iraqi dinar', 'IQD', 'fils (inv.)', 'Republic of Iraq', 'IQ', 'IRQ', 'Iraq', '142', '145', 0),
(372, 'Dublin', 'Irish', '372', 'euro', 'EUR', 'cent', 'Ireland (IE1)', 'IE', 'IRL', 'Ireland', '150', '154', 1),
(376, '(IL1)', 'Israeli', '376', 'shekel', 'ILS', 'agora', 'State of Israel', 'IL', 'ISR', 'Israel', '142', '145', 0),
(380, 'Rome', 'Italian', '380', 'euro', 'EUR', 'cent', 'Italian Republic', 'IT', 'ITA', 'Italy', '150', '039', 1),
(384, 'Yamoussoukro (CI1)', 'Ivorian', '384', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Republic of Côte d’Ivoire', 'CI', 'CIV', 'Côte d\'Ivoire', '002', '011', 0),
(388, 'Kingston', 'Jamaican', '388', 'Jamaica dollar', 'JMD', 'cent', 'Jamaica', 'JM', 'JAM', 'Jamaica', '019', '029', 0),
(392, 'Tokyo', 'Japanese', '392', 'yen (inv.)', 'JPY', '(sen (inv.)) (JP1)', 'Japan', 'JP', 'JPN', 'Japan', '142', '030', 0),
(398, 'Astana', 'Kazakh', '398', 'tenge (inv.)', 'KZT', 'tiyn', 'Republic of Kazakhstan', 'KZ', 'KAZ', 'Kazakhstan', '142', '143', 0),
(400, 'Amman', 'Jordanian', '400', 'Jordanian dinar', 'JOD', '100 qirsh', 'Hashemite Kingdom of Jordan', 'JO', 'JOR', 'Jordan', '142', '145', 0),
(404, 'Nairobi', 'Kenyan', '404', 'Kenyan shilling', 'KES', 'cent', 'Republic of Kenya', 'KE', 'KEN', 'Kenya', '002', '014', 0),
(408, 'Pyongyang', 'North Korean', '408', 'North Korean won (inv.)', 'KPW', 'chun (inv.)', 'Democratic People’s Republic of Korea', 'KP', 'PRK', 'Korea, Democratic People\'s Republic of', '142', '030', 0),
(410, 'Seoul', 'South Korean', '410', 'South Korean won (inv.)', 'KRW', '(chun (inv.))', 'Republic of Korea', 'KR', 'KOR', 'Korea, Republic of', '142', '030', 0),
(414, 'Kuwait City', 'Kuwaiti', '414', 'Kuwaiti dinar', 'KWD', 'fils (inv.)', 'State of Kuwait', 'KW', 'KWT', 'Kuwait', '142', '145', 0),
(417, 'Bishkek', 'Kyrgyz', '417', 'som', 'KGS', 'tyiyn', 'Kyrgyz Republic', 'KG', 'KGZ', 'Kyrgyzstan', '142', '143', 0),
(418, 'Vientiane', 'Lao', '418', 'kip (inv.)', 'LAK', '(at (inv.))', 'Lao People’s Democratic Republic', 'LA', 'LAO', 'Lao People\'s Democratic Republic', '142', '035', 0),
(422, 'Beirut', 'Lebanese', '422', 'Lebanese pound', 'LBP', '(piastre)', 'Lebanese Republic', 'LB', 'LBN', 'Lebanon', '142', '145', 0),
(426, 'Maseru', 'Basotho', '426', 'loti (pl. maloti)', 'LSL', 'sente', 'Kingdom of Lesotho', 'LS', 'LSO', 'Lesotho', '002', '018', 0),
(428, 'Riga', 'Latvian', '428', 'lats (pl. lati)', 'LVL', 'santims', 'Republic of Latvia', 'LV', 'LVA', 'Latvia', '150', '154', 1),
(430, 'Monrovia', 'Liberian', '430', 'Liberian dollar', 'LRD', 'cent', 'Republic of Liberia', 'LR', 'LBR', 'Liberia', '002', '011', 0),
(434, 'Tripoli', 'Libyan', '434', 'Libyan dinar', 'LYD', 'dirham', 'Socialist People’s Libyan Arab Jamahiriya', 'LY', 'LBY', 'Libya', '002', '015', 0),
(438, 'Vaduz', 'Liechtensteiner', '438', 'Swiss franc', 'CHF', 'centime', 'Principality of Liechtenstein', 'LI', 'LIE', 'Liechtenstein', '150', '155', 1),
(440, 'Vilnius', 'Lithuanian', '440', 'litas (pl. litai)', 'LTL', 'centas', 'Republic of Lithuania', 'LT', 'LTU', 'Lithuania', '150', '154', 1),
(442, 'Luxembourg', 'Luxembourger', '442', 'euro', 'EUR', 'cent', 'Grand Duchy of Luxembourg', 'LU', 'LUX', 'Luxembourg', '150', '155', 1),
(446, 'Macao (MO3)', 'Macanese', '446', 'pataca', 'MOP', 'avo', 'Macao Special Administrative Region of the People’s Republic of China (MO2)', 'MO', 'MAC', 'Macao', '142', '030', 0),
(450, 'Antananarivo', 'Malagasy', '450', 'ariary', 'MGA', 'iraimbilanja (inv.)', 'Republic of Madagascar', 'MG', 'MDG', 'Madagascar', '002', '014', 0),
(454, 'Lilongwe', 'Malawian', '454', 'Malawian kwacha (inv.)', 'MWK', 'tambala (inv.)', 'Republic of Malawi', 'MW', 'MWI', 'Malawi', '002', '014', 0),
(458, 'Kuala Lumpur (MY1)', 'Malaysian', '458', 'ringgit (inv.)', 'MYR', 'sen (inv.)', 'Malaysia', 'MY', 'MYS', 'Malaysia', '142', '035', 0),
(462, 'Malé', 'Maldivian', '462', 'rufiyaa', 'MVR', 'laari (inv.)', 'Republic of Maldives', 'MV', 'MDV', 'Maldives', '142', '034', 0),
(466, 'Bamako', 'Malian', '466', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Republic of Mali', 'ML', 'MLI', 'Mali', '002', '011', 0),
(470, 'Valletta', 'Maltese', '470', 'euro', 'EUR', 'cent', 'Republic of Malta', 'MT', 'MLT', 'Malta', '150', '039', 1),
(474, 'Fort-de-France', 'Martinican', '474', 'euro', 'EUR', 'cent', 'Martinique', 'MQ', 'MTQ', 'Martinique', '019', '029', 0),
(478, 'Nouakchott', 'Mauritanian', '478', 'ouguiya', 'MRO', 'khoum', 'Islamic Republic of Mauritania', 'MR', 'MRT', 'Mauritania', '002', '011', 0),
(480, 'Port Louis', 'Mauritian', '480', 'Mauritian rupee', 'MUR', 'cent', 'Republic of Mauritius', 'MU', 'MUS', 'Mauritius', '002', '014', 0),
(484, 'Mexico City', 'Mexican', '484', 'Mexican peso', 'MXN', 'centavo', 'United Mexican States', 'MX', 'MEX', 'Mexico', '019', '013', 0),
(492, 'Monaco', 'Monegasque', '492', 'euro', 'EUR', 'cent', 'Principality of Monaco', 'MC', 'MCO', 'Monaco', '150', '155', 0),
(496, 'Ulan Bator', 'Mongolian', '496', 'tugrik', 'MNT', 'möngö (inv.)', 'Mongolia', 'MN', 'MNG', 'Mongolia', '142', '030', 0),
(498, 'Chisinau', 'Moldovan', '498', 'Moldovan leu (pl. lei)', 'MDL', 'ban', 'Republic of Moldova', 'MD', 'MDA', 'Moldova, Republic of', '150', '151', 0),
(499, 'Podgorica', 'Montenegrin', '499', 'euro', 'EUR', 'cent', 'Montenegro', 'ME', 'MNE', 'Montenegro', '150', '039', 0),
(500, 'Plymouth (MS2)', 'Montserratian', '500', 'East Caribbean dollar', 'XCD', 'cent', 'Montserrat', 'MS', 'MSR', 'Montserrat', '019', '029', 0),
(504, 'Rabat', 'Moroccan', '504', 'Moroccan dirham', 'MAD', 'centime', 'Kingdom of Morocco', 'MA', 'MAR', 'Morocco', '002', '015', 0),
(508, 'Maputo', 'Mozambican', '508', 'metical', 'MZN', 'centavo', 'Republic of Mozambique', 'MZ', 'MOZ', 'Mozambique', '002', '014', 0),
(512, 'Muscat', 'Omani', '512', 'Omani rial', 'OMR', 'baiza', 'Sultanate of Oman', 'OM', 'OMN', 'Oman', '142', '145', 0),
(516, 'Windhoek', 'Namibian', '516', 'Namibian dollar', 'NAD', 'cent', 'Republic of Namibia', 'NA', 'NAM', 'Namibia', '002', '018', 0),
(520, 'Yaren', 'Nauruan', '520', 'Australian dollar', 'AUD', 'cent', 'Republic of Nauru', 'NR', 'NRU', 'Nauru', '009', '057', 0),
(524, 'Kathmandu', 'Nepalese', '524', 'Nepalese rupee', 'NPR', 'paisa (inv.)', 'Nepal', 'NP', 'NPL', 'Nepal', '142', '034', 0),
(528, 'Amsterdam (NL2)', 'Dutch', '528', 'euro', 'EUR', 'cent', 'Kingdom of the Netherlands', 'NL', 'NLD', 'Netherlands', '150', '155', 1),
(531, 'Willemstad', 'Curaçaoan', '531', 'Netherlands Antillean guilder (CW1)', 'ANG', 'cent', 'Curaçao', 'CW', 'CUW', 'Curaçao', '019', '029', 0),
(533, 'Oranjestad', 'Aruban', '533', 'Aruban guilder', 'AWG', 'cent', 'Aruba', 'AW', 'ABW', 'Aruba', '019', '029', 0),
(534, 'Philipsburg', 'Sint Maartener', '534', 'Netherlands Antillean guilder (SX1)', 'ANG', 'cent', 'Sint Maarten', 'SX', 'SXM', 'Sint Maarten (Dutch part)', '019', '029', 0),
(535, NULL, 'of Bonaire, Sint Eustatius and Saba', '535', 'US dollar', 'USD', 'cent', NULL, 'BQ', 'BES', 'Bonaire, Sint Eustatius and Saba', '019', '029', 0),
(540, 'Nouméa', 'New Caledonian', '540', 'CFP franc', 'XPF', 'centime', 'New Caledonia', 'NC', 'NCL', 'New Caledonia', '009', '054', 0),
(548, 'Port Vila', 'Vanuatuan', '548', 'vatu (inv.)', 'VUV', '', 'Republic of Vanuatu', 'VU', 'VUT', 'Vanuatu', '009', '054', 0),
(554, 'Wellington', 'New Zealander', '554', 'New Zealand dollar', 'NZD', 'cent', 'New Zealand', 'NZ', 'NZL', 'New Zealand', '009', '053', 0),
(558, 'Managua', 'Nicaraguan', '558', 'córdoba oro', 'NIO', 'centavo', 'Republic of Nicaragua', 'NI', 'NIC', 'Nicaragua', '019', '013', 0),
(562, 'Niamey', 'Nigerien', '562', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Republic of Niger', 'NE', 'NER', 'Niger', '002', '011', 0),
(566, 'Abuja', 'Nigerian', '566', 'naira (inv.)', 'NGN', 'kobo (inv.)', 'Federal Republic of Nigeria', 'NG', 'NGA', 'Nigeria', '002', '011', 0),
(570, 'Alofi', 'Niuean', '570', 'New Zealand dollar', 'NZD', 'cent', 'Niue', 'NU', 'NIU', 'Niue', '009', '061', 0),
(574, 'Kingston', 'Norfolk Islander', '574', 'Australian dollar', 'AUD', 'cent', 'Territory of Norfolk Island', 'NF', 'NFK', 'Norfolk Island', '009', '053', 0),
(578, 'Oslo', 'Norwegian', '578', 'Norwegian krone (pl. kroner)', 'NOK', 'øre (inv.)', 'Kingdom of Norway', 'NO', 'NOR', 'Norway', '150', '154', 1),
(580, 'Saipan', 'Northern Mariana Islander', '580', 'US dollar', 'USD', 'cent', 'Commonwealth of the Northern Mariana Islands', 'MP', 'MNP', 'Northern Mariana Islands', '009', '057', 0),
(581, 'United States Minor Outlying Islands', 'of United States Minor Outlying Islands', '581', 'US dollar', 'USD', 'cent', 'United States Minor Outlying Islands', 'UM', 'UMI', 'United States Minor Outlying Islands', '', '', 0),
(583, 'Palikir', 'Micronesian', '583', 'US dollar', 'USD', 'cent', 'Federated States of Micronesia', 'FM', 'FSM', 'Micronesia, Federated States of', '009', '057', 0),
(584, 'Majuro', 'Marshallese', '584', 'US dollar', 'USD', 'cent', 'Republic of the Marshall Islands', 'MH', 'MHL', 'Marshall Islands', '009', '057', 0),
(585, 'Melekeok', 'Palauan', '585', 'US dollar', 'USD', 'cent', 'Republic of Palau', 'PW', 'PLW', 'Palau', '009', '057', 0),
(586, 'Islamabad', 'Pakistani', '586', 'Pakistani rupee', 'PKR', 'paisa', 'Islamic Republic of Pakistan', 'PK', 'PAK', 'Pakistan', '142', '034', 0),
(591, 'Panama City', 'Panamanian', '591', 'balboa', 'PAB', 'centésimo', 'Republic of Panama', 'PA', 'PAN', 'Panama', '019', '013', 0),
(598, 'Port Moresby', 'Papua New Guinean', '598', 'kina (inv.)', 'PGK', 'toea (inv.)', 'Independent State of Papua New Guinea', 'PG', 'PNG', 'Papua New Guinea', '009', '054', 0),
(600, 'Asunción', 'Paraguayan', '600', 'guaraní', 'PYG', 'céntimo', 'Republic of Paraguay', 'PY', 'PRY', 'Paraguay', '019', '005', 0),
(604, 'Lima', 'Peruvian', '604', 'new sol', 'PEN', 'céntimo', 'Republic of Peru', 'PE', 'PER', 'Peru', '019', '005', 0),
(608, 'Manila', 'Filipino', '608', 'Philippine peso', 'PHP', 'centavo', 'Republic of the Philippines', 'PH', 'PHL', 'Philippines', '142', '035', 0),
(612, 'Adamstown', 'Pitcairner', '612', 'New Zealand dollar', 'NZD', 'cent', 'Pitcairn Islands', 'PN', 'PCN', 'Pitcairn', '009', '061', 0),
(616, 'Warsaw', 'Polish', '616', 'zloty', 'PLN', 'grosz (pl. groszy)', 'Republic of Poland', 'PL', 'POL', 'Poland', '150', '151', 1),
(620, 'Lisbon', 'Portuguese', '620', 'euro', 'EUR', 'cent', 'Portuguese Republic', 'PT', 'PRT', 'Portugal', '150', '039', 1),
(624, 'Bissau', 'Guinea-Bissau national', '624', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Republic of Guinea-Bissau', 'GW', 'GNB', 'Guinea-Bissau', '002', '011', 0),
(626, 'Dili', 'East Timorese', '626', 'US dollar', 'USD', 'cent', 'Democratic Republic of East Timor', 'TL', 'TLS', 'Timor-Leste', '142', '035', 0),
(630, 'San Juan', 'Puerto Rican', '630', 'US dollar', 'USD', 'cent', 'Commonwealth of Puerto Rico', 'PR', 'PRI', 'Puerto Rico', '019', '029', 0),
(634, 'Doha', 'Qatari', '634', 'Qatari riyal', 'QAR', 'dirham', 'State of Qatar', 'QA', 'QAT', 'Qatar', '142', '145', 0),
(638, 'Saint-Denis', 'Reunionese', '638', 'euro', 'EUR', 'cent', 'Réunion', 'RE', 'REU', 'Réunion', '002', '014', 0),
(642, 'Bucharest', 'Romanian', '642', 'Romanian leu (pl. lei)', 'RON', 'ban (pl. bani)', 'Romania', 'RO', 'ROU', 'Romania', '150', '151', 1),
(643, 'Moscow', 'Russian', '643', 'Russian rouble', 'RUB', 'kopek', 'Russian Federation', 'RU', 'RUS', 'Russian Federation', '150', '151', 0),
(646, 'Kigali', 'Rwandan; Rwandese', '646', 'Rwandese franc', 'RWF', 'centime', 'Republic of Rwanda', 'RW', 'RWA', 'Rwanda', '002', '014', 0),
(652, 'Gustavia', 'of Saint Barthélemy', '652', 'euro', 'EUR', 'cent', 'Collectivity of Saint Barthélemy', 'BL', 'BLM', 'Saint Barthélemy', '019', '029', 0),
(654, 'Jamestown', 'Saint Helenian', '654', 'Saint Helena pound', 'SHP', 'penny', 'Saint Helena, Ascension and Tristan da Cunha', 'SH', 'SHN', 'Saint Helena, Ascension and Tristan da Cunha', '002', '011', 0),
(659, 'Basseterre', 'Kittsian; Nevisian', '659', 'East Caribbean dollar', 'XCD', 'cent', 'Federation of Saint Kitts and Nevis', 'KN', 'KNA', 'Saint Kitts and Nevis', '019', '029', 0),
(660, 'The Valley', 'Anguillan', '660', 'East Caribbean dollar', 'XCD', 'cent', 'Anguilla', 'AI', 'AIA', 'Anguilla', '019', '029', 0),
(662, 'Castries', 'Saint Lucian', '662', 'East Caribbean dollar', 'XCD', 'cent', 'Saint Lucia', 'LC', 'LCA', 'Saint Lucia', '019', '029', 0),
(663, 'Marigot', 'of Saint Martin', '663', 'euro', 'EUR', 'cent', 'Collectivity of Saint Martin', 'MF', 'MAF', 'Saint Martin (French part)', '019', '029', 0),
(666, 'Saint-Pierre', 'St-Pierrais; Miquelonnais', '666', 'euro', 'EUR', 'cent', 'Territorial Collectivity of Saint Pierre and Miquelon', 'PM', 'SPM', 'Saint Pierre and Miquelon', '019', '021', 0),
(670, 'Kingstown', 'Vincentian', '670', 'East Caribbean dollar', 'XCD', 'cent', 'Saint Vincent and the Grenadines', 'VC', 'VCT', 'Saint Vincent and the Grenadines', '019', '029', 0),
(674, 'San Marino', 'San Marinese', '674', 'euro', 'EUR ', 'cent', 'Republic of San Marino', 'SM', 'SMR', 'San Marino', '150', '039', 0),
(678, 'São Tomé', 'São Toméan', '678', 'dobra', 'STD', 'centavo', 'Democratic Republic of São Tomé and Príncipe', 'ST', 'STP', 'Sao Tome and Principe', '002', '017', 0),
(682, 'Riyadh', 'Saudi Arabian', '682', 'riyal', 'SAR', 'halala', 'Kingdom of Saudi Arabia', 'SA', 'SAU', 'Saudi Arabia', '142', '145', 0),
(686, 'Dakar', 'Senegalese', '686', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Republic of Senegal', 'SN', 'SEN', 'Senegal', '002', '011', 0),
(688, 'Belgrade', 'Serb', '688', 'Serbian dinar', 'RSD', 'para (inv.)', 'Republic of Serbia', 'RS', 'SRB', 'Serbia', '150', '039', 0),
(690, 'Victoria', 'Seychellois', '690', 'Seychelles rupee', 'SCR', 'cent', 'Republic of Seychelles', 'SC', 'SYC', 'Seychelles', '002', '014', 0),
(694, 'Freetown', 'Sierra Leonean', '694', 'leone', 'SLL', 'cent', 'Republic of Sierra Leone', 'SL', 'SLE', 'Sierra Leone', '002', '011', 0),
(702, 'Singapore', 'Singaporean', '702', 'Singapore dollar', 'SGD', 'cent', 'Republic of Singapore', 'SG', 'SGP', 'Singapore', '142', '035', 0),
(703, 'Bratislava', 'Slovak', '703', 'euro', 'EUR', 'cent', 'Slovak Republic', 'SK', 'SVK', 'Slovakia', '150', '151', 1),
(704, 'Hanoi', 'Vietnamese', '704', 'dong', 'VND', '(10 hào', 'Socialist Republic of Vietnam', 'VN', 'VNM', 'Viet Nam', '142', '035', 0),
(705, 'Ljubljana', 'Slovene', '705', 'euro', 'EUR', 'cent', 'Republic of Slovenia', 'SI', 'SVN', 'Slovenia', '150', '039', 1),
(706, 'Mogadishu', 'Somali', '706', 'Somali shilling', 'SOS', 'cent', 'Somali Republic', 'SO', 'SOM', 'Somalia', '002', '014', 0),
(710, 'Pretoria (ZA1)', 'South African', '710', 'rand', 'ZAR', 'cent', 'Republic of South Africa', 'ZA', 'ZAF', 'South Africa', '002', '018', 0),
(716, 'Harare', 'Zimbabwean', '716', 'Zimbabwe dollar (ZW1)', 'ZWL', 'cent', 'Republic of Zimbabwe', 'ZW', 'ZWE', 'Zimbabwe', '002', '014', 0),
(724, 'Madrid', 'Spaniard', '724', 'euro', 'EUR', 'cent', 'Kingdom of Spain', 'ES', 'ESP', 'Spain', '150', '039', 1),
(728, 'Juba', 'South Sudanese', '728', 'South Sudanese pound', 'SSP', 'piaster', 'Republic of South Sudan', 'SS', 'SSD', 'South Sudan', '002', '015', 0),
(729, 'Khartoum', 'Sudanese', '729', 'Sudanese pound', 'SDG', 'piastre', 'Republic of the Sudan', 'SD', 'SDN', 'Sudan', '002', '015', 0),
(732, 'Al aaiun', 'Sahrawi', '732', 'Moroccan dirham', 'MAD', 'centime', 'Western Sahara', 'EH', 'ESH', 'Western Sahara', '002', '015', 0),
(740, 'Paramaribo', 'Surinamese', '740', 'Surinamese dollar', 'SRD', 'cent', 'Republic of Suriname', 'SR', 'SUR', 'Suriname', '019', '005', 0),
(744, 'Longyearbyen', 'of Svalbard', '744', 'Norwegian krone (pl. kroner)', 'NOK', 'øre (inv.)', 'Svalbard and Jan Mayen', 'SJ', 'SJM', 'Svalbard and Jan Mayen', '150', '154', 0),
(748, 'Mbabane', 'Swazi', '748', 'lilangeni', 'SZL', 'cent', 'Kingdom of Swaziland', 'SZ', 'SWZ', 'Swaziland', '002', '018', 0),
(752, 'Stockholm', 'Swedish', '752', 'krona (pl. kronor)', 'SEK', 'öre (inv.)', 'Kingdom of Sweden', 'SE', 'SWE', 'Sweden', '150', '154', 1),
(756, 'Berne', 'Swiss', '756', 'Swiss franc', 'CHF', 'centime', 'Swiss Confederation', 'CH', 'CHE', 'Switzerland', '150', '155', 1),
(760, 'Damascus', 'Syrian', '760', 'Syrian pound', 'SYP', 'piastre', 'Syrian Arab Republic', 'SY', 'SYR', 'Syrian Arab Republic', '142', '145', 0),
(762, 'Dushanbe', 'Tajik', '762', 'somoni', 'TJS', 'diram', 'Republic of Tajikistan', 'TJ', 'TJK', 'Tajikistan', '142', '143', 0),
(764, 'Bangkok', 'Thai', '764', 'baht (inv.)', 'THB', 'satang (inv.)', 'Kingdom of Thailand', 'TH', 'THA', 'Thailand', '142', '035', 0),
(768, 'Lomé', 'Togolese', '768', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Togolese Republic', 'TG', 'TGO', 'Togo', '002', '011', 0),
(772, '(TK2)', 'Tokelauan', '772', 'New Zealand dollar', 'NZD', 'cent', 'Tokelau', 'TK', 'TKL', 'Tokelau', '009', '061', 0),
(776, 'Nuku’alofa', 'Tongan', '776', 'pa’anga (inv.)', 'TOP', 'seniti (inv.)', 'Kingdom of Tonga', 'TO', 'TON', 'Tonga', '009', '061', 0),
(780, 'Port of Spain', 'Trinidadian; Tobagonian', '780', 'Trinidad and Tobago dollar', 'TTD', 'cent', 'Republic of Trinidad and Tobago', 'TT', 'TTO', 'Trinidad and Tobago', '019', '029', 0),
(784, 'Abu Dhabi', 'Emirian', '784', 'UAE dirham', 'AED', 'fils (inv.)', 'United Arab Emirates', 'AE', 'ARE', 'United Arab Emirates', '142', '145', 0),
(788, 'Tunis', 'Tunisian', '788', 'Tunisian dinar', 'TND', 'millime', 'Republic of Tunisia', 'TN', 'TUN', 'Tunisia', '002', '015', 0),
(792, 'Ankara', 'Turk', '792', 'Turkish lira (inv.)', 'TRY', 'kurus (inv.)', 'Republic of Turkey', 'TR', 'TUR', 'Turkey', '142', '145', 0),
(795, 'Ashgabat', 'Turkmen', '795', 'Turkmen manat (inv.)', 'TMT', 'tenge (inv.)', 'Turkmenistan', 'TM', 'TKM', 'Turkmenistan', '142', '143', 0),
(796, 'Cockburn Town', 'Turks and Caicos Islander', '796', 'US dollar', 'USD', 'cent', 'Turks and Caicos Islands', 'TC', 'TCA', 'Turks and Caicos Islands', '019', '029', 0),
(798, 'Funafuti', 'Tuvaluan', '798', 'Australian dollar', 'AUD', 'cent', 'Tuvalu', 'TV', 'TUV', 'Tuvalu', '009', '061', 0),
(800, 'Kampala', 'Ugandan', '800', 'Uganda shilling', 'UGX', 'cent', 'Republic of Uganda', 'UG', 'UGA', 'Uganda', '002', '014', 0),
(804, 'Kiev', 'Ukrainian', '804', 'hryvnia', 'UAH', 'kopiyka', 'Ukraine', 'UA', 'UKR', 'Ukraine', '150', '151', 0),
(807, 'Skopje', 'of the former Yugoslav Republic of Macedonia', '807', 'denar (pl. denars)', 'MKD', 'deni (inv.)', 'the former Yugoslav Republic of Macedonia', 'MK', 'MKD', 'Macedonia, the former Yugoslav Republic of', '150', '039', 0),
(818, 'Cairo', 'Egyptian', '818', 'Egyptian pound', 'EGP', 'piastre', 'Arab Republic of Egypt', 'EG', 'EGY', 'Egypt', '002', '015', 0),
(826, 'London', 'British', '826', 'pound sterling', 'GBP', 'penny (pl. pence)', 'United Kingdom of Great Britain and Northern Ireland', 'GB', 'GBR', 'United Kingdom', '150', '154', 1),
(831, 'St Peter Port', 'of Guernsey', '831', 'Guernsey pound (GG2)', 'GGP (GG2)', 'penny (pl. pence)', 'Bailiwick of Guernsey', 'GG', 'GGY', 'Guernsey', '150', '154', 0),
(832, 'St Helier', 'of Jersey', '832', 'Jersey pound (JE2)', 'JEP (JE2)', 'penny (pl. pence)', 'Bailiwick of Jersey', 'JE', 'JEY', 'Jersey', '150', '154', 0),
(833, 'Douglas', 'Manxman; Manxwoman', '833', 'Manx pound (IM2)', 'IMP (IM2)', 'penny (pl. pence)', 'Isle of Man', 'IM', 'IMN', 'Isle of Man', '150', '154', 0),
(834, 'Dodoma (TZ1)', 'Tanzanian', '834', 'Tanzanian shilling', 'TZS', 'cent', 'United Republic of Tanzania', 'TZ', 'TZA', 'Tanzania, United Republic of', '002', '014', 0),
(840, 'Washington DC', 'American', '840', 'US dollar', 'USD', 'cent', 'United States of America', 'US', 'USA', 'United States', '019', '021', 0),
(850, 'Charlotte Amalie', 'US Virgin Islander', '850', 'US dollar', 'USD', 'cent', 'United States Virgin Islands', 'VI', 'VIR', 'Virgin Islands, U.S.', '019', '029', 0),
(854, 'Ouagadougou', 'Burkinabe', '854', 'CFA franc (BCEAO)', 'XOF', 'centime', 'Burkina Faso', 'BF', 'BFA', 'Burkina Faso', '002', '011', 0),
(858, 'Montevideo', 'Uruguayan', '858', 'Uruguayan peso', 'UYU', 'centésimo', 'Eastern Republic of Uruguay', 'UY', 'URY', 'Uruguay', '019', '005', 0),
(860, 'Tashkent', 'Uzbek', '860', 'sum (inv.)', 'UZS', 'tiyin (inv.)', 'Republic of Uzbekistan', 'UZ', 'UZB', 'Uzbekistan', '142', '143', 0),
(862, 'Caracas', 'Venezuelan', '862', 'bolívar fuerte (pl. bolívares fuertes)', 'VEF', 'céntimo', 'Bolivarian Republic of Venezuela', 'VE', 'VEN', 'Venezuela, Bolivarian Republic of', '019', '005', 0),
(876, 'Mata-Utu', 'Wallisian; Futunan; Wallis and Futuna Islander', '876', 'CFP franc', 'XPF', 'centime', 'Wallis and Futuna', 'WF', 'WLF', 'Wallis and Futuna', '009', '061', 0),
(882, 'Apia', 'Samoan', '882', 'tala (inv.)', 'WST', 'sene (inv.)', 'Independent State of Samoa', 'WS', 'WSM', 'Samoa', '009', '061', 0),
(887, 'San’a', 'Yemenite', '887', 'Yemeni rial', 'YER', 'fils (inv.)', 'Republic of Yemen', 'YE', 'YEM', 'Yemen', '142', '145', 0),
(894, 'Lusaka', 'Zambian', '894', 'Zambian kwacha (inv.)', 'ZMW', 'ngwee (inv.)', 'Republic of Zambia', 'ZM', 'ZMB', 'Zambia', '002', '014', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `credits`
--

CREATE TABLE `credits` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `amount` decimal(13,2) NOT NULL,
  `balance` decimal(13,2) NOT NULL,
  `credit_date` date DEFAULT NULL,
  `credit_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8_unicode_ci NOT NULL,
  `public_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `precision` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thousand_separator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `decimal_separator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `precision`, `thousand_separator`, `decimal_separator`, `code`) VALUES
(1, 'US Dollar', '$', '2', ',', '.', 'USD'),
(2, 'Pound Sterling', '£', '2', ',', '.', 'GBP'),
(3, 'Euro', '€', '2', '.', ',', 'EUR'),
(4, 'Rand', 'R', '2', ',', '.', 'ZAR'),
(5, 'Danish Krone', 'kr ', '2', ',', '.', 'DKK'),
(6, 'Israeli Shekel', 'NIS ', '2', ',', '.', 'ILS'),
(7, 'Swedish Krona', 'kr ', '2', ',', '.', 'SEK'),
(8, 'Kenyan Shilling', 'KSh ', '2', ',', '.', 'KES'),
(9, 'Canadian Dollar', 'C$', '2', ',', '.', 'CAD'),
(10, 'Philippine Peso', 'P ', '2', ',', '.', 'PHP'),
(11, 'Indian Rupee', 'Rs. ', '2', ',', '.', 'INR'),
(12, 'Australian Dollar', '$', '2', ',', '.', 'AUD'),
(13, 'Singapore Dollar', 'SGD ', '2', ',', '.', 'SGD'),
(14, 'Norske Kroner', 'kr ', '2', ',', '.', 'NOK'),
(15, 'New Zealand Dollar', '$', '2', ',', '.', 'NZD'),
(16, 'Vietnamese Dong', 'VND ', '0', ',', '.', 'VND'),
(17, 'Swiss Franc', 'CHF ', '2', '\'', '.', 'CHF');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `datetime_formats`
--

CREATE TABLE `datetime_formats` (
  `id` int(10) UNSIGNED NOT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `datetime_formats`
--

INSERT INTO `datetime_formats` (`id`, `format`, `label`) VALUES
(146, 'd-F-Y g:i a', '10-Maart-2013'),
(145, 'd/F/Y g:i a', '10/Maart/2013'),
(144, 'd-M-Yk g:i a', '10-Mrt-2013'),
(143, 'd/M/Y g:i a', '10/Maart/2013'),
(142, 'd-m-Y H:i:s', '10-03-2013 6:15'),
(141, 'j M, Y H:i:s', '10 Mrt, 2013 6:15'),
(140, 'd-M-Y H:i:s', '10-Mrt-2013'),
(147, 'M j, Y g:i a', '10 Mrt, 2013 6:15'),
(148, 'F j, Y g:i a', '10 Maart, 2013 6:15'),
(149, 'D M jS, Y g:ia', 'Ma 10 Maart, 2013 6:15');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `date_formats`
--

CREATE TABLE `date_formats` (
  `id` int(10) UNSIGNED NOT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picker_format` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `date_formats`
--

INSERT INTO `date_formats` (`id`, `format`, `picker_format`, `label`) VALUES
(224, 'd/F/Y', 'dd/MM/yyyy', '10/Maart/2013'),
(223, 'd-M-Y', 'dd-M-yyyy', '10-Mrt-2013'),
(222, 'd/M/Y', 'dd/M/yyyy', '10/Mrt/2013'),
(221, 'd-m-Y', 'dd-mm-yyyy', '10-03-2013'),
(220, 'l j F Y', 'd MM yyyy', 'maandag 10 maart 2013'),
(219, 'd-F-Y', 'dd-MM-yyyy', '10-Maart-2013'),
(225, 'd-F-Y', 'dd-MM-yyyy', '10-Maart-2013'),
(226, 'M j, Y', 'M d, yyyy', '10 Mrt, 2013'),
(227, 'F j, Y', 'MM d, yyyy', '10 Maart, 2013'),
(228, 'D M j, Y', 'D MM d, yyyy', 'Ma 10 Maart, 2013');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `account_id` int(10) UNSIGNED DEFAULT NULL,
  `client_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `document_date` date DEFAULT NULL,
  `public_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `documents`
--

INSERT INTO `documents` (`id`, `invoice_id`, `account_id`, `client_id`, `user_id`, `category_id`, `name`, `description`, `path`, `file_name`, `created_at`, `updated_at`, `deleted_at`, `is_deleted`, `document_date`, `public_id`) VALUES
(1, NULL, 1, NULL, 1, 4, 'Uitreksel KVK Kolkmedia', 'Uitreksel KVK Kolkmedia', '/home/offlex1q/offlex_base/app/storage/uploads/documents/2015/', 'Uitreksel KVK Kolkmedia_09-09-2015-13_47_32.pdf', '2015-09-08 10:57:28', '2015-09-09 11:47:32', NULL, 0, '2015-09-08', 1),
(2, NULL, 1, NULL, 1, 4, 'VAR-2015', 'VAR verklaring t/m 31-12-2015', '/home/offlex1q/offlex_base/app/storage/uploads/documents/2015/', 'VAR-2015_09-09-2015-13_57_47.pdf', '2015-09-09 11:57:47', '2015-09-09 11:57:47', NULL, 0, '2015-09-09', 2),
(3, NULL, 1, NULL, 1, 4, 'NN-VAGC', 'NN-Verklaring van gedrag', '/home/offlex1q/offlex_base/app/storage/uploads/documents/2015/', 'NN-VAGC_09-09-2015-13_59_35.pdf', '2015-09-09 11:59:35', '2015-09-09 11:59:35', NULL, 0, '2015-09-09', 3),
(4, NULL, 1, NULL, 1, 4, 'NN-Screening', 'NN-Screening', '/home/offlex1q/offlex_base/app/storage/uploads/documents/2015/', 'NN-Screening_09-09-2015-14_24_46.pdf', '2015-09-09 12:24:46', '2015-09-09 12:24:46', NULL, 0, '2015-09-09', 4),
(5, NULL, 1, NULL, 1, 4, 'NN-Fastflex', 'Fastflex', '/home/offlex1q/offlex_base/app/storage/uploads/documents/2015/', 'NN-Fastflex_09-09-2015-14_25_06.pdf', '2015-09-09 12:25:06', '2015-09-09 12:25:06', NULL, 0, '2015-09-09', 5),
(6, NULL, 1, NULL, 1, 4, 'Leasecontract', 'Leasecontract', '/home/offlex1q/offlex_base/app/storage/uploads/documents/2015/', 'Leasecontract_09-09-2015-14_26_37.pdf', '2015-09-09 12:26:37', '2015-09-09 12:26:37', NULL, 0, '2015-09-09', 6);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `account_id` int(10) UNSIGNED DEFAULT NULL,
  `client_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(13,2) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `expense_date` date DEFAULT NULL,
  `transaction_reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `expenses`
--

INSERT INTO `expenses` (`id`, `invoice_id`, `account_id`, `client_id`, `user_id`, `product_id`, `category_id`, `name`, `description`, `amount`, `path`, `file_name`, `created_at`, `updated_at`, `deleted_at`, `is_deleted`, `expense_date`, `transaction_reference`, `public_id`) VALUES
(1, NULL, 1, 4, 1, 21, 3, 'Afbetaling laptop', 'restbetaling afkoop MAC', 756.00, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2015/Ontwerp', 'Afbetaling laptop_09-09-2015-13_46_32.pdf', '2015-08-30 08:31:02', '2015-09-16 09:05:21', NULL, 0, '2015-08-30', NULL, 1),
(2, NULL, 1, 1, 1, 21, 5, 'Aanbetaling lease', 'Aanbetaling lease auto (contract)', 4840.00, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2015/', 'Aanbetaling lease_11-09-2015-09_51_32.jpg', '2015-09-11 07:51:32', '2015-11-20 12:35:57', NULL, 0, '2015-09-11', NULL, 2),
(3, NULL, 1, 1, 1, 21, 5, 'Lease maand oktober', 'Lease maand oktober', 653.80, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2015/Kolkmedia', 'Lease maand oktober_30-10-2015-13_23_53.pdf', '2015-10-26 17:50:24', '2015-10-30 12:23:53', NULL, 0, '2015-10-01', NULL, 3),
(4, NULL, 1, 1, 1, 21, 5, 'Lease maand september', 'Lease maand september', 653.80, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2015/Kolkmedia', 'Lease maand september_30-10-2015-08_27_20.pdf', '2015-10-26 17:54:06', '2015-10-30 07:27:20', NULL, 0, '2015-09-01', NULL, 4),
(5, NULL, 1, 1, 1, 21, 1, 'Parkeren', 'Parkeren Rotterdam NN', 23.40, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2015/Kolkmedia', 'Parkeren_31-10-2015-09_04_10.jpeg', '2015-10-31 08:04:10', '2015-11-20 12:39:38', NULL, 0, '2015-10-13', NULL, 5),
(6, NULL, 1, 1, 1, 17, 4, 'Factuur A3 aangifte kw3', '151101', 181.50, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2015/A3 administratie', 'test_20-11-2015-13_37_36.jpeg', '2015-11-20 12:36:17', '2015-11-20 16:16:35', NULL, 0, '2015-11-09', NULL, 6),
(7, NULL, 1, 1, 1, 21, 3, 'Raspberry pi', 'Aanschaf raspberry pi met benodigdheden', 76.35, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2015/Kolkmedia', '2603418_28-11-2015-11_38_34.pdf', '2015-11-28 10:38:34', '2015-12-03 06:54:35', NULL, 0, '2015-11-28', NULL, 7),
(8, NULL, 1, 1, 1, 21, 3, 'KPN Glasvezel - December', 'KPN Glasvezel - December', 72.56, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2015/Kolkmedia', 'KPN Glasvezel - December_03-12-2015-07_53_28.pdf', '2015-12-03 06:53:28', '2015-12-03 06:54:57', NULL, 0, '2015-12-01', NULL, 8),
(9, NULL, 1, 1, 1, 21, 3, 'Raspberry pi 2', 'Aanschaf rapsberry pi (ontwikkeling apps)', 192.35, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2015/Kolkmedia', 'Raspberry pi 2_08-12-2015-08_10_37.pdf', '2015-12-08 07:10:37', '2015-12-08 07:10:37', NULL, 0, '2015-12-08', NULL, 9),
(10, NULL, 1, 1, 1, 21, 3, 'Philips HUE Bridge 2.0', 'Philips HUE Bridge 2.0', 54.71, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2015/Kolkmedia', 'Philips HUE Bridge 2.0 _11-12-2015-09_09_08.pdf', '2015-12-11 08:09:08', '2015-12-11 08:09:08', NULL, 0, '2015-12-11', NULL, 10),
(11, NULL, 1, 1, 1, 21, 5, 'Lease maand november', 'Lease maand november', 653.80, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2015/Kolkmedia', 'Lease maand november_18-12-2015-10_33_44.pdf', '2015-12-18 09:33:44', '2015-12-18 09:33:44', NULL, 0, '2015-11-01', NULL, 11),
(12, NULL, 1, 1, 1, 21, 5, 'Lease maand december', 'Lease maand december', 653.80, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2015/Kolkmedia', 'Lease maand december_18-12-2015-10_34_54.pdf', '2015-12-18 09:34:54', '2015-12-18 09:34:54', NULL, 0, '2015-12-01', NULL, 12),
(13, NULL, 1, 1, 1, 21, 3, 'Netwerk Hub', 'Netwerk Hub', 17.50, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2016/Kolkmedia', 'Netwerk Hub_05-01-2016-08_35_38.pdf', '2016-01-05 07:35:38', '2016-01-05 07:35:38', NULL, 0, '2015-12-22', NULL, 13),
(14, NULL, 1, 1, 1, 21, 5, 'Brandstofkosten', 'Brandstofkosten', 49.48, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2016/Kolkmedia', 'Brandstofkosten_12-01-2016-10_48_28.pdf', '2016-01-12 09:48:28', '2016-01-12 09:48:28', NULL, 0, '2016-01-12', NULL, 14),
(15, NULL, 1, 1, 1, 21, 4, 'Hosting kolkmedia.com', 'Hosting kolkmedia.com 3 maanden ivm opzegging', 37.27, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2016/Kolkmedia', 'Hosting kolkmedia.com_08-03-2016-16_12_15.pdf', '2016-03-08 15:11:52', '2016-03-08 15:12:15', NULL, 0, '2016-03-08', NULL, 15),
(16, NULL, 1, 1, 1, 21, 5, 'Lease april 2016', 'Lease april 2016', 645.58, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2016/Kolkmedia', 'Lease maart 2016_16-03-2016-12_17_28.pdf', '2016-03-16 11:17:28', '2016-04-15 11:03:33', '2016-04-15 11:03:33', 1, '2016-04-01', NULL, 16),
(17, NULL, 1, 1, 1, 21, 3, 'Tado slimme thermostaat', 'Digitale thermostaat', 224.00, NULL, NULL, '2016-03-26 08:39:20', '2016-03-26 08:39:20', NULL, 0, '2016-03-11', NULL, 17),
(18, NULL, 1, 1, 1, 21, 3, 'Apple Extreme Airport (accesspoint - wifi)', 'Apple Extreme Airport (accesspoint - wifi)', 194.99, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2016/Kolkmedia', 'Apple Extreme Airport (accesspoint - wifi)_26-03-2016-09_40_45.pdf', '2016-03-26 08:40:45', '2016-03-26 08:41:05', NULL, 0, '2016-03-25', NULL, 18),
(19, NULL, 1, 1, 1, 21, 5, 'Lease maand januari 2016', 'Lease maand januari 2016', 648.56, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2016/Kolkmedia', 'Lease maand januari 2016_15-04-2016-12_15_04.pdf', '2016-04-15 10:15:05', '2016-04-15 10:15:05', NULL, 0, '2016-01-01', NULL, 19),
(20, NULL, 1, 1, 1, 21, 4, 'Lease maand februari 2016', 'Lease maand februari 2016', 641.30, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2016/Kolkmedia', 'Lease maand februari 2016_15-04-2016-12_22_51.pdf', '2016-04-15 10:22:51', '2016-04-15 10:22:51', NULL, 0, '2016-02-01', NULL, 20),
(21, NULL, 1, 1, 1, 21, 4, 'Lease maand maart 2016', 'Lease maand maart 2016', 644.76, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2016/Kolkmedia', 'Lease maand maart 2016_15-04-2016-12_24_48.pdf', '2016-04-15 10:24:48', '2016-04-15 10:24:48', NULL, 0, '2016-03-01', NULL, 21),
(22, NULL, 1, 1, 1, 21, 5, 'Lease maand april 2016', 'Lease maand april 2016', 645.58, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2016/Kolkmedia', 'Lease maand april 2016_15-04-2016-12_26_08.pdf', '2016-04-15 10:26:08', '2016-04-15 10:26:08', NULL, 0, '2016-04-01', NULL, 22),
(23, NULL, 1, 1, 1, 21, 3, 'Externe harde schijf', 'Externe harde schijf', 64.99, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2016/Kolkmedia', 'Externe harde schijf_15-04-2016-12_49_20.jpg', '2016-04-15 10:49:20', '2016-04-15 10:49:20', NULL, 0, '2016-02-20', NULL, 23),
(24, NULL, 1, 1, 1, 17, 4, 'Factuur A3 belasting aangifte 2015', 'Factuur A3 belasting aangifte 2015', 108.90, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2016/A3 administratie', 'Factuur A3 belasting aangifte 2015_04-05-2016-10_30_47.pdf', '2016-05-04 08:30:47', '2016-05-04 08:31:43', NULL, 0, '2016-04-30', NULL, 24),
(25, NULL, 1, 1, 1, 21, 3, 'aanschaf hardware (mac)', 'aanschaf hardware (mac)', 3667.93, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2016/Kolkmedia', 'aanschaf hardware (mac)_28-05-2016-09_31_57.png', '2016-05-28 07:31:57', '2016-05-28 07:31:57', NULL, 0, '2016-05-27', NULL, 25),
(26, NULL, 1, 1, 1, 21, 4, 'Webhosting kolkmedia.com', 'Webhosting kolkmedia.com', 67.48, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2016/Kolkmedia', 'Webhosting kolkmedia.com_30-06-2016-10_03_05.pdf', '2016-06-30 08:03:05', '2016-06-30 08:03:05', NULL, 0, '2016-06-17', NULL, 26),
(27, NULL, 1, 1, 1, 21, 5, 'Lease maand mei 2016', 'Lease maand mei 2016', 645.58, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2016/Kolkmedia', 'Lease maand mei 2016_18-07-2016-14_15_40.pdf', '2016-07-18 12:15:40', '2016-07-18 12:15:40', NULL, 0, '2016-05-01', NULL, 27),
(28, NULL, 1, 1, 1, 21, 5, 'Lease maand juni 2016', 'Lease maand juni 2016', 645.58, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2016/Kolkmedia', 'Lease maand juni 2016_18-07-2016-14_16_54.pdf', '2016-07-18 12:16:54', '2016-07-18 12:16:54', NULL, 0, '2016-06-01', NULL, 28),
(29, NULL, 1, 1, 1, 21, 5, 'Ruitschade', 'Ruitschade', 382.00, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2016/Kolkmedia', 'Ruitschade_18-07-2016-14_17_39.pdf', '2016-07-18 12:17:39', '2016-07-18 12:17:59', NULL, 0, '2016-06-01', NULL, 29),
(30, NULL, 1, 1, 1, 21, 1, 'Parkeren juni 2016', 'Parkeren juni 2016', 343.72, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2016/Kolkmedia', 'Parkeren juni 2016_18-07-2016-14_20_20.pdf', '2016-07-18 12:20:20', '2016-07-18 12:20:20', NULL, 0, '2016-06-01', NULL, 30),
(31, NULL, 1, 1, 1, 21, 1, 'Parkeren abonnements kosten', 'Parkeren abonnements kosten', 21.30, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2016/Kolkmedia', 'Parkeren abonnements kosten_18-07-2016-14_21_40.pdf', '2016-07-18 12:21:40', '2016-07-18 12:21:40', NULL, 0, '2016-06-01', NULL, 31),
(32, NULL, 1, 1, 1, 21, 4, 'Aanschaf Camera', 'Aanschaf Camera', 517.92, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2016/Kolkmedia', 'Aanschaf Camera_18-07-2016-14_22_38.pdf', '2016-07-18 12:22:38', '2016-07-18 12:22:38', NULL, 0, '2016-07-18', NULL, 32),
(33, NULL, 1, 1, 1, 21, 3, 'Aanschaf macbook', 'Aanschaf macbook', 2295.94, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2016/Kolkmedia', 'Aanschaf macbook_18-07-2016-14_25_27.pdf', '2016-07-18 12:25:27', '2016-07-18 12:25:27', NULL, 0, '2016-06-10', NULL, 33),
(34, NULL, 1, 1, 1, 21, 5, 'Vervangend vervoer', 'Vervangend vervoer', 37.82, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2016/Kolkmedia', 'Vervangend vervoer_18-07-2016-14_26_57.pdf', '2016-07-18 12:26:57', '2016-07-18 12:26:57', NULL, 0, '2016-05-11', NULL, 34),
(35, NULL, 1, 4, 1, 27, 1, 'Parkmobile oktober 2016', 'Parkmobile oktober 2016', 88.31, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2017/KPNS&I', 'Parkmobile oktober 2016_30-01-2017-09_51_53.pdf', '2017-01-30 08:51:53', '2017-01-30 08:58:36', NULL, 0, '2016-10-31', NULL, 35),
(36, NULL, 1, 4, 1, 27, 1, 'Parkmobile november 2016', 'Parkmobile november 2016', 60.92, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2017/KPNS&I', 'Parkmobile november 2016_30-01-2017-09_59_46.pdf', '2017-01-30 08:59:46', '2017-01-30 09:01:03', NULL, 0, '2016-11-30', NULL, 36),
(37, NULL, 1, 4, 1, 27, 1, 'Parkmobile december 2016', 'Parkmobile december 2016', 25.91, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2017/KPNS&I', 'Parkmobile december 2016_30-01-2017-10_02_07.pdf', '2017-01-30 09:02:07', '2017-01-30 09:02:07', NULL, 0, '2016-12-30', NULL, 37),
(38, NULL, 1, 1, 1, 21, 5, 'Lease maand oktober 2016', 'Lease maand oktober 2016', 652.84, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2017/Kolkmedia', 'Lease maand oktober 2016_30-01-2017-10_05_56.pdf', '2017-01-30 09:05:56', '2017-01-30 09:06:28', NULL, 0, '2016-10-31', NULL, 38),
(39, NULL, 1, 1, 1, 21, 5, 'Lease maand november 2016', 'Lease maand november 2016', 652.84, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2017/Kolkmedia', 'Lease maand november 2016_30-01-2017-10_09_54.pdf', '2017-01-30 09:09:54', '2017-01-30 09:10:50', NULL, 0, '2016-11-30', NULL, 39),
(40, NULL, 1, 1, 1, 21, 5, 'Afrekening brandstofkosten oktober 2016', 'Afrekening brandstofkosten oktober 2016', 66.38, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2017/Kolkmedia', 'Afrekening brandstofkosten oktober 2016_30-01-2017-10_11_58.pdf', '2017-01-30 09:11:58', '2017-01-30 09:11:58', NULL, 0, '2016-10-31', NULL, 40),
(41, NULL, 1, 1, 1, 21, 5, 'Lease maand december 2016', 'Lease maand december 2016', 652.84, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2017/Kolkmedia', 'Lease maand december 2016_30-01-2017-10_13_28.pdf', '2017-01-30 09:13:28', '2017-01-30 09:13:28', NULL, 0, '2016-12-31', NULL, 41),
(42, NULL, 1, 4, 1, 21, 2, 'NS business card oktober 2016', 'NS business card oktober 2016', 103.96, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2017/Kolkmedia', 'NS business card oktober 2016_30-01-2017-12_39_54.pdf', '2017-01-30 11:39:54', '2017-01-30 11:39:54', NULL, 0, '2016-10-31', NULL, 42),
(43, NULL, 1, 4, 1, 21, 2, 'NS business card november 2016', 'NS business card november 2016', 4.76, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2017/Kolkmedia', 'NS business card november 2016_30-01-2017-12_41_25.pdf', '2017-01-30 11:41:25', '2017-01-30 11:41:25', NULL, 0, '2016-11-30', NULL, 43),
(44, NULL, 1, 4, 1, 21, 2, 'NS business card december 2016', 'NS business card december 2016', 26.24, '/home/offlex1q/offlex_base/app/storage/uploads/expenses/2017/Kolkmedia', 'NS business card december 2016_30-01-2017-12_43_00.pdf', '2017-01-30 11:43:00', '2017-01-30 11:43:00', NULL, 0, '2016-12-31', NULL, 44);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `frequencies`
--

CREATE TABLE `frequencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `frequencies`
--

INSERT INTO `frequencies` (`id`, `name`) VALUES
(1, 'Wekelijks'),
(2, 'Twee wekelijks'),
(3, 'Vier wekelijks'),
(4, 'Maandelijks'),
(5, 'Drie maandelijks'),
(6, 'Half jaarlijks'),
(7, 'Jaarlijks');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gateways`
--

CREATE TABLE `gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  `payment_library_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 10000,
  `recommended` tinyint(1) NOT NULL DEFAULT 0,
  `site_url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `gateways`
--

INSERT INTO `gateways` (`id`, `created_at`, `updated_at`, `name`, `provider`, `visible`, `payment_library_id`, `sort_order`, `recommended`, `site_url`) VALUES
(1, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'Authorize.Net AIM', 'AuthorizeNet_AIM', 1, 1, 10000, 0, NULL),
(2, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'Authorize.Net SIM', 'AuthorizeNet_SIM', 1, 1, 10000, 0, NULL),
(3, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'CardSave', 'CardSave', 1, 1, 10000, 0, NULL),
(4, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'Eway Rapid', 'Eway_Rapid', 1, 1, 10000, 0, NULL),
(5, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'FirstData Connect', 'FirstData_Connect', 1, 1, 10000, 0, NULL),
(6, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'GoCardless', 'GoCardless', 1, 1, 10000, 0, NULL),
(7, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'Migs ThreeParty', 'Migs_ThreeParty', 1, 1, 10000, 0, NULL),
(8, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'Migs TwoParty', 'Migs_TwoParty', 1, 1, 10000, 0, NULL),
(9, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'Mollie', 'Mollie', 1, 1, 10000, 0, NULL),
(10, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'MultiSafepay', 'MultiSafepay', 1, 1, 10000, 0, NULL),
(11, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'Netaxept', 'Netaxept', 1, 1, 10000, 0, NULL),
(12, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'NetBanx', 'NetBanx', 1, 1, 10000, 0, NULL),
(13, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'PayFast', 'PayFast', 1, 1, 10000, 0, NULL),
(14, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'Payflow Pro', 'Payflow_Pro', 1, 1, 10000, 0, NULL),
(15, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'PaymentExpress PxPay', 'PaymentExpress_PxPay', 1, 1, 10000, 0, NULL),
(16, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'PaymentExpress PxPost', 'PaymentExpress_PxPost', 1, 1, 10000, 0, NULL),
(17, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'PayPal Express', 'PayPal_Express', 1, 1, 10000, 0, NULL),
(18, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'PayPal Pro', 'PayPal_Pro', 1, 1, 10000, 0, NULL),
(19, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'Pin', 'Pin', 1, 1, 10000, 0, NULL),
(20, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'SagePay Direct', 'SagePay_Direct', 1, 1, 10000, 0, NULL),
(21, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'SagePay Server', 'SagePay_Server', 1, 1, 10000, 0, NULL),
(22, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'SecurePay DirectPost', 'SecurePay_DirectPost', 1, 1, 10000, 0, NULL),
(23, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'Stripe', 'Stripe', 1, 1, 10000, 0, NULL),
(24, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'TargetPay Direct eBanking', 'TargetPay_Directebanking', 1, 1, 10000, 0, NULL),
(25, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'TargetPay Ideal', 'TargetPay_Ideal', 1, 1, 10000, 0, NULL),
(26, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'TargetPay Mr Cash', 'TargetPay_Mrcash', 1, 1, 10000, 0, NULL),
(27, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'TwoCheckout', 'TwoCheckout', 1, 1, 10000, 0, NULL),
(28, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'WorldPay', 'WorldPay', 1, 1, 10000, 0, NULL),
(29, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'BeanStream', 'BeanStream', 1, 2, 10000, 0, NULL),
(30, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'Psigate', 'Psigate', 1, 2, 10000, 0, NULL),
(31, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'Alipay', 'Alipay_Express', 1, 1, 10000, 0, NULL),
(32, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'Buckaroo', 'Buckaroo_CreditCard', 1, 1, 10000, 0, NULL),
(33, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'Coinbase', 'Coinbase', 1, 1, 10000, 0, NULL),
(34, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'DataCash', 'DataCash', 1, 1, 10000, 0, NULL),
(35, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'Neteller', 'Neteller', 1, 1, 10000, 0, NULL),
(36, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'Pacnet', 'Pacnet', 1, 1, 10000, 0, NULL),
(37, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'PaymentSense', 'PaymentSense', 1, 1, 10000, 0, NULL),
(38, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'Realex', 'Realex_Remote', 1, 1, 10000, 0, NULL),
(39, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'Sisow', 'Sisow', 1, 1, 10000, 0, NULL),
(40, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'Skrill', 'Skrill', 1, 1, 10000, 0, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `industries`
--

CREATE TABLE `industries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `industries`
--

INSERT INTO `industries` (`id`, `name`) VALUES
(1, 'Accounting'),
(2, 'Reclame'),
(3, 'Landbouw'),
(4, 'Automotive'),
(5, 'Financieel'),
(6, 'Bio industrie'),
(7, 'Televisie'),
(8, 'Zakelijke Services'),
(9, 'Communicatie'),
(10, 'IT'),
(11, 'Defensie'),
(12, 'Energie'),
(13, 'Entertainment'),
(14, 'Overheid'),
(15, 'Gezondheidszorg'),
(16, 'Verzekeringen'),
(17, 'Marketing'),
(18, 'Media'),
(19, 'Nonprofit'),
(20, 'Farmaceutisch'),
(21, 'Consulting'),
(22, 'Vastgoed'),
(23, 'Retail & Groothandel'),
(24, 'Sport'),
(25, 'Vervoer'),
(26, 'Reizen & luxe'),
(27, 'Anders');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `invitations`
--

CREATE TABLE `invitations` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `contact_id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `invitation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `transaction_reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sent_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `public_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `invitations`
--

INSERT INTO `invitations` (`id`, `account_id`, `user_id`, `contact_id`, `invoice_id`, `invitation_key`, `created_at`, `updated_at`, `deleted_at`, `transaction_reference`, `sent_date`, `viewed_date`, `public_id`) VALUES
(33, 1, 1, 4, 29, 'YFt0PWpf4ejyrjv2V9yfS5kwBHyVFqPu', '2016-09-29 14:09:12', '2017-01-10 08:32:17', NULL, NULL, '2017-01-09 11:03:37', '2017-01-10 08:32:17', 16),
(32, 1, 1, 4, 28, 'oz3oW2qwfbS3NvEBfj2Gxvyo3CffvaBN', '2016-09-29 14:07:48', '2016-12-06 08:56:02', NULL, NULL, '2016-11-30 11:18:20', '2016-12-06 08:56:02', 15),
(31, 1, 1, 4, 27, 'l6C9BhLuopP8waO4zBH0R8G48lIjnHvC', '2016-09-29 14:04:47', '2016-10-31 11:57:49', NULL, NULL, '2016-10-31 08:01:04', '2016-10-31 11:57:49', 14),
(30, 1, 1, 4, 26, 'oLQGvfpPA7ZwpleqQPnw98zONVkZML9d', '2016-08-30 11:04:49', '2016-09-30 07:56:45', NULL, NULL, '2016-09-30 05:41:27', '2016-09-30 07:56:45', 13),
(29, 1, 1, 4, 25, 'ztoJ9AwhpSkFzGDiH8CbziBNz30HYwc6', '2016-07-20 06:18:24', '2016-07-20 06:23:17', NULL, NULL, '2016-07-20 06:23:17', '0000-00-00 00:00:00', 12),
(28, 1, 1, 5, 24, 'IdkANt13GjtBkbP4AK1yZQ41gVNqPkJn', '2016-06-17 05:47:31', '2016-07-13 15:15:40', NULL, NULL, '2016-07-13 15:15:40', '0000-00-00 00:00:00', 11),
(27, 1, 1, 4, 23, 'rQrVyBj8Qqb2DjKlan3dyZQnO1nlhGC2', '2016-06-02 03:57:23', '2016-06-30 12:44:32', NULL, NULL, '2016-06-30 07:31:26', '2016-06-30 12:44:32', 10),
(26, 1, 1, 4, 22, 'UfTqt0PskyX6hICbUzqQyLR0nJ8f2BZE', '2016-05-25 12:39:45', '2016-07-05 07:46:07', NULL, NULL, '2016-05-30 07:08:48', '2016-07-05 07:46:07', 9),
(25, 1, 1, 4, 21, 'cQHSf20gAgEnIi0PFcSmLb5XlsK2pagI', '2016-04-22 06:17:22', '2016-05-02 05:15:01', NULL, NULL, '2016-04-29 07:07:09', '2016-05-02 05:15:01', 8),
(24, 1, 1, 4, 20, 'kUkIkXAaqXFVZXYNlmvsdrqVDToTAtCa', '2016-03-18 08:36:39', '2016-04-04 05:31:19', NULL, NULL, '2016-03-31 15:16:19', '2016-04-04 05:31:19', 7),
(23, 1, 1, 4, 19, 'vmzrWoiLVWK84BjyMcXLRcMZOuC0m2WF', '2016-02-24 11:23:42', '2016-03-15 12:11:26', NULL, NULL, '2016-03-08 15:10:20', '2016-03-15 12:11:26', 6),
(22, 1, 1, 4, 14, '03UXRqj5tHkPxaKmwypy50pNUKGXOO9V', '2016-01-29 08:58:30', '2016-01-29 08:58:30', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5),
(21, 1, 1, 4, 18, '6MpvbbvWRZOsECfWVhPlYwdOQsWQKrEW', '2016-01-21 08:48:00', '2016-02-01 08:48:40', NULL, NULL, '2016-01-29 08:57:59', '2016-02-01 08:48:40', 4),
(20, 1, 1, 4, 17, 'a8dwJymtAvoupLAoQBGtJdubsXJZ96HM', '2015-12-18 09:02:48', '2015-12-22 07:11:35', NULL, NULL, '2015-12-21 09:26:13', '2015-12-22 07:11:35', 3),
(19, 1, 1, 4, 16, 'PcYHH8EY2gl1OkY3cMJVIGtny6K0TyNf', '2015-11-09 07:17:27', '2015-11-30 11:24:47', NULL, NULL, '2015-11-30 09:39:32', '2015-11-30 11:24:47', 2),
(18, 1, 1, 4, 15, 'ubfPj3XSbrnrc5neEVhZ6maooOUBP0X4', '2015-10-26 17:40:45', '2015-11-02 14:22:51', NULL, NULL, '2015-10-30 12:25:49', '2015-11-02 14:22:51', 1),
(34, 1, 1, 1, 26, 'X2fi9PQwO2bxJcjvW1Cr2pG9lKObJr7g', '2016-09-30 05:28:52', '2016-09-30 05:41:27', NULL, NULL, '2016-09-30 05:41:27', '0000-00-00 00:00:00', 17),
(35, 1, 1, 4, 30, 'EZdMM63y9Zjth0UUipP5vkrYQi2SM67l', '2017-01-11 10:37:32', '2017-01-11 10:37:32', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 18),
(36, 1, 1, 4, 31, 'OguCRBJjsUnoKqjTCwRgL7wa845J1HYI', '2017-01-30 08:41:48', '2017-01-31 11:28:58', NULL, NULL, '2017-01-31 08:31:11', '2017-01-31 11:28:58', 19),
(37, 1, 1, 4, 32, 'rMVDz7FMDlE4WN7ID9Gje7NKq6nGxL1C', '2017-03-01 13:44:13', '2017-03-07 07:52:41', NULL, NULL, '2017-03-01 13:48:00', '2017-03-07 07:52:41', 20),
(38, 1, 1, 4, 33, 'beWe3DqNA1fjxKTWjAhwVZO8C60B5BjV', '2017-03-30 08:00:31', '2017-03-30 10:31:48', NULL, NULL, '2017-03-30 08:10:09', '2017-03-30 10:31:48', 21),
(39, 1, 1, 4, 34, 'ZYe3yT0QeIyQ1z2KqHJD3bjjEPEsJPvj', '2017-04-28 08:07:27', '2017-05-24 09:55:58', NULL, NULL, '2017-04-28 08:11:19', '2017-05-24 09:55:58', 22),
(40, 1, 1, 4, 35, 'goYjuXaVec45IpxWEqNx4pAnytZ0XQiq', '2017-05-30 05:16:24', '2017-05-31 06:14:57', NULL, NULL, '2017-05-31 05:00:09', '2017-05-31 06:14:57', 23),
(41, 1, 1, 4, 36, 'hcN3iQv3SGE6lGaj7JvtNYWPxN03g8ah', '2017-06-30 06:39:06', '2017-06-30 07:09:16', NULL, NULL, '2017-06-30 06:42:07', '2017-06-30 07:09:16', 24),
(42, 1, 1, 4, 37, 'g3tqmMH3RNHvhC9tHy2Q4fxYmZFdK6O3', '2017-07-28 05:49:14', '2017-07-31 08:28:15', NULL, NULL, '2017-07-31 06:57:30', '2017-07-31 08:28:15', 25),
(43, 1, 1, 4, 38, 'yJNQPZ5yUxvqjJcYFc4NlZUsszlCQbDh', '2017-08-30 07:55:50', '2017-09-29 09:07:39', NULL, NULL, '2017-09-28 12:39:37', '2017-09-29 09:07:39', 26),
(44, 1, 1, 4, 39, 'OYd39tz2WJnOlIHojFtunnoU52SuzKMY', '2017-09-28 12:40:56', '2017-09-28 12:51:07', NULL, NULL, '2017-09-28 12:43:07', '2017-09-28 12:51:07', 27),
(45, 1, 1, 4, 40, 'HiHtfsEpH9WJj6BRTVxaiPlu54RHb5N4', '2017-10-03 14:07:46', '2017-10-03 14:07:46', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 28),
(46, 1, 1, 4, 41, 'RTOusDoEsAwxAp79tWADuP3gkhxSbMnx', '2017-10-16 12:18:50', '2017-10-16 12:18:50', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 29),
(47, 1, 1, 4, 42, '7iBOecTo9LfhR4Tn4XuV8ZmXvahAXdrZ', '2017-10-26 04:18:48', '2017-10-27 07:18:59', NULL, NULL, '2017-10-27 06:35:17', '2017-10-27 07:18:59', 30),
(48, 1, 1, 4, 43, 'BJfecnQg2CFdZ00JZWIdGPx93PNBpAZ8', '2017-11-30 09:18:44', '2017-12-07 10:46:30', NULL, NULL, '2017-11-30 13:29:07', '2017-12-07 10:46:30', 31),
(49, 1, 1, 4, 44, 'Y56WcCpkUWqEpMzu9mlaBoekRpNYEoID', '2017-12-29 07:59:11', '2017-12-29 09:13:00', NULL, NULL, '2017-12-29 08:01:00', '2017-12-29 09:13:00', 32),
(50, 1, 1, 4, 45, '2HpbKSDxa3W2Bol92nppr8cYByri5U3e', '2018-01-18 10:14:47', '2018-02-14 07:29:15', NULL, NULL, '2018-01-31 08:13:25', '2018-02-14 07:29:15', 33),
(51, 1, 1, 4, 46, 'HApH1qPly6LGniBPD211C9gaD40mYoJE', '2018-02-28 06:49:21', '2018-03-05 06:48:41', NULL, NULL, '2018-02-28 06:51:56', '2018-03-05 06:48:41', 34),
(52, 1, 1, 4, 47, '0WPDU8yf4wtAJya3ZHZiFs0C314jlTEi', '2018-03-29 05:21:28', '2018-03-31 06:35:58', NULL, NULL, '2018-03-30 07:54:24', '2018-03-31 06:35:58', 35),
(53, 1, 1, 4, 48, 'XpJtLcxgKYqTf42EeOE47pSIgHugXpFu', '2018-04-26 07:11:56', '2018-05-02 04:41:24', NULL, NULL, '2018-04-30 04:50:10', '2018-05-02 04:41:24', 36),
(54, 1, 1, 4, 49, 'Wr83E8K9oKtuThDzvnRKLR528T10MEFg', '2018-05-30 05:33:21', '2018-05-31 07:26:01', NULL, NULL, '2018-05-30 05:33:38', '2018-05-31 07:26:01', 37),
(55, 1, 1, 6, 50, 'MMR6MyIEzDoB8uTXYiPJB4cwjhICO0M8', '2018-06-06 08:25:59', '2018-06-06 08:25:59', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 38),
(56, 1, 1, 7, 51, '3j9Wy8ersxznDgZN0nmj2u5rODlE4UH7', '2018-07-26 12:32:04', '2018-10-12 12:27:49', NULL, NULL, '2018-08-23 13:49:53', '2018-10-12 12:27:49', 39),
(57, 1, 1, 8, 51, '3lkabk0rlrDnoP6CUC9gvUOF1NzlOATY', '2018-07-26 12:32:04', '2018-08-23 13:49:53', '2018-08-23 13:49:53', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 40),
(58, 1, 1, 6, 52, 'ryEsktOoy3hYquTfoOUCkQd8YXL3td0s', '2018-08-25 09:54:53', '2018-08-25 09:54:53', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 41),
(59, 1, 1, 6, 53, '7WEXjURpFS3Fpu42whvPoY3zdNa0bsc9', '2018-08-25 09:56:15', '2018-08-25 09:56:15', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 42),
(60, 1, 1, 6, 54, 'n0ewAmfRcJrGeCjjZdTvfFL5qV90LUVo', '2018-08-31 06:16:40', '2018-08-31 06:16:40', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 43),
(61, 1, 1, 6, 55, 'WeufkXQiEK5EPNG79u8u6GGFBEIo96rY', '2018-10-23 04:48:04', '2018-10-23 04:48:04', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 44),
(62, 1, 1, 15, 56, 'tqheWHCFd7L9ssneQHVjBOrjorDc99iX', '2018-10-23 10:45:34', '2018-10-23 10:45:34', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 45),
(63, 1, 1, 6, 57, '1hSjkpoVcOxd92UIZyDB6PK8U4PgwPYP', '2018-10-30 07:42:43', '2018-10-30 07:42:43', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 46),
(64, 1, 1, 15, 58, 'kGBRQ88BZHXSdL3F3dOKnLwRHiXYTG8E', '2019-05-04 05:53:54', '2019-05-24 10:38:36', '2019-05-24 10:38:36', NULL, '0000-00-00 00:00:00', '2019-05-24 10:30:36', 47),
(65, 1, 1, 15, 59, 'Y73Ht9f2ZYZngZ5lgeGrmyHL7ZO0UG2s', '2019-05-04 06:03:17', '2019-05-04 06:03:17', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 48),
(66, 1, 1, 15, 60, '6WbzTf6IxOP0S0k6MUqRCM040qj2TlAo', '2019-05-04 06:06:04', '2019-05-04 06:06:04', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 49),
(67, 1, 1, 16, 58, 'SiNMa77yORECIzQ6hdSYQbLGUuIBmoyv', '2019-05-24 10:38:36', '2019-05-24 10:44:01', '2019-05-24 10:44:01', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 50),
(68, 1, 1, 16, 61, 'xCy3XrdAutp719uTg18pdOjuFiqdavFC', '2019-05-24 10:46:49', '2019-05-24 10:46:49', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 51),
(69, 1, 1, 16, 62, 'I11HUmYGtIF9m2wPs24qRaVnwIY8CsOn', '2020-06-19 04:38:06', '2020-06-19 04:38:06', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 52),
(70, 1, 1, 17, 63, 'Hw3rdZr7m9KTAN1bQ3rlV0cuapbfbU8g', '2021-02-22 10:45:28', '2021-02-22 10:45:28', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 53),
(71, 1, 1, 18, 64, '6byWSAYWbRqazusWmAWcpHcTvzagQ0No', '2021-03-31 06:58:06', '2021-03-31 06:58:06', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 54),
(72, 1, 1, 18, 65, 'y9GnjGMNtFQnPE2VIdFKdwpSiqmEGdSz', '2021-04-06 04:22:37', '2021-04-06 04:22:37', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 55),
(73, 1, 1, 18, 66, 'A0Ta4NxoUp28CQD2tQi2NY3kSyVHtKX2', '2021-04-08 04:16:13', '2021-04-08 04:16:13', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 56),
(74, 1, 1, 19, 67, '8lckt0pJVulbImJ1iFcgOTfFHD4UKUDj', '2021-06-02 11:41:57', '2021-06-02 11:41:57', NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 57);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `invoice_status_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `invoice_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount` float(8,2) NOT NULL,
  `po_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `terms` text COLLATE utf8_unicode_ci NOT NULL,
  `public_notes` text COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `is_recurring` tinyint(1) NOT NULL,
  `frequency_id` int(10) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `last_sent_date` timestamp NULL DEFAULT NULL,
  `recurring_invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `tax_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_rate` decimal(13,2) NOT NULL,
  `amount` decimal(13,2) NOT NULL,
  `balance` decimal(13,2) NOT NULL,
  `public_id` int(10) UNSIGNED NOT NULL,
  `invoice_design_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `is_quote` tinyint(1) NOT NULL DEFAULT 0,
  `quote_id` int(10) UNSIGNED DEFAULT NULL,
  `quote_invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `custom_value1` decimal(13,2) NOT NULL DEFAULT 0.00,
  `custom_value2` decimal(13,2) NOT NULL DEFAULT 0.00,
  `custom_taxes1` tinyint(1) NOT NULL DEFAULT 0,
  `custom_taxes2` tinyint(1) NOT NULL DEFAULT 0,
  `is_amount_discount` tinyint(1) DEFAULT NULL,
  `invoice_footer` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `invoices`
--

INSERT INTO `invoices` (`id`, `client_id`, `user_id`, `account_id`, `invoice_status_id`, `created_at`, `updated_at`, `deleted_at`, `invoice_number`, `discount`, `po_number`, `invoice_date`, `due_date`, `terms`, `public_notes`, `is_deleted`, `is_recurring`, `frequency_id`, `start_date`, `end_date`, `last_sent_date`, `recurring_invoice_id`, `tax_name`, `tax_rate`, `amount`, `balance`, `public_id`, `invoice_design_id`, `is_quote`, `quote_id`, `quote_invoice_id`, `custom_value1`, `custom_value2`, `custom_taxes1`, `custom_taxes2`, `is_amount_discount`, `invoice_footer`) VALUES
(1, 3, 1, 1, 5, '2015-04-24 10:06:08', '2015-04-24 11:59:49', '2015-04-24 11:59:49', '2012/001-2', 0.00, '', '2012-06-29', '2012-06-29', 'U wordt verzocht het vermelde bedrag binnen 30 dagen over te\nmaken op  bankrekeningnummer ING NL64INGB0007368249 onder\nvermelding van het factuurnummer.', '', 0, 0, 0, NULL, NULL, NULL, NULL, '19%', 19.00, 2380.00, 0.00, 1, 1, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Wij danken u voor het vertrouwen in ons.\nNeem bij vragen over deze factuur contact op met:\n\nNaam	:     Vincent van der Kolk\nEmail	:      vincent@kolkmedia.com\nTelefoon	:    0613830405'),
(2, 3, 1, 1, 5, '2015-04-24 10:10:32', '2015-04-24 11:59:49', '2015-04-24 11:59:49', '2012/002-1', 0.00, '', '2012-09-11', '2015-05-08', 'U wordt verzocht het vermelde bedrag binnen 30 dagen over te\nmaken op  bankrekeningnummer ING NL64INGB0007368249 onder\nvermelding van het factuurnummer.', '', 0, 0, 0, NULL, NULL, NULL, NULL, '19%', 19.00, 1190.00, 0.00, 2, 1, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Wij danken u voor het vertrouwen in ons.\nNeem bij vragen over deze factuur contact op met:\n\nNaam	:     Vincent van der Kolk\nEmail	:      vincent@kolkmedia.com\nTelefoon	:    0613830405'),
(3, 3, 1, 1, 5, '2015-04-24 10:14:12', '2015-04-24 11:59:49', '2015-04-24 11:59:49', '2012/003-1', 0.00, '', '2012-09-11', '2015-05-08', 'U wordt verzocht het vermelde bedrag binnen 30 dagen over te\nmaken op  bankrekeningnummer ING NL64INGB0007368249 onder\nvermelding van het factuurnummer.', 'Overeenkomstig uw opdracht van de heer P.Vlemmix op 14 juni\n2012 belasten wij u voor de derde termijn van de opdracht.', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW-21%', 21.00, 3630.00, 0.00, 3, 1, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Wij danken u voor het vertrouwen in ons.\nNeem bij vragen over deze factuur contact op met:\n\nNaam	:     Vincent van der Kolk\nEmail	:      vincent@kolkmedia.com\nTelefoon	:    0613830405'),
(4, 3, 1, 1, 5, '2015-04-24 10:16:54', '2015-04-24 11:59:49', '2015-04-24 11:59:49', '2013/001-1', 0.00, '', '2013-05-03', '2015-05-08', 'U wordt verzocht het vermelde bedrag binnen 30 dagen over te\nmaken op  bankrekeningnummer ING NL64INGB0007368249 onder\nvermelding van het factuurnummer.', '', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW-21%', 21.00, 2359.50, 0.00, 4, 1, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Wij danken u voor het vertrouwen in ons.\nNeem bij vragen over deze factuur contact op met:\n\nNaam	:     Vincent van der Kolk\nEmail	:      vincent@kolkmedia.com\nTelefoon	:    0613830405'),
(5, 3, 1, 1, 5, '2015-04-24 10:18:24', '2015-04-24 11:59:49', '2015-04-24 11:59:49', '2013/002-1', 0.00, '', '2013-05-03', '2015-05-08', 'U wordt verzocht het vermelde bedrag binnen 30 dagen over te\nmaken op  bankrekeningnummer ING NL64INGB0007368249 onder\nvermelding van het factuurnummer.', '', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW-21%', 21.00, 2988.70, 0.00, 5, 1, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Wij danken u voor het vertrouwen in ons.\nNeem bij vragen over deze factuur contact op met:\n\nNaam	:     Vincent van der Kolk\nEmail	:      vincent@kolkmedia.com\nTelefoon	:    0613830405'),
(6, 3, 1, 1, 5, '2015-04-24 10:21:36', '2015-04-24 11:59:49', '2015-04-24 11:59:49', '2013/003-1', 0.00, '', '2013-12-20', '2014-01-03', 'U wordt verzocht het vermelde bedrag binnen 30 dagen over te\nmaken op  bankrekeningnummer ING NL64INGB0007368249 onder\nvermelding van het factuurnummer.', '', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW-21%', 21.00, 2988.70, 0.00, 6, 1, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Wij danken u voor het vertrouwen in ons.\nNeem bij vragen over deze factuur contact op met:\n\nNaam	:     Vincent van der Kolk\nEmail	:      vincent@kolkmedia.com\nTelefoon	:    0613830405'),
(7, 3, 1, 1, 5, '2015-04-24 10:22:53', '2015-04-24 11:59:49', '2015-04-24 11:59:49', '2013/003-1.2', 0.00, '', '2013-12-20', '2015-05-08', 'U wordt verzocht het vermelde bedrag binnen 30 dagen over te\nmaken op  bankrekeningnummer ING NL64INGB0007368249 onder\nvermelding van het factuurnummer.', '', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW-21%', 21.00, 2516.80, 0.00, 7, 1, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Wij danken u voor het vertrouwen in ons.\nNeem bij vragen over deze factuur contact op met:\n\nNaam	:     Vincent van der Kolk\nEmail	:      vincent@kolkmedia.com\nTelefoon	:    0613830405'),
(8, 3, 1, 1, 5, '2015-04-24 10:27:31', '2015-09-15 07:17:12', '2015-09-15 07:17:12', '2014/001', 0.00, '', '2014-04-14', '2015-05-08', 'U wordt verzocht het vermelde bedrag binnen 30 dagen over te\nmaken op  bankrekeningnummer ING NL64INGB0007368249 onder\nvermelding van het factuurnummer.', 'Deze factuur is bij belasting aangifte over 2013 meegenomen.', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW-21%', 21.00, 2595.45, 0.00, 8, 1, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Wij danken u voor het vertrouwen in ons.\nNeem bij vragen over deze factuur contact op met:\n\nNaam	:     Vincent van der Kolk\nEmail	:      vincent@kolkmedia.com\nTelefoon	:    0613830405'),
(9, 3, 1, 1, 3, '2015-04-24 10:29:03', '2015-11-20 16:21:48', '2015-09-15 07:17:12', 'DEBET 2014/002', 0.00, '', '2014-04-07', '2015-05-08', 'U wordt verzocht het vermelde bedrag binnen 30 dagen over te\nmaken op  bankrekeningnummer ING NL64INGB0007368249 onder\nvermelding van het factuurnummer.', 'Debet factuur DEBET 2014/002', 1, 0, 0, NULL, NULL, NULL, NULL, 'BTW-21%', 21.00, 78.65, 78.65, 9, 1, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Wij danken u voor het vertrouwen in ons.\nNeem bij vragen over deze factuur contact op met:\n\nNaam	:     Vincent van der Kolk\nEmail	:      vincent@kolkmedia.com\nTelefoon	:    0613830405'),
(10, 2, 1, 1, 5, '2015-04-24 10:34:08', '2015-09-15 07:17:12', '2015-09-15 07:17:12', '2014-3/001', 0.00, '', '2014-09-14', '2015-05-08', 'U wordt verzocht het vermelde bedrag binnen 30 dagen over te\nmaken op  bankrekeningnummer ING NL64INGB0007368249 onder\nvermelding van het factuurnummer.', '', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW-21%', 21.00, 786.50, 0.00, 10, 1, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Wij danken u voor het vertrouwen in ons.\nNeem bij vragen over deze factuur contact op met:\n\nNaam	:     Vincent van der Kolk\nEmail	:      vincent@kolkmedia.com\nTelefoon	:    0613830405'),
(18, 4, 1, 1, 5, '2016-01-21 08:48:00', '2017-08-30 07:53:02', '2017-08-30 07:53:02', '0005', 0.00, '', '2016-01-29', '2016-02-29', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in januari 2016', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 14713.60, 0.00, 18, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(16, 4, 1, 1, 5, '2015-11-09 07:17:27', '2017-03-01 13:44:55', '2017-03-01 13:44:55', '0003', 0.00, '', '2015-11-30', '2015-12-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden van de maand november', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 16262.40, 0.00, 16, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(17, 4, 1, 1, 5, '2015-12-18 09:02:48', '2017-03-01 13:44:55', '2017-03-01 13:44:55', '0004', 0.00, '', '2015-12-21', '2016-01-21', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in december', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 10841.60, 0.00, 17, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(13, 1, 1, 1, 5, '2015-05-20 08:19:41', '2016-08-30 11:07:18', '2016-08-30 11:07:18', 'kolkmedia-0012', 0.00, '', '2015-05-20', '2015-05-20', 'U wordt verzocht het vermelde bedrag binnen 30 dagen over te\nmaken op  bankrekeningnummer ING NL64INGB0007368249 onder\nvermelding van het factuurnummer.', 'Facuur werkzaamheden verricht door A3 administratie kantoor.\nDeze btw terugvragen bij kwartaal aangifte.', 1, 0, 0, NULL, NULL, NULL, NULL, 'BTW-21%', 21.00, 181.50, 0.00, 13, 1, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Wij danken u voor het vertrouwen in ons.\nNeem bij vragen over deze factuur contact op met:\n\nNaam	:     Vincent van der Kolk\nEmail	:      vincent@kolkmedia.com\nTelefoon	:    0613830405'),
(14, 4, 1, 1, 5, '2015-09-15 07:19:17', '2017-03-01 13:44:55', '2017-03-01 13:44:55', '0001', 0.00, '', '2015-09-30', '2015-10-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in september', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 17036.80, 0.00, 14, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'U wordt verzocht het vermelde bedrag binnen 30 dagen over te maken op  bankrekeningnummer ING NL64INGB0007368249 onder\nvermelding van het factuurnummer.\n\nWij danken u voor het vertrouwen in ons.'),
(15, 4, 1, 1, 5, '2015-10-25 10:03:29', '2017-03-01 13:44:55', '2017-03-01 13:44:55', '0002', 0.00, '', '2015-10-25', '2015-11-24', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in oktober', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 16262.40, 0.00, 15, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(19, 4, 1, 1, 5, '2016-02-24 11:23:42', '2017-08-30 07:53:02', '2017-08-30 07:53:02', '0006', 0.00, '', '2016-02-29', '2016-03-29', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in februari 2016', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 14713.60, 0.00, 19, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(20, 4, 1, 1, 5, '2016-03-18 08:36:39', '2017-08-30 07:53:02', '2017-08-30 07:53:02', '0007', 0.00, '', '2016-03-30', '2016-04-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in maart 2016', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 17036.80, 0.00, 20, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(21, 4, 1, 1, 5, '2016-04-22 06:17:22', '2017-08-30 07:53:02', '2017-08-30 07:53:02', '0008', 0.00, '', '2016-04-29', '2016-04-29', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in april 2016', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 14713.60, 0.00, 21, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(22, 4, 1, 1, 5, '2016-05-25 12:39:45', '2017-08-30 07:53:02', '2017-08-30 07:53:02', '0009', 0.00, '', '2016-05-30', '2016-06-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in mei 2016', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 11616.00, 0.00, 22, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(23, 4, 1, 1, 5, '2016-06-02 03:57:23', '2017-08-30 07:53:02', '2017-08-30 07:53:02', '0010', 0.00, '', '2016-06-30', '2016-07-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in juni 2016', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 12342.00, 0.00, 23, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(24, 5, 1, 1, 5, '2016-06-17 05:47:31', '2017-08-30 07:52:39', '2017-08-30 07:52:39', 'kolkmedia-hardware-001', 0.00, '', '2016-06-17', '2016-07-17', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Aanschaf hardware 27-05-2016', 0, 0, 0, NULL, NULL, NULL, NULL, '', 0.00, 1960.13, 0.00, 24, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(25, 4, 1, 1, 5, '2016-07-20 06:18:24', '2017-08-30 07:53:02', '2017-08-30 07:53:02', '0011', 0.00, '', '2016-07-20', '2016-08-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in juli 2016', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 7986.00, 0.00, 25, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(26, 4, 1, 1, 5, '2016-08-30 11:04:49', '2017-08-30 07:53:02', '2017-08-30 07:53:02', '0012', 0.00, '', '2016-09-30', '2016-10-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in september 2016', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 11228.80, 0.00, 26, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(27, 4, 1, 1, 5, '2016-09-29 14:04:47', '2017-08-30 07:53:02', '2017-08-30 07:53:02', '0013', 0.00, '', '2016-10-30', '2016-11-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in oktober 2016', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 13164.80, 0.00, 27, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(28, 4, 1, 1, 5, '2016-09-29 14:07:48', '2017-08-30 07:53:02', '2017-08-30 07:53:02', '0014', 0.00, '', '2016-11-30', '2016-12-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in november 2016', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 12390.40, 0.00, 28, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(29, 4, 1, 1, 5, '2016-09-29 14:09:12', '2017-08-30 07:57:07', '2017-08-30 07:57:07', '0015', 0.00, '', '2016-12-30', '2017-01-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in december 2016', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 580.80, 0.00, 29, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(30, 4, 1, 1, 5, '2017-01-11 10:37:32', '2017-08-30 07:57:07', '2017-08-30 07:57:07', '0015-1', 0.00, '', '2016-12-30', '2017-01-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Aanvullende factuur voor de werkzaamheden in december 2016', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 4065.60, 0.00, 30, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(31, 4, 1, 1, 5, '2017-01-30 08:41:48', '2018-08-31 06:14:20', '2018-08-31 06:14:20', '0016', 0.00, '', '2017-01-31', '2017-02-28', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in januari 2017', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 9680.00, 0.00, 31, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(32, 4, 1, 1, 5, '2017-03-01 13:44:13', '2018-08-31 06:14:20', '2018-08-31 06:14:20', '0017', 0.00, '', '2017-02-28', '2017-03-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in februari 2017', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 11616.00, 0.00, 32, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(33, 4, 1, 1, 5, '2017-03-30 08:00:31', '2018-08-31 06:14:20', '2018-08-31 06:14:20', '0018', 0.00, '', '2017-03-30', '2017-04-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in maart 2017', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 14326.40, 0.00, 33, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(34, 4, 1, 1, 5, '2017-04-28 08:07:27', '2018-08-31 06:14:20', '2018-08-31 06:14:20', '0019', 0.00, '', '2017-04-28', '2017-04-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in april 2017', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 9680.00, 0.00, 34, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(35, 4, 1, 1, 5, '2017-05-30 05:16:24', '2018-08-31 06:14:20', '2018-08-31 06:14:20', '0020', 0.00, '', '2017-05-31', '2017-06-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in mei 2017', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 9292.80, 0.00, 35, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(36, 4, 1, 1, 5, '2017-06-30 06:39:06', '2018-08-31 06:14:20', '2018-08-31 06:14:20', '0021', 0.00, '', '2017-06-30', '2017-07-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in juni 2017', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 12390.40, 0.00, 36, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(37, 4, 1, 1, 5, '2017-07-28 05:49:14', '2018-08-31 06:14:20', '2018-08-31 06:14:20', '0022', 0.00, '', '2017-07-28', '2017-07-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in juli 2017', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 12390.40, 0.00, 37, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(38, 4, 1, 1, 5, '2017-08-30 07:55:50', '2018-08-31 06:14:20', '2018-08-31 06:14:20', '0023', 0.00, '', '2017-08-31', '2017-09-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in augustus 2017', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 10841.60, 0.00, 38, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(39, 4, 1, 1, 5, '2017-09-28 12:40:56', '2018-08-31 06:14:20', '2018-08-31 06:14:20', '0024', 0.00, '', '2017-09-28', '2017-10-28', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in september 2017', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 11616.00, 0.00, 39, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(40, 4, 1, 1, 1, '2017-10-03 14:07:46', '2017-10-26 04:16:56', '2017-10-26 04:16:56', '0023-1', 0.00, '', '2017-10-03', '2017-11-03', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Credit Factuur voor de werkzaamheden in augustus 2017', 1, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, -96.80, -96.80, 40, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(41, 4, 1, 1, 1, '2017-10-16 12:18:50', '2017-10-26 04:17:07', '2017-10-26 04:17:07', '0023-2', 0.00, '', '2017-10-16', '2017-11-03', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Credit Factuur voor de werkzaamheden in augustus 2017', 1, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, -677.60, -677.60, 41, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(42, 4, 1, 1, 5, '2017-10-26 04:18:48', '2018-08-31 06:14:20', '2018-08-31 06:14:20', '0025', 0.00, '', '2017-10-27', '2017-11-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in oktober 2017', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 9292.80, 0.00, 42, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\r\nEsdoornstraat 41\r\n2665 RC Bleiswijk\r\n06-13830405'),
(43, 4, 1, 1, 5, '2017-11-30 09:18:44', '2018-08-31 06:14:26', '2018-08-31 06:14:26', '0026', 0.00, '', '2017-11-30', '2017-12-29', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in november 2017', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 11616.00, 0.00, 43, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(44, 4, 1, 1, 5, '2017-12-29 07:59:11', '2018-08-31 06:14:26', '2018-08-31 06:14:26', '0027', 0.00, '', '2017-12-29', '2017-12-29', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in december 2017', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 6195.20, 0.00, 44, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(45, 4, 1, 1, 5, '2018-01-18 10:14:46', '2021-04-06 04:19:49', '2021-04-06 04:19:49', '0028', 0.00, '', '2018-01-31', '2018-02-28', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in januari 2018', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 13164.80, 0.00, 45, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(46, 4, 1, 1, 5, '2018-02-28 06:49:21', '2021-04-06 04:19:49', '2021-04-06 04:19:49', '0029', 0.00, '', '2018-02-28', '2018-03-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in februari 2018', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 9292.80, 0.00, 46, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(47, 4, 1, 1, 5, '2018-03-29 05:21:28', '2021-04-06 04:19:49', '2021-04-06 04:19:49', '0030', 0.00, '', '2018-03-30', '2018-04-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in maart 2018', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 12390.40, 0.00, 47, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(48, 4, 1, 1, 5, '2018-04-26 07:11:56', '2021-04-06 04:19:49', '2021-04-06 04:19:49', '0031', 0.00, '', '2018-04-30', '2018-05-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in april 2018', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 11616.00, 0.00, 48, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(49, 4, 1, 1, 5, '2018-05-30 05:33:21', '2021-04-06 04:19:49', '2021-04-06 04:19:49', '0032', 0.00, '', '2018-05-30', '2018-06-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Factuur voor de werkzaamheden in mei 2018', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 4646.40, 0.00, 49, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(50, 6, 1, 1, 5, '2018-06-06 08:25:59', '2021-04-06 04:19:49', '2021-04-06 04:19:49', 'L04169.1', 2.00, '', '2018-05-31', '2018-06-14', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Werkzaamheden mei 2018', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 2447.49, 0.00, 50, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(51, 7, 1, 1, 5, '2018-07-26 12:32:04', '2021-04-06 04:20:05', '2021-04-06 04:20:05', 'support-001', 0.00, '', '2018-08-26', '2018-09-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', '', 0, 0, 0, NULL, NULL, NULL, NULL, '', 0.00, 825.00, 0.00, 51, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(52, 6, 1, 1, 5, '2018-08-25 09:54:53', '2021-04-06 04:19:49', '2021-04-06 04:19:49', 'L04169.2', 2.00, '', '2018-06-30', '2018-07-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Werkzaamheden juni 2018', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 13053.29, 0.00, 52, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(53, 6, 1, 1, 5, '2018-08-25 09:56:15', '2021-04-06 04:20:05', '2021-04-06 04:20:05', 'L04169.3', 2.00, '', '2018-07-30', '2018-08-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Werkzaamheden juli 2018', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 8158.30, 0.00, 53, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(54, 6, 1, 1, 5, '2018-08-31 06:16:40', '2021-04-06 04:20:05', '2021-04-06 04:20:05', 'L04169.4', 2.00, '', '2018-08-01', '2018-08-31', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Werkzaamheden augustus 2018', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 12237.46, 0.00, 54, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(55, 6, 1, 1, 5, '2018-10-23 04:48:04', '2021-04-06 04:20:05', '2021-04-06 04:20:05', 'L04169.5', 2.00, '', '2018-08-31', '2018-09-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Werkzaamheden september 2018', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 13053.29, 0.00, 55, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(56, 14, 1, 1, 1, '2018-10-23 10:45:32', '2019-05-24 10:43:16', '2019-05-24 10:43:16', '0033', 0.00, '', '2018-10-23', '2018-11-22', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', '', 1, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 46772.20, 46772.20, 56, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(57, 6, 1, 1, 1, '2018-10-30 07:42:43', '2021-04-06 04:20:05', '2021-04-06 04:20:05', 'L04169.6', 2.00, '', '2018-10-30', '2018-09-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Werkzaamheden oktober 2018', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 12237.46, 12237.46, 57, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(58, 14, 1, 1, 3, '2019-05-04 05:53:54', '2021-04-06 04:20:05', '2021-04-06 04:20:05', 'Portal fireprotector Fase 1', 0.00, 'K501', '2019-05-24', '2019-06-24', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Inkooporder nr. 50000123-217051', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 21780.00, 21780.00, 58, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(61, 14, 1, 1, 1, '2019-05-24 10:46:49', '2021-04-06 04:20:05', '2021-04-06 04:20:05', 'Portal fireprotector Fase 2', 0.00, 'K501', '2019-05-24', '2019-06-24', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Inkooporder nr. 50000123-217051', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 7260.00, 7260.00, 61, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(59, 14, 1, 1, 1, '2019-05-04 06:03:17', '2019-05-24 10:44:14', '2019-05-24 10:44:14', 'fireprotector-002', 0.00, '', '2019-04-30', '2019-06-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (60\ndagen) tegemoet, onder vermelding van het factuurnummer op\nrekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Overeenkomstig uw opdracht van de heer P. Vlemmix op 20 april \n2018 belasten wij u voor de tweede termijn van de opdracht.', 1, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 14713.60, 14713.60, 59, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(60, 14, 1, 1, 1, '2019-05-04 06:06:04', '2019-05-24 10:44:14', '2019-05-24 10:44:14', 'fireprotector-003', 0.00, '', '2019-04-30', '2019-07-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (90\ndagen) tegemoet, onder vermelding van het factuurnummer op\nrekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Overeenkomstig uw opdracht van de heer P. Vlemmix op 20 april \n2018 belasten wij u voor de derde termijn van de opdracht.', 1, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 9389.60, 9389.60, 60, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(62, 14, 1, 1, 1, '2020-06-19 04:38:06', '2020-06-19 04:38:06', NULL, 'Aaanp. Fireprotector', 0.00, 'K501', '2020-06-19', '2020-07-19', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Inkooporder nr. 50000204', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 1452.00, 1452.00, 62, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(63, 15, 1, 1, 1, '2021-02-22 10:45:28', '2021-02-22 10:45:28', NULL, 'ichubb-001', 0.00, '', '2021-02-22', NULL, 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', '', 0, 0, 0, NULL, NULL, NULL, NULL, '', 0.00, 0.00, 0.00, 63, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(64, 16, 1, 1, 5, '2021-03-31 06:58:06', '2021-04-06 04:20:25', NULL, 'DELTAFIBER-HSG-FEB', 0.00, '', '2021-02-28', '2021-03-28', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', '', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 12390.40, 0.00, 64, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(65, 16, 1, 1, 5, '2021-04-06 04:22:37', '2021-06-03 04:15:58', NULL, 'DELTAFIBER-HSG-MRT', 0.00, '', '2021-03-31', '2021-04-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Werkzaamheden voor de maand maart 2021 bij DeltaFiber', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 16262.40, 0.00, 65, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(66, 16, 1, 1, 1, '2021-04-08 04:16:13', '2021-04-08 04:16:50', NULL, 'DELTAFIBER-HSG-APR', 0.00, '', '2021-03-31', '2021-04-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', 'Werkzaamheden voor de maand april 2021 bij DeltaFiber', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 4259.20, 4259.20, 66, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405'),
(67, 17, 1, 1, 1, '2021-06-02 11:41:57', '2021-06-03 04:17:58', NULL, '0001-05-2021-ANWB-SC1000003109', 0.00, '', '2021-05-31', '2021-06-30', 'Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: NL64INGB0007368249 t.n.v. Kolkmedia.', '', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 7078.50, 7078.50, 67, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Kolkmedia\nLijsterbesdreef 4\n2665 RL Bleiswijk\n06-13830405');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `invoice_designs`
--

CREATE TABLE `invoice_designs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `javascript` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdfmake` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `invoice_designs`
--

INSERT INTO `invoice_designs` (`id`, `name`, `javascript`, `pdfmake`) VALUES
(1, 'Clean', 'var GlobalY=0;//Y position of line at current page\n\n	    var client = invoice.client;\n	    var account = invoice.account;\n	    var currencyId = client.currency_id;\n\n	    layout.headerRight = 550;\n	    layout.rowHeight = 15;\n\n	    doc.setFontSize(9);\n\n	    if (invoice.image)\n	    {\n	      var left = layout.headerRight - invoice.imageWidth;\n	      doc.addImage(invoice.image, \'JPEG\', layout.marginLeft, 30);\n	    }\n	  \n	    if (!invoice.is_pro && logoImages.imageLogo1)\n	    {\n	      pageHeight=820;\n	      y=pageHeight-logoImages.imageLogoHeight1;\n	      doc.addImage(logoImages.imageLogo1, \'JPEG\', layout.marginLeft, y, logoImages.imageLogoWidth1, logoImages.imageLogoHeight1);\n	    }\n\n	    doc.setFontSize(9);\n	    SetPdfColor(\'LightBlue\', doc, \'primary\');\n	    displayAccount(doc, invoice, 220, layout.accountTop, layout);\n\n	    SetPdfColor(\'LightBlue\', doc, \'primary\');\n	    doc.setFontSize(\'11\');\n	    doc.text(50, layout.headerTop, (invoice.is_quote ? invoiceLabels.quote : invoiceLabels.invoice).toUpperCase());\n\n\n	    SetPdfColor(\'Black\',doc); //set black color\n	    doc.setFontSize(9);\n\n	    var invoiceHeight = displayInvoice(doc, invoice, 50, 170, layout);\n	    var clientHeight = displayClient(doc, invoice, 220, 170, layout);\n	    var detailsHeight = Math.max(invoiceHeight, clientHeight);\n	    layout.tableTop = Math.max(layout.tableTop, layout.headerTop + detailsHeight + (3 * layout.rowHeight));\n	   \n	    doc.setLineWidth(0.3);        \n	    doc.setDrawColor(200,200,200);\n	    doc.line(layout.marginLeft - layout.tablePadding, layout.headerTop + 6, layout.marginRight + layout.tablePadding, layout.headerTop + 6);\n	    doc.line(layout.marginLeft - layout.tablePadding, layout.headerTop + detailsHeight + 14, layout.marginRight + layout.tablePadding, layout.headerTop + detailsHeight + 14);\n\n	    doc.setFontSize(10);\n	    doc.setFontType(\'bold\');\n	    displayInvoiceHeader(doc, invoice, layout);\n	    var y = displayInvoiceItems(doc, invoice, layout);\n\n	    doc.setFontSize(9);\n	    doc.setFontType(\'bold\');\n\n	    GlobalY=GlobalY+25;\n\n\n	    doc.setLineWidth(0.3);\n	    doc.setDrawColor(241,241,241);\n	    doc.setFillColor(241,241,241);\n	    var x1 = layout.marginLeft - 12;\n	    var y1 = GlobalY-layout.tablePadding;\n\n	    var w2 = 510 + 24;\n	    var h2 = doc.internal.getFontSize()*3+layout.tablePadding*2;\n\n	    if (invoice.discount) {\n	        h2 += doc.internal.getFontSize()*2;\n	    }\n	    if (invoice.tax_amount) {\n	        h2 += doc.internal.getFontSize()*2;\n	    }\n\n	    //doc.rect(x1, y1, w2, h2, \'FD\');\n\n	    doc.setFontSize(9);\n	    displayNotesAndTerms(doc, layout, invoice, y);\n	    y += displaySubtotals(doc, layout, invoice, y, layout.unitCostRight);\n\n\n	    doc.setFontSize(10);\n	    Msg = invoice.is_quote ? invoiceLabels.total : invoiceLabels.balance_due;\n	    var TmpMsgX = layout.unitCostRight-(doc.getStringUnitWidth(Msg) * doc.internal.getFontSize());\n	    \n	    doc.text(TmpMsgX, y, Msg);\n\n	    SetPdfColor(\'LightBlue\', doc, \'primary\');\n	    AmountText = formatMoney(invoice.balance_amount, currencyId);\n	    headerLeft=layout.headerRight+400;\n	    var AmountX = layout.lineTotalRight - (doc.getStringUnitWidth(AmountText) * doc.internal.getFontSize());\n	    doc.text(AmountX, y, AmountText);', NULL),
(2, 'Bold', '  var GlobalY=0;//Y position of line at current page\n\n			  var client = invoice.client;\n			  var account = invoice.account;\n			  var currencyId = client.currency_id;\n\n			  layout.headerRight = 150;\n			  layout.rowHeight = 15;\n			  layout.headerTop = 125;\n			  layout.tableTop = 300;\n\n			  doc.setLineWidth(0.5);\n\n			  if (OFFLEX.primaryColor) {\n			    setDocHexFill(doc, OFFLEX.primaryColor);\n			    setDocHexDraw(doc, OFFLEX.primaryColor);\n			  } else {\n			    doc.setFillColor(46,43,43);\n			  }  \n\n			  var x1 =0;\n			  var y1 = 0;\n			  var w2 = 595;\n			  var h2 = 100;\n			  doc.rect(x1, y1, w2, h2, \'FD\');\n\n			  if (invoice.image)\n			  {\n			    var left = layout.headerRight - invoice.imageWidth;\n			    doc.addImage(invoice.image, \'JPEG\', layout.marginLeft, 30);\n			  }\n\n			  doc.setLineWidth(0.5);\n			  if (OFFLEX.primaryColor) {\n			    setDocHexFill(doc, OFFLEX.primaryColor);\n			    setDocHexDraw(doc, OFFLEX.primaryColor);\n			  } else {\n			    doc.setFillColor(46,43,43);\n			    doc.setDrawColor(46,43,43);\n			  }  \n\n			  // return doc.setTextColor(240,240,240);//select color Custom Report GRAY Colour\n			  var x1 = 0;//tableLeft-tablePadding ;\n			  var y1 = 750;\n			  var w2 = 596;\n			  var h2 = 94;//doc.internal.getFontSize()*length+length*1.1;//+h;//+tablePadding;\n\n			  doc.rect(x1, y1, w2, h2, \'FD\');\n			  if (!invoice.is_pro && logoImages.imageLogo2)\n			  {\n			      pageHeight=820;\n			      var left = 250;//headerRight ;\n			      y=pageHeight-logoImages.imageLogoHeight2;\n			      var headerRight=370;\n\n			      var left = headerRight - logoImages.imageLogoWidth2;\n			      doc.addImage(logoImages.imageLogo2, \'JPEG\', left, y, logoImages.imageLogoWidth2, logoImages.imageLogoHeight2);\n			  }\n\n			  doc.setFontSize(7);\n			  doc.setFontType(\'bold\');\n			  SetPdfColor(\'White\',doc);\n\n			  displayAccount(doc, invoice, 300, layout.accountTop, layout);\n\n\n			  var y = layout.accountTop;\n			  var left = layout.marginLeft;\n			  var headerY = layout.headerTop;\n\n			  SetPdfColor(\'GrayLogo\',doc); //set black color\n			  doc.setFontSize(7);\n\n			  //show left column\n			  SetPdfColor(\'Black\',doc); //set black color\n			  doc.setFontType(\'normal\');\n\n			  //publish filled box\n			  doc.setDrawColor(200,200,200);\n\n			  if (OFFLEX.secondaryColor) {\n			    setDocHexFill(doc, OFFLEX.secondaryColor);\n			  } else {\n			    doc.setFillColor(54,164,152);  \n			  }  \n\n			  GlobalY=190;\n			  doc.setLineWidth(0.5);\n\n			  var BlockLenght=220;\n			  var x1 =595-BlockLenght;\n			  var y1 = GlobalY-12;\n			  var w2 = BlockLenght;\n			  var h2 = getInvoiceDetailsHeight(invoice, layout) + layout.tablePadding + 2;\n\n			  doc.rect(x1, y1, w2, h2, \'FD\');\n\n			  SetPdfColor(\'SomeGreen\', doc, \'secondary\');\n			  doc.setFontSize(\'14\');\n			  doc.setFontType(\'bold\');\n			  doc.text(50, GlobalY, (invoice.is_quote ? invoiceLabels.your_quote : invoiceLabels.your_invoice).toUpperCase());\n\n\n			  var z=GlobalY;\n			  z=z+30;\n\n			  doc.setFontSize(\'8\');        \n			  SetPdfColor(\'Black\',doc);			  \n        var clientHeight = displayClient(doc, invoice, layout.marginLeft, z, layout);\n        layout.tableTop += Math.max(0, clientHeight - 75);\n			  marginLeft2=395;\n\n			  //publish left side information\n			  SetPdfColor(\'White\',doc);\n			  doc.setFontSize(\'8\');\n			  var detailsHeight = displayInvoice(doc, invoice, marginLeft2, z-25, layout) + 75;\n			  layout.tableTop = Math.max(layout.tableTop, layout.headerTop + detailsHeight + (2 * layout.tablePadding));\n\n			  y=z+60;\n			  x = GlobalY + 100;\n			  doc.setFontType(\'bold\');\n\n			  doc.setFontSize(12);\n			  doc.setFontType(\'bold\');\n			  SetPdfColor(\'Black\',doc);\n			  displayInvoiceHeader(doc, invoice, layout);\n\n			  var y = displayInvoiceItems(doc, invoice, layout);\n			  doc.setLineWidth(0.3);\n			  displayNotesAndTerms(doc, layout, invoice, y);\n			  y += displaySubtotals(doc, layout, invoice, y, layout.unitCostRight);\n\n			  doc.setFontType(\'bold\');\n\n			  doc.setFontSize(12);\n			  x += doc.internal.getFontSize()*4;\n			  Msg = invoice.is_quote ? invoiceLabels.total : invoiceLabels.balance_due;\n			  var TmpMsgX = layout.unitCostRight-(doc.getStringUnitWidth(Msg) * doc.internal.getFontSize());\n\n			  doc.text(TmpMsgX, y, Msg);\n\n			  //SetPdfColor(\'LightBlue\',doc);\n			  AmountText = formatMoney(invoice.balance_amount , currencyId);\n			  headerLeft=layout.headerRight+400;\n			  var AmountX = headerLeft - (doc.getStringUnitWidth(AmountText) * doc.internal.getFontSize());\n			  SetPdfColor(\'SomeGreen\', doc, \'secondary\');\n			  doc.text(AmountX, y, AmountText);', NULL),
(3, 'Modern', '    var client = invoice.client;\n	    var account = invoice.account;\n	    var currencyId = client.currency_id;\n\n	    layout.headerRight = 400;\n	    layout.rowHeight = 15;\n\n\n	    doc.setFontSize(7);\n\n	    // add header\n	    doc.setLineWidth(0.5);\n\n	    if (OFFLEX.primaryColor) {\n	      setDocHexFill(doc, OFFLEX.primaryColor);\n	      setDocHexDraw(doc, OFFLEX.primaryColor);\n	    } else {\n	      doc.setDrawColor(242,101,34);\n	      doc.setFillColor(242,101,34);\n	    }  \n\n	    var x1 =0;\n	    var y1 = 0;\n	    var w2 = 595;\n	    var h2 = Math.max(110, getInvoiceDetailsHeight(invoice, layout) + 30);\n	    doc.rect(x1, y1, w2, h2, \'FD\');\n\n	    SetPdfColor(\'White\',doc);\n\n	    //second column\n	    doc.setFontType(\'bold\');\n	    var name = invoice.account.name;    \n	    if (name) {\n	        doc.setFontSize(\'30\');\n	        doc.setFontType(\'bold\');\n	        doc.text(40, 50, name);\n	    }\n\n	    if (invoice.image)\n	    {\n	        y=130;\n	        var left = layout.headerRight - invoice.imageWidth;\n	        doc.addImage(invoice.image, \'JPEG\', layout.marginLeft, y);\n	    }\n\n	    // add footer \n	    doc.setLineWidth(0.5);\n\n	    if (OFFLEX.primaryColor) {\n	      setDocHexFill(doc, OFFLEX.primaryColor);\n	      setDocHexDraw(doc, OFFLEX.primaryColor);\n	    } else {\n	      doc.setDrawColor(242,101,34);\n	      doc.setFillColor(242,101,34);\n	    }  \n\n	    var x1 = 0;//tableLeft-tablePadding ;\n	    var y1 = 750;\n	    var w2 = 596;\n	    var h2 = 94;//doc.internal.getFontSize()*length+length*1.1;//+h;//+tablePadding;\n\n	    doc.rect(x1, y1, w2, h2, \'FD\');\n\n	    if (!invoice.is_pro && logoImages.imageLogo3)\n	    {\n	        pageHeight=820;\n	      // var left = 25;//250;//headerRight ;\n	        y=pageHeight-logoImages.imageLogoHeight3;\n	        //var headerRight=370;\n\n	        //var left = headerRight - invoice.imageLogoWidth3;\n	        doc.addImage(logoImages.imageLogo3, \'JPEG\', 40, y, logoImages.imageLogoWidth3, logoImages.imageLogoHeight3);\n	    }\n\n	    doc.setFontSize(10);  \n	    var marginLeft = 340;\n	    displayAccount(doc, invoice, marginLeft, 780, layout);\n\n\n	    SetPdfColor(\'White\',doc);    \n	    doc.setFontSize(\'8\');\n	    var detailsHeight = displayInvoice(doc, invoice, layout.headerRight, layout.accountTop-10, layout);\n	    layout.headerTop = Math.max(layout.headerTop, detailsHeight + 50);\n	    layout.tableTop = Math.max(layout.tableTop, detailsHeight + 150);\n\n	    SetPdfColor(\'Black\',doc); //set black color\n	    doc.setFontSize(7);\n	    doc.setFontType(\'normal\');\n	    displayClient(doc, invoice, layout.headerRight, layout.headerTop, layout);\n\n\n	      \n	    SetPdfColor(\'White\',doc);    \n	    doc.setFontType(\'bold\');\n\n	    doc.setLineWidth(0.3);\n	    if (OFFLEX.secondaryColor) {\n	      setDocHexFill(doc, OFFLEX.secondaryColor);\n	      setDocHexDraw(doc, OFFLEX.secondaryColor);\n	    } else {\n	      doc.setDrawColor(63,60,60);\n	      doc.setFillColor(63,60,60);\n	    }  \n\n	    var left = layout.marginLeft - layout.tablePadding;\n	    var top = layout.tableTop - layout.tablePadding;\n	    var width = layout.marginRight - (2 * layout.tablePadding);\n	    var height = 20;\n	    doc.rect(left, top, width, height, \'FD\');\n	    \n\n	    displayInvoiceHeader(doc, invoice, layout);\n	    SetPdfColor(\'Black\',doc);\n	    var y = displayInvoiceItems(doc, invoice, layout);\n\n\n	    var height1 = displayNotesAndTerms(doc, layout, invoice, y);\n	    var height2 = displaySubtotals(doc, layout, invoice, y, layout.unitCostRight);\n	    y += Math.max(height1, height2);\n\n\n	    var left = layout.marginLeft - layout.tablePadding;\n	    var top = y - layout.tablePadding;\n	    var width = layout.marginRight - (2 * layout.tablePadding);\n	    var height = 20;\n	    if (OFFLEX.secondaryColor) {\n	      setDocHexFill(doc, OFFLEX.secondaryColor);\n	      setDocHexDraw(doc, OFFLEX.secondaryColor);\n	    } else {\n	      doc.setDrawColor(63,60,60);\n	      doc.setFillColor(63,60,60);\n	    }  \n	    doc.rect(left, top, width, height, \'FD\');\n	    \n	    doc.setFontType(\'bold\');\n	    SetPdfColor(\'White\', doc);\n	    doc.setFontSize(12);\n	    \n	    var label = invoice.is_quote ? invoiceLabels.total : invoiceLabels.balance_due;\n	    var labelX = layout.unitCostRight-(doc.getStringUnitWidth(label) * doc.internal.getFontSize());\n	    doc.text(labelX, y+2, label);\n\n\n	    doc.setFontType(\'normal\');\n	    var amount = formatMoney(invoice.balance_amount , currencyId);\n	    headerLeft=layout.headerRight+400;\n	    var amountX = layout.lineTotalRight - (doc.getStringUnitWidth(amount) * doc.internal.getFontSize());\n	    doc.text(amountX, y+2, amount);', NULL),
(4, 'Plain', '  var client = invoice.client;\n		  var account = invoice.account;\n		  var currencyId = client.currency_id;  \n		  \n      layout.accountTop += 25;\n      layout.headerTop += 25;\n      layout.tableTop += 25;\n\n		  if (invoice.image)\n		  {\n		    var left = layout.headerRight - invoice.imageWidth;\n		    doc.addImage(invoice.image, \'JPEG\', left, 50);\n		  } \n		  \n		  /* table header */\n		  doc.setDrawColor(200,200,200);\n		  doc.setFillColor(230,230,230);\n		  \n		  var detailsHeight = getInvoiceDetailsHeight(invoice, layout);\n		  var left = layout.headerLeft - layout.tablePadding;\n		  var top = layout.headerTop + detailsHeight - layout.rowHeight - layout.tablePadding;\n		  var width = layout.headerRight - layout.headerLeft + (2 * layout.tablePadding);\n		  var height = layout.rowHeight + 1;\n		  doc.rect(left, top, width, height, \'FD\'); \n\n		  doc.setFontSize(10);\n		  doc.setFontType(\'normal\');\n\n		  displayAccount(doc, invoice, layout.marginLeft, layout.accountTop, layout);\n		  displayClient(doc, invoice, layout.marginLeft, layout.headerTop, layout);\n\n		  displayInvoice(doc, invoice, layout.headerLeft, layout.headerTop, layout, layout.headerRight);\n		  layout.tableTop = Math.max(layout.tableTop, layout.headerTop + detailsHeight + (2 * layout.tablePadding));\n\n		  var headerY = layout.headerTop;\n		  var total = 0;\n\n		  doc.setDrawColor(200,200,200);\n		  doc.setFillColor(230,230,230);\n		  var left = layout.marginLeft - layout.tablePadding;\n		  var top = layout.tableTop - layout.tablePadding;\n		  var width = layout.headerRight - layout.marginLeft + (2 * layout.tablePadding);\n		  var height = layout.rowHeight + 2;\n		  doc.rect(left, top, width, height, \'FD\');   \n\n		  displayInvoiceHeader(doc, invoice, layout);\n		  var y = displayInvoiceItems(doc, invoice, layout);\n\n		  doc.setFontSize(10);\n\n		  displayNotesAndTerms(doc, layout, invoice, y+20);\n\n		  y += displaySubtotals(doc, layout, invoice, y+20, 480) + 20;\n\n		  doc.setDrawColor(200,200,200);\n		  doc.setFillColor(230,230,230);\n		  \n		  var left = layout.footerLeft - layout.tablePadding;\n		  var top = y - layout.tablePadding;\n		  var width = layout.headerRight - layout.footerLeft + (2 * layout.tablePadding);\n		  var height = layout.rowHeight + 2;\n		  doc.rect(left, top, width, height, \'FD\'); \n		  \n		  doc.setFontType(\'bold\');\n		  doc.text(layout.footerLeft, y, invoice.is_quote ? invoiceLabels.total : invoiceLabels.balance_due);\n\n		  total = formatMoney(invoice.balance_amount, currencyId);\n		  var totalX = layout.headerRight - (doc.getStringUnitWidth(total) * doc.internal.getFontSize());\n		  doc.text(totalX, y, total);   \n\n		  if (!invoice.is_pro) {\n		    doc.setFontType(\'normal\');\n		    doc.text(layout.marginLeft, 790, \'Created by offlex.com\');\n		  }', NULL),
(11, 'Aangepast Ontwerp', NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `product_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `cost` decimal(13,2) NOT NULL,
  `qty` decimal(13,2) DEFAULT NULL,
  `tax_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_rate` decimal(13,2) DEFAULT NULL,
  `public_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `account_id`, `user_id`, `invoice_id`, `product_id`, `created_at`, `updated_at`, `deleted_at`, `product_key`, `notes`, `cost`, `qty`, `tax_name`, `tax_rate`, `public_id`) VALUES
(19, 1, 1, 1, 1, '2015-04-24 10:38:00', '2015-04-24 10:38:00', NULL, 'Ontwerp', 'ontwerp werkzaamheden', 1000.00, 2.00, NULL, 0.00, 16),
(3, 1, 1, 2, 1, '2015-04-24 10:10:32', '2015-04-24 10:10:32', NULL, 'Ontwerp', 'ontwerp werkzaamheden', 1000.00, 1.00, NULL, 0.00, 2),
(5, 1, 1, 3, 2, '2015-04-24 10:14:42', '2015-04-24 10:14:42', NULL, 'Frontend modules', 'Ontwikkeling frontend modules', 3000.00, 1.00, NULL, 0.00, 3),
(6, 1, 1, 4, 3, '2015-04-24 10:16:54', '2015-04-24 10:16:54', NULL, 'Inloggen', 'Ontwikkeling module elementen', 390.00, 1.00, NULL, 0.00, 4),
(7, 1, 1, 4, 4, '2015-04-24 10:16:54', '2015-04-24 10:16:54', NULL, 'Offerte', 'Ontwikkeling module elementen', 390.00, 1.00, NULL, 0.00, 5),
(8, 1, 1, 4, 5, '2015-04-24 10:16:54', '2015-04-24 10:16:54', NULL, 'Documenten toevoegen', 'Ontwikkeling module elementen', 390.00, 1.00, NULL, 0.00, 6),
(9, 1, 1, 4, 6, '2015-04-24 10:16:54', '2015-04-24 10:16:54', NULL, 'Prijzen', 'Ontwikkeling module elementen', 390.00, 1.00, NULL, 0.00, 7),
(10, 1, 1, 4, 7, '2015-04-24 10:16:54', '2015-04-24 10:16:54', NULL, 'Maatwerk', 'Ontwikkeling module elementen', 65.00, 6.00, NULL, 0.00, 8),
(21, 1, 1, 5, 9, '2015-04-24 10:40:17', '2015-04-24 10:40:17', NULL, 'Documenten module', 'Ontwikkeling module elementen', 520.00, 1.00, NULL, 0.00, 18),
(20, 1, 1, 5, 8, '2015-04-24 10:40:17', '2015-04-24 10:40:17', NULL, 'Klantomgeving', 'Ontwikkeling module elementen', 1950.00, 1.00, NULL, 0.00, 17),
(13, 1, 1, 6, 5, '2015-04-24 10:21:36', '2015-04-24 10:21:36', NULL, 'Documenten toevoegen', 'Ontwikkeling module elementen', 65.00, 38.00, NULL, 0.00, 11),
(22, 1, 1, 7, 11, '2015-04-24 10:40:58', '2015-04-24 10:40:58', NULL, 'Styling', 'Presentatie aanpassingen fireweb', 2080.00, 1.00, NULL, 0.00, 19),
(23, 1, 1, 8, 14, '2015-04-24 10:41:22', '2015-04-24 10:41:22', NULL, 'Ondersteuning', 'Installatie ondersteuning', 65.00, 33.00, NULL, 0.00, 20),
(16, 1, 1, 9, 16, '2015-04-24 10:29:03', '2015-04-24 10:29:03', NULL, 'Debet', 'Debet factuur', 65.00, 1.00, NULL, 0.00, 14),
(28, 1, 1, 10, 19, '2015-09-15 07:11:30', '2015-09-15 07:11:30', NULL, 'Hertek onderhoud', 'Onderhoud en uitbreiding werkzaamheden hertek -\r\nfireweb', 65.00, 10.00, NULL, 0.00, 24),
(24, 1, 1, 11, 1, '2015-04-24 12:07:32', '2015-04-24 12:07:32', NULL, 'Ontwerp', 'ontwerp werkzaamheden', 1000.00, 1.00, NULL, 0.00, 21),
(25, 1, 1, 12, 1, '2015-04-24 14:35:03', '2015-04-24 14:35:03', NULL, 'Ontwerp', 'ontwerp werkzaamheden', 1000.00, 1.00, NULL, 0.00, 22),
(27, 1, 1, 13, 17, '2015-09-15 07:10:55', '2015-09-15 07:10:55', NULL, 'A3 administratie', 'Boekhoud werkzaamheden A3 administratie', 150.00, 1.00, NULL, 0.00, 23),
(85, 1, 1, 14, 20, '2016-01-29 08:58:30', '2016-01-29 08:58:30', NULL, '[ING007]', 'Fast Flex Interim Professionals', 80.00, 176.00, NULL, 0.00, 34),
(73, 1, 1, 15, 20, '2015-11-27 07:49:15', '2015-11-27 07:49:15', NULL, '[ING007]', 'Fast Flex Interim Professionals', 80.00, 168.00, NULL, 0.00, 30),
(74, 1, 1, 16, 20, '2015-11-30 09:39:32', '2015-11-30 09:39:32', NULL, '[ING007]', 'Fast Flex Interim Professionals', 80.00, 168.00, NULL, 0.00, 31),
(78, 1, 1, 17, 20, '2015-12-21 09:26:13', '2015-12-21 09:26:13', NULL, '[ING007]', 'Fast Flex Interim Professionals', 80.00, 112.00, NULL, 0.00, 32),
(84, 1, 1, 18, 20, '2016-01-29 08:57:59', '2016-01-29 08:57:59', NULL, '[ING007]', 'Fast Flex Interim Professionals', 80.00, 152.00, NULL, 0.00, 33),
(88, 1, 1, 19, 20, '2016-03-08 15:10:20', '2016-03-08 15:10:20', NULL, '[ING007]', 'Fast Flex Interim Professionals', 80.00, 152.00, NULL, 0.00, 35),
(93, 1, 1, 20, 20, '2016-03-31 15:16:19', '2016-03-31 15:16:19', NULL, '[ING007]', 'Fast Flex Interim Professionals', 80.00, 176.00, NULL, 0.00, 36),
(97, 1, 1, 21, 20, '2016-04-29 07:07:09', '2016-04-29 07:07:09', NULL, '[ING007]', 'Fast Flex Interim Professionals', 80.00, 152.00, NULL, 0.00, 37),
(100, 1, 1, 22, 20, '2016-05-30 07:08:48', '2016-05-30 07:08:48', NULL, '[ING007]', 'Fast Flex Interim Professionals', 80.00, 120.00, NULL, 0.00, 38),
(127, 1, 1, 23, 22, '2016-07-20 06:19:14', '2016-07-20 06:19:14', NULL, 'AHOLD015', 'Sam Categorie 2 ontwikkeling', 75.00, 136.00, NULL, 0.00, 51),
(133, 1, 1, 24, 23, '2016-08-12 05:42:51', '2016-08-12 05:42:51', NULL, '1252486', 'APPLE AIRPORT EXTREME', 160.33, 1.00, NULL, 0.00, 54),
(134, 1, 1, 24, 24, '2016-08-12 05:42:51', '2016-08-12 05:42:51', NULL, '1186804', 'APPLE USB SUPERDRIVE', 68.59, 1.00, NULL, 0.00, 55),
(135, 1, 1, 24, 25, '2016-08-12 05:42:51', '2016-08-12 05:42:51', NULL, '1412957', 'APPLE IMAC 27\' 5K 3.2GI5', 1731.21, 1.00, NULL, 0.00, 56),
(129, 1, 1, 25, 26, '2016-07-20 06:23:17', '2016-07-20 06:23:17', NULL, 'AHOLD011', 'Inzet Mahmut', 75.00, 24.00, NULL, 0.00, 53),
(128, 1, 1, 25, 22, '2016-07-20 06:23:17', '2016-07-20 06:23:17', NULL, 'AHOLD015', 'Sam Categorie 2 ontwikkeling', 75.00, 64.00, NULL, 0.00, 52),
(151, 1, 1, 26, 29, '2016-09-30 05:41:27', '2016-09-30 05:41:27', NULL, 'KPN142', 'KPN S&I offerte GX development open team -\nPO3200911', 80.00, 116.00, NULL, 0.00, 61),
(152, 1, 1, 27, 29, '2016-10-31 08:01:04', '2016-10-31 08:01:04', NULL, 'KPN142', 'KPN S&I offerte GX development open team -\nPO3200911', 80.00, 136.00, NULL, 0.00, 62),
(154, 1, 1, 28, 29, '2016-11-30 11:18:20', '2016-11-30 11:18:20', NULL, 'KPN142', 'KPN S&I offerte GX development open team -\nPO3200911', 80.00, 128.00, NULL, 0.00, 63),
(160, 1, 1, 29, 29, '2017-01-16 08:06:39', '2017-01-16 08:06:39', NULL, 'KPN142', 'KPN S&I offerte GX development open team -\nPO3200911', 80.00, 6.00, NULL, 0.00, 66),
(162, 1, 1, 30, 29, '2017-01-30 08:03:31', '2017-01-30 08:03:31', NULL, 'KPN142', 'KPN S&I offerte GX development open team -\nPO3200911', 80.00, 42.00, NULL, 0.00, 67),
(167, 1, 1, 31, 29, '2017-01-31 08:31:11', '2017-01-31 08:31:11', NULL, 'KPN142', 'KPN S&I offerte GX development open team -\nPO3200911', 80.00, 100.00, NULL, 0.00, 68),
(170, 1, 1, 32, 30, '2017-03-01 13:48:00', '2017-03-01 13:48:00', NULL, 'KPNS&I011', 'KPN - GX development open team feb/mrt\n2017', 80.00, 120.00, NULL, 0.00, 69),
(174, 1, 1, 33, 30, '2017-04-28 07:57:56', '2017-04-28 07:57:56', NULL, 'KPNS&I011', 'KPN - GX development open team feb/mrt\n2017', 80.00, 148.00, NULL, 0.00, 70),
(176, 1, 1, 34, 31, '2017-04-28 08:11:19', '2017-04-28 08:11:19', NULL, 'KPNS&I013', 'KPN - GX development open team Q2 2017 -\nPO3228310', 80.00, 100.00, NULL, 0.00, 71),
(178, 1, 1, 35, 31, '2017-05-31 05:00:08', '2017-05-31 05:00:08', NULL, 'KPNS&I013', 'KPN - GX development open team Q2 2017 -\nPO3228310', 80.00, 96.00, NULL, 0.00, 72),
(180, 1, 1, 36, 31, '2017-06-30 06:42:07', '2017-06-30 06:42:07', NULL, 'KPNS&I013', 'KPN - GX development open team Q2 2017 -\nPO3228310', 80.00, 128.00, NULL, 0.00, 73),
(182, 1, 1, 37, 31, '2017-07-31 06:57:30', '2017-07-31 06:57:30', NULL, 'KPNS&I013', 'KPN - GX development open team Q3 2017 -\n PO??????', 80.00, 128.00, NULL, 0.00, 74),
(196, 1, 1, 38, 32, '2017-10-26 04:16:25', '2017-10-26 04:16:25', NULL, 'KPNS&I016', 'GX development open team Q3 207 -\nPO 3239692', 80.00, 112.00, NULL, 0.00, 79),
(188, 1, 1, 39, 32, '2017-09-28 12:43:07', '2017-09-28 12:43:07', NULL, 'KPNS&I016', 'GX development open team Q3 207 -\nPO 3239692', 80.00, 120.00, NULL, 0.00, 76),
(194, 1, 1, 40, 32, '2017-10-16 12:18:23', '2017-10-16 12:18:23', NULL, 'KPNS&I016', 'GX development open team Q3 207 -\nPO 3239692', 80.00, -1.00, NULL, 0.00, 77),
(195, 1, 1, 41, 32, '2017-10-16 12:18:50', '2017-10-16 12:18:50', NULL, 'KPNS&I016', 'GX development open team Q3 207 -\nPO 3239692', 80.00, -7.00, NULL, 0.00, 78),
(200, 1, 1, 42, 32, '2017-10-27 06:35:17', '2017-10-27 06:35:17', NULL, 'KPNS&I016', 'GX development open team Q3 207 -\nPO 3239692', 80.00, 96.00, NULL, 0.00, 80),
(205, 1, 1, 43, 32, '2017-11-30 13:29:07', '2017-11-30 13:29:07', NULL, 'KPNS&I016', 'GX development open team Q3 207 -\nPO 3239692', 80.00, 120.00, NULL, 0.00, 81),
(207, 1, 1, 44, 32, '2017-12-29 08:01:00', '2017-12-29 08:01:00', NULL, 'KPNS&I016', 'GX development open team Q3 207 -\nPO 3239692', 80.00, 64.00, NULL, 0.00, 82),
(217, 1, 1, 45, 33, '2018-02-28 06:52:17', '2018-02-28 06:52:17', NULL, 'KPNS&I026', 'GX development open team Q1 2018', 80.00, 136.00, NULL, 0.00, 85),
(219, 1, 1, 46, 33, '2018-03-29 05:21:04', '2018-03-29 05:21:04', NULL, 'KPNS&I026', 'GX development open team Q1 2018', 80.00, 96.00, NULL, 0.00, 86),
(222, 1, 1, 47, 33, '2018-03-30 07:54:24', '2018-03-30 07:54:24', NULL, 'KPNS&I026', 'GX development open team Q1 2018', 80.00, 128.00, NULL, 0.00, 87),
(224, 1, 1, 48, 34, '2018-04-30 04:50:10', '2018-04-30 04:50:10', NULL, 'KPNS&I027', 'GX development april + mei', 80.00, 120.00, NULL, 0.00, 88),
(226, 1, 1, 49, 34, '2018-05-30 05:33:38', '2018-05-30 05:33:38', NULL, 'KPNS&I027', 'GX development april + mei', 80.00, 48.00, NULL, 0.00, 89),
(228, 1, 1, 50, 35, '2018-06-06 08:30:25', '2018-06-06 08:30:25', NULL, 'O-2018-1323-FF', 'Nationale Nederlanden CMS', 86.00, 24.00, NULL, 0.00, 90),
(244, 1, 1, 51, 39, '2018-08-31 06:39:02', '2018-08-31 06:39:02', NULL, 'support-001-2', 'werkzaamheden portals (sortering\nproducten op prijs)', 75.00, 8.00, NULL, 0.00, 97),
(243, 1, 1, 51, 38, '2018-08-31 06:39:02', '2018-08-31 06:39:02', NULL, 'support-001-1', 'werkzaamheden portals (code\nreview)', 75.00, 3.00, NULL, 0.00, 96),
(239, 1, 1, 52, 35, '2018-08-25 09:55:16', '2018-08-25 09:55:16', NULL, 'O-2018-1323-FF', 'Nationale Nederlanden CMS', 86.00, 128.00, NULL, 0.00, 93),
(240, 1, 1, 53, 35, '2018-08-25 09:56:15', '2018-08-25 09:56:15', NULL, 'O-2018-1323-FF', 'Nationale Nederlanden CMS', 86.00, 80.00, NULL, 0.00, 94),
(248, 1, 1, 54, 35, '2018-10-23 04:49:42', '2018-10-23 04:49:42', NULL, 'O-2018-1323-FF', 'Nationale Nederlanden CMS', 86.00, 120.00, NULL, 0.00, 99),
(249, 1, 1, 55, 35, '2018-10-23 04:50:12', '2018-10-23 04:50:12', NULL, 'O-2018-1323-FF', 'Nationale Nederlanden CMS', 86.00, 128.00, NULL, 0.00, 100),
(320, 1, 1, 56, 44, '2018-10-23 11:34:50', '2018-10-23 11:34:50', NULL, '', 'Documentbeheer: aanmaken - bewerken -\nverwijderen', 80.00, 60.00, NULL, 0.00, 112),
(319, 1, 1, 56, 44, '2018-10-23 11:34:50', '2018-10-23 11:34:50', NULL, '', 'Gebruikersbeheer: partner gegevens\nbeheren - aanmaken - bewerken - verwijderen', 80.00, 60.00, NULL, 0.00, 111),
(318, 1, 1, 56, 44, '2018-10-23 11:34:50', '2018-10-23 11:34:50', NULL, '', 'Gebruikersbeheer: gebruiker gegevens\nbeheren - aanmaken - bewerken - verwijderen', 80.00, 60.00, NULL, 0.00, 110),
(317, 1, 1, 56, 44, '2018-10-23 11:34:50', '2018-10-23 11:34:50', NULL, '', 'Gebruikersbeheer: Inloggen - accountgegevens\nbeheren - aanmaken - bewerken - verwijderen', 80.00, 60.00, NULL, 0.00, 109),
(315, 1, 1, 56, 42, '2018-10-23 11:34:50', '2018-10-23 11:34:50', NULL, 'Database', 'Aanleggen relationeel database model', 80.00, 40.00, NULL, 0.00, 107),
(316, 1, 1, 56, 44, '2018-10-23 11:34:50', '2018-10-23 11:34:50', NULL, 'Ontwikkeling', 'Offertebeheer: aanmaken - bewerken - verwijderen', 80.00, 60.00, NULL, 0.00, 108),
(312, 1, 1, 56, 40, '2018-10-23 11:34:50', '2018-10-23 11:34:50', NULL, '', 'www.fireprotector.be (1 jaar)', 2.95, 1.00, NULL, 0.00, 104),
(313, 1, 1, 56, 41, '2018-10-23 11:34:50', '2018-10-23 11:34:50', NULL, 'Ontwerp', 'Ontwerp webapplicatie', 80.00, 40.00, NULL, 0.00, 105),
(314, 1, 1, 56, 41, '2018-10-23 11:34:50', '2018-10-23 11:34:50', NULL, '', 'Ontwerp mobiele versie webapplicatie', 80.00, 40.00, NULL, 0.00, 106),
(311, 1, 1, 56, 40, '2018-10-23 11:34:50', '2018-10-23 11:34:50', NULL, '', 'www.fireprotector.eu (1 jaar)', 4.95, 1.00, NULL, 0.00, 103),
(310, 1, 1, 56, 40, '2018-10-23 11:34:50', '2018-10-23 11:34:50', NULL, '', 'www.fireprotector.nl (3 jaar)', 5.95, 3.00, NULL, 0.00, 102),
(309, 1, 1, 56, 40, '2018-10-23 11:34:50', '2018-10-23 11:34:50', NULL, 'Hosting', 'Hostingpakket neostrada\nPremium Professional \"fireprotector.nl\" (3 jaar)', 76.32, 3.00, NULL, 0.00, 101),
(321, 1, 1, 56, 44, '2018-10-23 11:34:50', '2018-10-23 11:34:50', NULL, '', 'Klantbeheer: aanmaken - bewerken - verwijderen', 80.00, 60.00, NULL, 0.00, 113),
(325, 1, 1, 57, 35, '2019-01-22 12:38:03', '2019-01-22 12:38:03', NULL, 'O-2018-1323-FF', 'Nationale Nederlanden CMS', 86.00, 120.00, NULL, 0.00, 114),
(339, 1, 1, 58, 49, '2019-05-24 10:44:27', '2019-05-24 10:44:27', NULL, 'K501', 'Fase 1 portal en werken offerte systeem\nopgeleverd 5-4-2019 - Inkooporder nr.\n50000123-217051', 75.00, 240.00, NULL, 0.00, 118),
(332, 1, 1, 59, 46, '2019-05-04 06:04:44', '2019-05-04 06:04:44', NULL, 'fireprotector-002', 'Ontwikkeling brandblusportal fireprotector.nl', 80.00, 152.00, NULL, 0.00, 116),
(333, 1, 1, 60, 47, '2019-05-04 06:06:04', '2019-05-04 06:06:04', NULL, 'fireprotector-003', 'Oplevering brandblusportal fireprotector.nl', 80.00, 97.00, NULL, 0.00, 117),
(340, 1, 1, 61, 49, '2019-05-24 10:46:49', '2019-05-24 10:46:49', NULL, 'K501', 'Fase 2 procesflow zoals besproken, verwachte lev.\n3e wk juni - Inkooporder nr. 50000123-217051', 75.00, 80.00, NULL, 0.00, 119),
(341, 1, 1, 62, 49, '2020-06-19 04:38:06', '2020-06-19 04:38:06', NULL, 'K501', 'Inkoop binnenland,\nImplementeren prijzen 2020\nOpstellen gebruikershandleiding\nOpstellen administratorhandleiding', 75.00, 16.00, NULL, 0.00, 120),
(343, 1, 1, 64, 50, '2021-03-31 07:12:49', '2021-03-31 07:12:49', NULL, 'Inhuur V. vd Kolk', 'Inhuur V. vd Kolk Jan-Mrt 2021 Deltafiber maand\nfebruari 2021', 80.00, 128.00, NULL, 0.00, 121),
(352, 1, 1, 65, 50, '2021-04-08 04:17:20', '2021-04-08 04:17:20', NULL, 'Inhuur V. vd Kolk', 'IRDF21A00716_10000 - Inhuur V. vd Kolk Mrt-Apr\n2021 Deltafiber maand maart - april 2021', 80.00, 168.00, NULL, 0.00, 124),
(351, 1, 1, 66, 50, '2021-04-08 04:16:50', '2021-04-08 04:16:50', NULL, 'Inhuur V. vd Kolk', 'IRDF21A00716_10000 - Inhuur V. vd Kolk Mrt-Apr\n2021 Deltafiber maand maart - april 2021', 80.00, 44.00, NULL, 0.00, 123),
(357, 1, 1, 67, 51, '2021-06-03 04:17:58', '2021-06-03 04:17:58', NULL, 'SC1000003109', 'Werkzaamheden mei 2021uitgevoerd voor de ANWB', 75.00, 78.00, NULL, 0.00, 125);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `invoice_statuses`
--

CREATE TABLE `invoice_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `invoice_statuses`
--

INSERT INTO `invoice_statuses` (`id`, `name`) VALUES
(1, 'Concept'),
(2, 'Verzonden'),
(3, 'Bekeken'),
(4, 'Gedeeltelijk'),
(5, 'Betaald');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `languages`
--

INSERT INTO `languages` (`id`, `name`, `locale`) VALUES
(1, 'Engels', 'en'),
(2, 'Italiaans', 'it'),
(3, 'Duits', 'de'),
(4, 'Frans', 'fr'),
(5, 'Portugeese', 'pt_BR'),
(6, 'Nederlands', 'nl'),
(7, 'Spaans', 'es'),
(8, 'Noors', 'nb_NO'),
(9, 'Danish', 'da');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `licenses`
--

CREATE TABLE `licenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `affiliate_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `license_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_claimed` tinyint(1) NOT NULL,
  `transaction_reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2013_11_05_180133_confide_setup_users_table', 1),
('2013_11_28_195703_setup_countries_table', 1),
('2014_02_13_151500_add_cascase_drops', 1),
('2014_02_19_151817_add_support_for_invoice_designs', 1),
('2014_03_03_155556_add_phone_to_account', 1),
('2014_03_19_201454_add_language_support', 1),
('2014_03_20_200300_create_payment_libraries', 1),
('2014_03_23_051736_enable_forcing_jspdf', 1),
('2014_03_25_102200_add_sort_and_recommended_to_gateways', 1),
('2014_04_03_191105_add_pro_plan', 1),
('2014_04_17_100523_add_remember_token', 1),
('2014_04_17_145108_add_custom_fields', 1),
('2014_04_23_170909_add_products_settings', 1),
('2014_04_29_174315_add_advanced_settings', 1),
('2014_05_17_175626_add_quotes', 1),
('2014_06_17_131940_add_accepted_credit_cards_to_account_gateways', 1),
('2014_07_13_142654_one_click_install', 1),
('2014_07_17_205900_support_hiding_quantity', 1),
('2014_07_24_171214_add_zapier_support', 1),
('2014_10_01_141248_add_company_vat_number', 1),
('2014_10_05_141856_track_last_seen_message', 1),
('2014_10_06_103529_add_timesheets', 1),
('2014_10_06_195330_add_invoice_design_table', 1),
('2014_10_13_054100_add_invoice_number_settings', 1),
('2014_10_14_225227_add_danish_translation', 1),
('2014_10_22_174452_add_affiliate_price', 1),
('2014_10_30_184126_add_company_id_number', 1),
('2014_11_04_200406_allow_null_client_currency', 1),
('2014_12_03_154119_add_discount_type', 1),
('2015_02_12_102940_add_email_templates', 1),
('2015_02_17_131714_support_token_billing', 1),
('2015_02_27_081836_add_invoice_footer', 1),
('2015_03_03_140259_add_tokens', 1),
('2015_03_09_151011_add_ip_to_activity', 1),
('2015_03_15_174122_add_pdf_email_attachment_option', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_reminders`
--

CREATE TABLE `password_reminders` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `password_reminders`
--

INSERT INTO `password_reminders` (`email`, `created_at`, `updated_at`, `token`) VALUES
('vincent@kolkmedia.com', '2015-04-25 07:10:12', '0000-00-00 00:00:00', 'e73fe154dc7130faa291d4542a5a1f39'),
('vincent@kolkmedia.com', '2015-04-28 12:09:37', '0000-00-00 00:00:00', 'a33f858390ec7132769e6f4e85205215');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `contact_id` int(10) UNSIGNED DEFAULT NULL,
  `invitation_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `account_gateway_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_type_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `amount` decimal(13,2) NOT NULL,
  `payment_date` date DEFAULT NULL,
  `transaction_reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `payments`
--

INSERT INTO `payments` (`id`, `invoice_id`, `account_id`, `client_id`, `contact_id`, `invitation_id`, `user_id`, `account_gateway_id`, `payment_type_id`, `created_at`, `updated_at`, `deleted_at`, `is_deleted`, `amount`, `payment_date`, `transaction_reference`, `payer_id`, `public_id`) VALUES
(1, 1, 1, 3, NULL, NULL, 1, NULL, NULL, '2015-04-24 10:34:39', '2015-04-24 10:34:39', NULL, 0, 2380.00, '2015-04-24', '', NULL, 1),
(2, 2, 1, 3, NULL, NULL, 1, NULL, NULL, '2015-04-24 10:34:53', '2015-04-24 10:34:53', NULL, 0, 1190.00, '2015-04-24', '', NULL, 2),
(3, 3, 1, 3, NULL, NULL, 1, NULL, NULL, '2015-04-24 10:35:03', '2015-04-24 10:35:03', NULL, 0, 3630.00, '2015-04-24', '', NULL, 3),
(4, 4, 1, 3, NULL, NULL, 1, NULL, NULL, '2015-04-24 10:35:14', '2015-04-24 10:35:14', NULL, 0, 2359.50, '2015-04-24', '', NULL, 4),
(5, 5, 1, 3, NULL, NULL, 1, NULL, NULL, '2015-04-24 10:35:23', '2015-04-24 10:35:23', NULL, 0, 2988.70, '2015-04-24', '', NULL, 5),
(6, 6, 1, 3, NULL, NULL, 1, NULL, NULL, '2015-04-24 10:35:33', '2015-04-24 10:35:33', NULL, 0, 2988.70, '2015-04-24', '', NULL, 6),
(7, 7, 1, 3, NULL, NULL, 1, NULL, NULL, '2015-04-24 10:35:44', '2015-04-24 10:35:44', NULL, 0, 2516.80, '2015-04-24', '', NULL, 7),
(8, 10, 1, 2, NULL, NULL, 1, NULL, NULL, '2015-04-24 10:35:57', '2015-04-24 10:35:57', NULL, 0, 786.50, '2015-04-24', '', NULL, 8),
(9, 8, 1, 3, NULL, NULL, 1, NULL, NULL, '2015-04-24 10:36:25', '2015-04-24 10:36:25', NULL, 0, 2595.45, '2015-04-24', '', NULL, 9),
(10, 13, 1, 1, NULL, NULL, 1, NULL, 2, '2015-05-20 08:20:15', '2015-05-20 08:20:15', NULL, 0, 181.50, '2015-05-20', 'fact. nr. 150536', NULL, 10),
(11, 14, 1, 4, NULL, NULL, 1, NULL, 2, '2015-10-28 16:25:40', '2015-10-28 16:25:40', NULL, 0, 17036.80, '2015-10-28', '', NULL, 11),
(12, 15, 1, 4, NULL, NULL, 1, NULL, 2, '2015-11-27 07:43:56', '2015-11-27 07:43:56', NULL, 0, 16262.40, '2015-11-27', 'werkzaamheden maand oktober', NULL, 12),
(13, 17, 1, 4, NULL, NULL, 1, NULL, 2, '2016-01-21 08:44:10', '2016-01-21 08:44:10', NULL, 0, 10841.60, '2016-01-20', '', NULL, 13),
(14, 16, 1, 4, NULL, NULL, 1, NULL, 2, '2016-01-21 08:45:08', '2016-01-21 08:45:08', NULL, 0, 16262.40, '2016-12-30', '', NULL, 14),
(15, 18, 1, 4, NULL, NULL, 1, NULL, 2, '2016-02-24 11:21:12', '2016-02-24 11:21:12', NULL, 0, 14713.60, '2016-02-24', 'Factuur Januari 2016', NULL, 15),
(16, 19, 1, 4, NULL, NULL, 1, NULL, 2, '2016-03-26 08:42:36', '2016-03-26 08:42:36', NULL, 0, 14713.60, '2016-03-26', '', NULL, 16),
(17, 20, 1, 4, NULL, NULL, 1, NULL, 2, '2016-04-08 15:49:49', '2016-04-08 15:49:49', NULL, 0, 17036.80, '2016-04-07', '', NULL, 17),
(18, 21, 1, 4, NULL, NULL, 1, NULL, 2, '2016-05-28 12:01:08', '2016-05-28 12:01:08', NULL, 0, 14713.60, '2016-05-28', 'Werkzaamheden maand april 2016', NULL, 18),
(19, 22, 1, 4, NULL, NULL, 1, NULL, 2, '2016-06-29 09:59:20', '2016-06-29 09:59:20', NULL, 0, 11616.00, '2016-06-29', '', NULL, 19),
(20, 24, 1, 5, NULL, NULL, 1, NULL, 2, '2016-07-20 06:23:52', '2016-07-20 06:23:52', NULL, 0, 1960.13, '2016-07-20', 'Betaling hardware', NULL, 20),
(21, 23, 1, 4, NULL, NULL, 1, NULL, 2, '2016-08-12 05:41:06', '2016-08-12 05:41:06', NULL, 0, 12342.00, '2016-08-12', '', NULL, 21),
(22, 25, 1, 4, NULL, NULL, 1, NULL, 2, '2016-08-12 05:41:49', '2016-08-12 05:41:49', NULL, 0, 7986.00, '2016-08-12', '', NULL, 22),
(23, 24, 1, 5, NULL, NULL, 1, NULL, 2, '2016-08-12 05:43:11', '2016-08-12 05:43:11', NULL, 0, 0.00, '2016-08-12', '', NULL, 23),
(24, 26, 1, 4, NULL, NULL, 1, NULL, 2, '2016-10-31 15:50:22', '2016-10-31 15:50:22', NULL, 0, 11228.80, '2016-10-31', 'Factuur september', NULL, 24),
(25, 27, 1, 4, NULL, NULL, 1, NULL, 2, '2016-12-15 07:09:00', '2016-12-15 07:09:00', NULL, 0, 13164.80, '2016-12-15', '', NULL, 25),
(26, 29, 1, 4, NULL, NULL, 1, NULL, 2, '2017-01-30 08:04:29', '2017-01-30 08:04:29', NULL, 0, 580.80, '2017-01-30', '', NULL, 26),
(27, 28, 1, 4, NULL, NULL, 1, NULL, 2, '2017-01-30 08:05:08', '2017-01-30 08:05:08', NULL, 0, 12390.40, '2017-01-30', '', NULL, 27),
(28, 31, 1, 4, NULL, NULL, 1, NULL, 2, '2017-03-01 13:38:54', '2017-03-01 13:38:54', NULL, 0, 9680.00, '2017-03-01', '', NULL, 28),
(29, 30, 1, 4, NULL, NULL, 1, NULL, 2, '2017-03-01 13:39:27', '2017-03-01 13:39:27', NULL, 0, 4065.60, '2017-03-01', '', NULL, 29),
(30, 32, 1, 4, NULL, NULL, 1, NULL, 2, '2017-04-06 12:29:33', '2017-04-06 12:29:33', NULL, 0, 11616.00, '2017-04-06', '', NULL, 30),
(31, 33, 1, 4, NULL, NULL, 1, NULL, 2, '2017-04-28 07:12:24', '2017-04-28 07:12:24', NULL, 0, 14326.40, '2017-04-28', '', NULL, 31),
(32, 34, 1, 4, NULL, NULL, 1, NULL, 2, '2017-05-30 05:18:43', '2017-05-30 05:18:43', NULL, 0, 9680.00, '2017-05-30', '', NULL, 32),
(33, 35, 1, 4, NULL, NULL, 1, NULL, 2, '2017-06-30 06:38:07', '2017-06-30 06:38:07', NULL, 0, 9292.80, '2017-06-30', '', NULL, 33),
(34, 36, 1, 4, NULL, NULL, 1, NULL, 2, '2017-07-28 05:43:04', '2017-07-28 05:43:04', NULL, 0, 12390.40, '2017-07-28', '', NULL, 34),
(35, 37, 1, 4, NULL, NULL, 1, NULL, 2, '2017-08-30 07:52:17', '2017-08-30 07:52:17', NULL, 0, 12390.40, '2017-08-30', '', NULL, 35),
(36, 38, 1, 4, NULL, NULL, 1, NULL, 2, '2017-10-26 04:17:22', '2017-10-26 04:17:22', NULL, 0, 10841.60, '2017-10-26', '', NULL, 36),
(37, 39, 1, 4, NULL, NULL, 1, NULL, 2, '2017-11-30 09:17:03', '2017-11-30 09:17:03', NULL, 0, 11616.00, '2017-11-30', '', NULL, 37),
(38, 42, 1, 4, NULL, NULL, 1, NULL, 2, '2017-11-30 09:17:23', '2017-11-30 09:17:23', NULL, 0, 9292.80, '2017-11-30', '', NULL, 38),
(39, 43, 1, 4, NULL, NULL, 1, NULL, 2, '2017-12-29 07:58:35', '2017-12-29 07:58:35', NULL, 0, 11616.00, '2017-12-29', '', NULL, 39),
(40, 44, 1, 4, NULL, NULL, 1, NULL, 2, '2018-01-26 07:33:56', '2018-01-26 07:33:56', NULL, 0, 6195.20, '2018-01-26', '', NULL, 40),
(41, 45, 1, 4, NULL, NULL, 1, NULL, 2, '2018-03-22 11:35:21', '2018-03-22 11:35:21', NULL, 0, 13164.80, '2018-03-22', '', NULL, 41),
(42, 46, 1, 4, NULL, NULL, 1, NULL, 2, '2018-03-30 07:52:27', '2018-03-30 07:52:27', NULL, 0, 9292.80, '2018-03-30', '', NULL, 42),
(43, 47, 1, 4, NULL, NULL, 1, NULL, 2, '2018-05-30 05:29:09', '2018-05-30 05:29:09', NULL, 0, 12390.40, '2018-05-30', '', NULL, 43),
(44, 48, 1, 4, NULL, NULL, 1, NULL, 2, '2018-06-06 08:16:49', '2018-06-06 08:16:49', NULL, 0, 11616.00, '2018-06-06', '', NULL, 44),
(45, 49, 1, 4, NULL, NULL, 1, NULL, NULL, '2018-08-25 09:49:03', '2018-08-25 09:49:03', NULL, 0, 4646.40, '2018-08-25', '', NULL, 45),
(46, 50, 1, 6, NULL, NULL, 1, NULL, NULL, '2018-08-25 09:50:00', '2018-08-25 09:50:00', NULL, 0, 2447.49, '2018-08-25', '', NULL, 46),
(47, 52, 1, 6, NULL, NULL, 1, NULL, NULL, '2018-08-25 09:56:45', '2018-08-25 09:56:45', NULL, 0, 13053.29, '2018-08-25', '', NULL, 47),
(48, 53, 1, 6, NULL, NULL, 1, NULL, NULL, '2018-08-25 09:57:00', '2018-08-25 09:57:00', NULL, 0, 8158.30, '2018-08-25', '', NULL, 48),
(49, 51, 1, 7, NULL, NULL, 1, NULL, NULL, '2018-08-31 06:14:44', '2018-08-31 06:14:44', NULL, 0, 825.00, '2018-08-31', '', NULL, 49),
(50, 54, 1, 6, NULL, NULL, 1, NULL, NULL, '2018-08-31 06:16:51', '2018-08-31 06:16:51', NULL, 0, 12237.46, '2018-08-31', '', NULL, 50),
(51, 55, 1, 6, NULL, NULL, 1, NULL, NULL, '2018-10-23 04:51:34', '2018-10-23 04:51:34', NULL, 0, 13053.29, '2018-10-23', '', NULL, 51),
(52, 64, 1, 16, NULL, NULL, 1, NULL, 2, '2021-04-06 04:20:25', '2021-04-06 04:20:25', NULL, 0, 12390.40, '2021-04-06', '', NULL, 52),
(53, 65, 1, 16, NULL, NULL, 1, NULL, NULL, '2021-06-03 04:15:58', '2021-06-03 04:15:58', NULL, 0, 16262.40, '2021-06-03', '', NULL, 53);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `payment_libraries`
--

CREATE TABLE `payment_libraries` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `payment_libraries`
--

INSERT INTO `payment_libraries` (`id`, `created_at`, `updated_at`, `name`, `visible`) VALUES
(1, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'Omnipay', 1),
(2, '2015-04-24 09:35:19', '2015-04-24 09:35:19', 'PHP-Payments', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `payment_terms`
--

CREATE TABLE `payment_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `num_days` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `payment_terms`
--

INSERT INTO `payment_terms` (`id`, `num_days`, `name`) VALUES
(1, 7, '7 dagen'),
(2, 10, '10 dagen'),
(3, 14, '14 dagen'),
(4, 15, '15 dagen'),
(5, 30, '30 dagen'),
(6, 60, '60 dagen'),
(7, 90, '90 dagen');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `payment_types`
--

CREATE TABLE `payment_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `payment_types`
--

INSERT INTO `payment_types` (`id`, `name`) VALUES
(1, 'op krediet'),
(2, 'Bank transactie'),
(3, 'Contant'),
(4, 'Debet'),
(5, 'ACH'),
(6, 'Visa Card'),
(7, 'MasterCard'),
(8, 'American Express'),
(9, 'Discover Card'),
(10, 'Diners Card'),
(11, 'EuroCard'),
(12, 'Nova'),
(13, 'Credit Card anders'),
(14, 'PayPal'),
(15, 'Google Wallet'),
(16, 'Cheque');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `product_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `cost` decimal(13,2) NOT NULL,
  `qty` decimal(13,2) DEFAULT NULL,
  `public_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `products`
--

INSERT INTO `products` (`id`, `account_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`, `product_key`, `notes`, `cost`, `qty`, `public_id`) VALUES
(1, 1, 1, '2015-04-24 09:38:22', '2015-09-15 07:14:43', '2015-09-15 07:14:43', 'Ontwerp', 'ontwerp werkzaamheden', 1000.00, NULL, 1),
(2, 1, 1, '2015-04-24 09:41:31', '2015-09-15 07:12:51', '2015-09-15 07:12:51', 'Frontend modules', 'Ontwikkeling frontend modules', 3000.00, NULL, 2),
(3, 1, 1, '2015-04-24 09:42:54', '2015-09-15 07:13:03', '2015-09-15 07:13:03', 'Inloggen', 'Ontwikkeling module elementen', 390.00, NULL, 3),
(4, 1, 1, '2015-04-24 09:43:18', '2015-09-15 07:13:16', '2015-09-15 07:13:16', 'Offerte', 'Ontwikkeling module elementen', 390.00, NULL, 4),
(5, 1, 1, '2015-04-24 09:43:34', '2015-09-15 07:12:47', '2015-09-15 07:12:47', 'Documenten toevoegen', 'Ontwikkeling module elementen', 65.00, NULL, 5),
(6, 1, 1, '2015-04-24 09:43:47', '2015-09-15 07:14:47', '2015-09-15 07:14:47', 'Prijzen', 'Ontwikkeling module elementen', 390.00, NULL, 6),
(7, 1, 1, '2015-04-24 09:44:07', '2015-09-15 07:13:12', '2015-09-15 07:13:12', 'Maatwerk', 'Ontwikkeling module elementen', 65.00, NULL, 7),
(8, 1, 1, '2015-04-24 09:44:34', '2015-09-15 07:13:09', '2015-09-15 07:13:09', 'Klantomgeving', 'Ontwikkeling module elementen', 1950.00, NULL, 8),
(9, 1, 1, '2015-04-24 09:45:00', '2015-09-15 07:12:32', '2015-09-15 07:12:32', 'Documenten module', 'Ontwikkeling module elementen', 520.00, NULL, 9),
(10, 1, 1, '2015-04-24 09:45:53', '2015-09-15 07:12:39', '2015-09-15 07:12:39', 'Documenten module', 'Uitbreiding documenten module', 2470.00, NULL, 10),
(11, 1, 1, '2015-04-24 09:46:31', '2015-09-15 07:14:51', '2015-09-15 07:14:51', 'Styling', 'Presentatie aanpassingen fireweb', 2080.00, NULL, 11),
(12, 1, 1, '2015-04-24 09:47:10', '2015-09-15 07:12:43', '2015-09-15 07:12:43', 'Documenten module', 'Wijzigingen documentenbeheer', 1300.00, NULL, 12),
(13, 1, 1, '2015-04-24 09:47:30', '2015-09-15 07:12:56', '2015-09-15 07:12:56', 'Gebruikers', 'Gebruikers module', 325.00, NULL, 13),
(14, 1, 1, '2015-04-24 09:48:13', '2015-09-15 07:14:39', '2015-09-15 07:14:39', 'Ondersteuning', 'Installatie ondersteuning', 65.00, NULL, 14),
(15, 1, 1, '2015-04-24 09:49:07', '2015-09-15 07:14:35', '2015-09-15 07:14:35', 'Onderhoud', 'Onderhoud', 65.00, NULL, 15),
(16, 1, 1, '2015-04-24 10:29:03', '2015-09-15 07:12:27', '2015-09-15 07:12:27', 'Debet', 'Debet factuur', 65.00, NULL, 16),
(17, 1, 1, '2015-05-20 08:19:41', '2015-09-15 07:03:11', NULL, 'A3 administratie', 'Boekhoud werkzaamheden A3 administratie', 0.00, NULL, 17),
(18, 1, 1, '2015-09-15 07:00:31', '2015-09-15 07:00:31', NULL, 'Hertek', 'Werkzaamheden Hertek - Fireweb', 0.00, NULL, 18),
(19, 1, 1, '2015-09-15 07:01:07', '2015-09-15 07:01:07', NULL, 'Hertek onderhoud', 'Onderhoud en uitbreiding werkzaamheden hertek -\r\nfireweb', 0.00, NULL, 19),
(20, 1, 1, '2015-09-15 07:01:58', '2015-10-25 10:05:56', NULL, '[ING007]', 'Fast Flex Interim Professionals', 80.00, NULL, 20),
(21, 1, 1, '2015-09-16 06:30:36', '2015-09-16 06:30:36', NULL, 'Kolkmedia', 'Kosten kolkmedia', 0.00, NULL, 21),
(22, 1, 1, '2016-06-02 03:57:23', '2016-06-02 03:57:23', NULL, 'AHOLD015', '', 0.00, NULL, 22),
(23, 1, 1, '2016-06-17 05:47:31', '2016-06-17 05:47:31', NULL, '1252486', '', 0.00, NULL, 23),
(24, 1, 1, '2016-06-17 05:47:31', '2016-06-17 05:47:31', NULL, '1186804', '', 0.00, NULL, 24),
(25, 1, 1, '2016-06-17 06:06:21', '2016-06-17 06:06:21', NULL, '1412957', '', 0.00, NULL, 25),
(26, 1, 1, '2016-07-20 06:16:07', '2016-07-20 06:16:07', NULL, 'AHOLD011', '', 0.00, NULL, 26),
(27, 1, 1, '2016-08-30 11:04:49', '2016-08-30 11:04:49', NULL, 'KPNS&I', '', 0.00, NULL, 27),
(28, 1, 1, '2016-09-09 05:31:10', '2016-09-09 05:31:10', NULL, 'KPN S&I', '', 0.00, NULL, 28),
(29, 1, 1, '2016-09-09 05:31:36', '2016-09-09 05:31:36', NULL, 'KPN142', '', 0.00, NULL, 29),
(30, 1, 1, '2017-03-01 13:44:13', '2017-03-01 13:44:13', NULL, 'KPNS&I011', '', 0.00, NULL, 30),
(31, 1, 1, '2017-04-28 08:07:27', '2017-04-28 08:07:27', NULL, 'KPNS&I013', '', 0.00, NULL, 31),
(32, 1, 1, '2017-08-30 07:55:50', '2017-08-30 07:55:50', NULL, 'KPNS&I016', '', 0.00, NULL, 32),
(33, 1, 1, '2018-01-18 10:15:48', '2018-01-18 10:15:48', NULL, 'KPNS&I026', '', 0.00, NULL, 33),
(34, 1, 1, '2018-04-26 07:11:56', '2018-04-26 07:11:56', NULL, 'KPNS&I027', '', 0.00, NULL, 34),
(35, 1, 1, '2018-06-06 08:30:04', '2018-06-06 08:30:04', NULL, 'O-2018-1323-FF', '', 0.00, NULL, 35),
(36, 1, 1, '2018-07-26 12:32:04', '2018-07-26 12:32:04', NULL, 'support', '', 0.00, NULL, 36),
(37, 1, 1, '2018-07-26 12:33:04', '2018-07-26 12:33:04', NULL, 'support-001', '', 0.00, NULL, 37),
(38, 1, 1, '2018-08-23 13:47:44', '2018-08-23 13:47:44', NULL, 'support-001-1', '', 0.00, NULL, 38),
(39, 1, 1, '2018-08-23 13:47:44', '2018-08-23 13:47:44', NULL, 'support-001-2', '', 0.00, NULL, 39),
(40, 1, 1, '2018-10-23 10:55:24', '2018-10-23 10:55:24', NULL, 'Hosting', '', 0.00, NULL, 40),
(41, 1, 1, '2018-10-23 10:59:16', '2018-10-23 10:59:16', NULL, 'Ontwerp', '', 0.00, NULL, 41),
(42, 1, 1, '2018-10-23 10:59:16', '2018-10-23 10:59:16', NULL, 'Database', '', 0.00, NULL, 42),
(43, 1, 1, '2018-10-23 10:59:16', '2018-10-23 10:59:16', NULL, 'Offertetool', '', 0.00, NULL, 43),
(44, 1, 1, '2018-10-23 11:32:51', '2018-10-23 11:32:51', NULL, 'Ontwikkeling', '', 0.00, NULL, 44),
(45, 1, 1, '2019-05-04 05:53:54', '2019-05-04 05:53:54', NULL, 'fireprotector-001', '', 0.00, NULL, 45),
(46, 1, 1, '2019-05-04 06:03:17', '2019-05-04 06:03:17', NULL, 'fireprotector-002', '', 0.00, NULL, 46),
(47, 1, 1, '2019-05-04 06:06:04', '2019-05-04 06:06:04', NULL, 'fireprotector-003', '', 0.00, NULL, 47),
(48, 1, 1, '2019-05-24 10:30:20', '2019-05-24 10:30:20', NULL, '50000123-217051', '', 0.00, NULL, 48),
(49, 1, 1, '2019-05-24 10:41:59', '2019-05-24 10:41:59', NULL, 'K501', '', 0.00, NULL, 49),
(50, 1, 1, '2021-03-31 06:58:06', '2021-03-31 06:58:06', NULL, 'Inhuur V. vd Kolk', '', 0.00, NULL, 50),
(51, 1, 1, '2021-06-02 11:41:57', '2021-06-02 11:41:57', NULL, 'SC1000003109', '', 0.00, NULL, 51);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `project_codes`
--

CREATE TABLE `project_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `quarters`
--

CREATE TABLE `quarters` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quarter_date_start` date DEFAULT NULL,
  `quarter_date_end` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `public_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `quarters`
--

INSERT INTO `quarters` (`id`, `account_id`, `user_id`, `name`, `description`, `quarter_date_start`, `quarter_date_end`, `created_at`, `updated_at`, `deleted_at`, `public_id`) VALUES
(5, 1, 1, '1e Kwartaal 2017', '1e Kwartaal 2017', '2017-01-01', '2017-03-31', '2015-08-09 13:50:38', '2017-07-28 05:03:06', NULL, 1),
(6, 1, 1, '2e kwartaal 2017', '2e kwartaal 2017', '2017-04-01', '2017-06-30', '2015-08-09 15:09:23', '2017-07-28 05:03:16', NULL, 2),
(7, 1, 1, '3e kwartaal 2017', '3e kwartaal 2017', '2017-07-01', '2017-09-30', '2015-08-09 15:10:13', '2017-07-28 05:03:26', NULL, 3),
(8, 1, 1, '4e kwartaal 2017', '4e kwartaal 2017', '2017-10-01', '2017-12-31', '2015-08-09 15:25:31', '2017-07-28 05:03:37', NULL, 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `sizes`
--

INSERT INTO `sizes` (`id`, `name`) VALUES
(1, '1 - 3'),
(2, '4 - 10'),
(3, '11 - 50'),
(4, '51 - 100'),
(5, '101 - 500'),
(6, '500+');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `event_id` int(10) UNSIGNED DEFAULT NULL,
  `target_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rate` decimal(13,2) NOT NULL,
  `public_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `tax_rates`
--

INSERT INTO `tax_rates` (`id`, `account_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`, `name`, `rate`, `public_id`) VALUES
(1, 1, 1, '2015-04-24 10:06:07', '2015-09-30 12:42:51', '2015-09-30 12:42:51', 'BTW-19%', 19.00, 1),
(2, 1, 1, '2015-04-24 10:06:07', '2021-06-03 04:17:58', NULL, 'BTW', 21.00, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `themes`
--

CREATE TABLE `themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `themes`
--

INSERT INTO `themes` (`id`, `name`) VALUES
(1, 'amelia'),
(2, 'cerulean'),
(3, 'cosmo'),
(4, 'cyborg'),
(5, 'flatly'),
(6, 'journal'),
(7, 'readable'),
(8, 'simplex'),
(9, 'slate'),
(10, 'spacelab'),
(11, 'united'),
(12, 'yeti');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `timesheets`
--

CREATE TABLE `timesheets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `discount` float(8,2) NOT NULL,
  `hours` decimal(8,2) NOT NULL,
  `public_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `timesheet_events`
--

CREATE TABLE `timesheet_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `timesheet_event_source_id` int(10) UNSIGNED NOT NULL,
  `timesheet_id` int(10) UNSIGNED DEFAULT NULL,
  `project_id` int(10) UNSIGNED DEFAULT NULL,
  `project_code_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summary` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `hours` decimal(8,2) NOT NULL,
  `discount` float(8,2) NOT NULL,
  `manualedit` tinyint(1) NOT NULL,
  `org_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `org_created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `org_updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `org_deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `org_start_date_timezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `org_end_date_timezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `org_data` text COLLATE utf8_unicode_ci NOT NULL,
  `import_error` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_warning` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_data` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_data_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `timesheet_event_sources`
--

CREATE TABLE `timesheet_event_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('ical','googlejson') COLLATE utf8_unicode_ci NOT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `timezones`
--

CREATE TABLE `timezones` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `timezones`
--

INSERT INTO `timezones` (`id`, `name`, `location`) VALUES
(1, 'Pacific/Midway', '(GMT-11:00) Midway Island'),
(2, 'US/Samoa', '(GMT-11:00) Samoa'),
(3, 'US/Hawaii', '(GMT-10:00) Hawaii'),
(4, 'US/Alaska', '(GMT-09:00) Alaska'),
(5, 'US/Pacific', '(GMT-08:00) Pacific Time (US &amp; Canada)'),
(6, 'America/Tijuana', '(GMT-08:00) Tijuana'),
(7, 'US/Arizona', '(GMT-07:00) Arizona'),
(8, 'US/Mountain', '(GMT-07:00) Mountain Time (US &amp; Canada)'),
(9, 'America/Chihuahua', '(GMT-07:00) Chihuahua'),
(10, 'America/Mazatlan', '(GMT-07:00) Mazatlan'),
(11, 'America/Mexico_City', '(GMT-06:00) Mexico City'),
(12, 'America/Monterrey', '(GMT-06:00) Monterrey'),
(13, 'Canada/Saskatchewan', '(GMT-06:00) Saskatchewan'),
(14, 'US/Central', '(GMT-06:00) Central Time (US &amp; Canada)'),
(15, 'US/Eastern', '(GMT-05:00) Eastern Time (US &amp; Canada)'),
(16, 'US/East-Indiana', '(GMT-05:00) Indiana (East)'),
(17, 'America/Bogota', '(GMT-05:00) Bogota'),
(18, 'America/Lima', '(GMT-05:00) Lima'),
(19, 'America/Caracas', '(GMT-04:30) Caracas'),
(20, 'Canada/Atlantic', '(GMT-04:00) Atlantic Time (Canada)'),
(21, 'America/La_Paz', '(GMT-04:00) La Paz'),
(22, 'America/Santiago', '(GMT-04:00) Santiago'),
(23, 'Canada/Newfoundland', '(GMT-03:30) Newfoundland'),
(24, 'America/Buenos_Aires', '(GMT-03:00) Buenos Aires'),
(25, 'Greenland', '(GMT-03:00) Greenland'),
(26, 'Atlantic/Stanley', '(GMT-02:00) Stanley'),
(27, 'Atlantic/Azores', '(GMT-01:00) Azores'),
(28, 'Atlantic/Cape_Verde', '(GMT-01:00) Cape Verde Is.'),
(29, 'Africa/Casablanca', '(GMT) Casablanca'),
(30, 'Europe/Dublin', '(GMT) Dublin'),
(31, 'Europe/Lisbon', '(GMT) Lisbon'),
(32, 'Europe/London', '(GMT) London'),
(33, 'Africa/Monrovia', '(GMT) Monrovia'),
(34, 'Europe/Amsterdam', '(GMT+01:00) Amsterdam'),
(35, 'Europe/Belgrade', '(GMT+01:00) Belgrade'),
(36, 'Europe/Berlin', '(GMT+01:00) Berlin'),
(37, 'Europe/Bratislava', '(GMT+01:00) Bratislava'),
(38, 'Europe/Brussels', '(GMT+01:00) Brussels'),
(39, 'Europe/Budapest', '(GMT+01:00) Budapest'),
(40, 'Europe/Copenhagen', '(GMT+01:00) Copenhagen'),
(41, 'Europe/Ljubljana', '(GMT+01:00) Ljubljana'),
(42, 'Europe/Madrid', '(GMT+01:00) Madrid'),
(43, 'Europe/Paris', '(GMT+01:00) Paris'),
(44, 'Europe/Prague', '(GMT+01:00) Prague'),
(45, 'Europe/Rome', '(GMT+01:00) Rome'),
(46, 'Europe/Sarajevo', '(GMT+01:00) Sarajevo'),
(47, 'Europe/Skopje', '(GMT+01:00) Skopje'),
(48, 'Europe/Stockholm', '(GMT+01:00) Stockholm'),
(49, 'Europe/Vienna', '(GMT+01:00) Vienna'),
(50, 'Europe/Warsaw', '(GMT+01:00) Warsaw'),
(51, 'Europe/Zagreb', '(GMT+01:00) Zagreb'),
(52, 'Europe/Athens', '(GMT+02:00) Athens'),
(53, 'Europe/Bucharest', '(GMT+02:00) Bucharest'),
(54, 'Africa/Cairo', '(GMT+02:00) Cairo'),
(55, 'Africa/Harare', '(GMT+02:00) Harare'),
(56, 'Europe/Helsinki', '(GMT+02:00) Helsinki'),
(57, 'Europe/Istanbul', '(GMT+02:00) Istanbul'),
(58, 'Asia/Jerusalem', '(GMT+02:00) Jerusalem'),
(59, 'Europe/Kiev', '(GMT+02:00) Kyiv'),
(60, 'Europe/Minsk', '(GMT+02:00) Minsk'),
(61, 'Europe/Riga', '(GMT+02:00) Riga'),
(62, 'Europe/Sofia', '(GMT+02:00) Sofia'),
(63, 'Europe/Tallinn', '(GMT+02:00) Tallinn'),
(64, 'Europe/Vilnius', '(GMT+02:00) Vilnius'),
(65, 'Asia/Baghdad', '(GMT+03:00) Baghdad'),
(66, 'Asia/Kuwait', '(GMT+03:00) Kuwait'),
(67, 'Africa/Nairobi', '(GMT+03:00) Nairobi'),
(68, 'Asia/Riyadh', '(GMT+03:00) Riyadh'),
(69, 'Asia/Tehran', '(GMT+03:30) Tehran'),
(70, 'Europe/Moscow', '(GMT+04:00) Moscow'),
(71, 'Asia/Baku', '(GMT+04:00) Baku'),
(72, 'Europe/Volgograd', '(GMT+04:00) Volgograd'),
(73, 'Asia/Muscat', '(GMT+04:00) Muscat'),
(74, 'Asia/Tbilisi', '(GMT+04:00) Tbilisi'),
(75, 'Asia/Yerevan', '(GMT+04:00) Yerevan'),
(76, 'Asia/Kabul', '(GMT+04:30) Kabul'),
(77, 'Asia/Karachi', '(GMT+05:00) Karachi'),
(78, 'Asia/Tashkent', '(GMT+05:00) Tashkent'),
(79, 'Asia/Kolkata', '(GMT+05:30) Kolkata'),
(80, 'Asia/Kathmandu', '(GMT+05:45) Kathmandu'),
(81, 'Asia/Yekaterinburg', '(GMT+06:00) Ekaterinburg'),
(82, 'Asia/Almaty', '(GMT+06:00) Almaty'),
(83, 'Asia/Dhaka', '(GMT+06:00) Dhaka'),
(84, 'Asia/Novosibirsk', '(GMT+07:00) Novosibirsk'),
(85, 'Asia/Bangkok', '(GMT+07:00) Bangkok'),
(86, 'Asia/Ho_Chi_Minh', '(GMT+07.00) Ho Chi Minh'),
(87, 'Asia/Jakarta', '(GMT+07:00) Jakarta'),
(88, 'Asia/Krasnoyarsk', '(GMT+08:00) Krasnoyarsk'),
(89, 'Asia/Chongqing', '(GMT+08:00) Chongqing'),
(90, 'Asia/Hong_Kong', '(GMT+08:00) Hong Kong'),
(91, 'Asia/Kuala_Lumpur', '(GMT+08:00) Kuala Lumpur'),
(92, 'Australia/Perth', '(GMT+08:00) Perth'),
(93, 'Asia/Singapore', '(GMT+08:00) Singapore'),
(94, 'Asia/Taipei', '(GMT+08:00) Taipei'),
(95, 'Asia/Ulaanbaatar', '(GMT+08:00) Ulaan Bataar'),
(96, 'Asia/Urumqi', '(GMT+08:00) Urumqi'),
(97, 'Asia/Irkutsk', '(GMT+09:00) Irkutsk'),
(98, 'Asia/Seoul', '(GMT+09:00) Seoul'),
(99, 'Asia/Tokyo', '(GMT+09:00) Tokyo'),
(100, 'Australia/Adelaide', '(GMT+09:30) Adelaide'),
(101, 'Australia/Darwin', '(GMT+09:30) Darwin'),
(102, 'Asia/Yakutsk', '(GMT+10:00) Yakutsk'),
(103, 'Australia/Brisbane', '(GMT+10:00) Brisbane'),
(104, 'Australia/Canberra', '(GMT+10:00) Canberra'),
(105, 'Pacific/Guam', '(GMT+10:00) Guam'),
(106, 'Australia/Hobart', '(GMT+10:00) Hobart'),
(107, 'Australia/Melbourne', '(GMT+10:00) Melbourne'),
(108, 'Pacific/Port_Moresby', '(GMT+10:00) Port Moresby'),
(109, 'Australia/Sydney', '(GMT+10:00) Sydney'),
(110, 'Asia/Vladivostok', '(GMT+11:00) Vladivostok'),
(111, 'Asia/Magadan', '(GMT+12:00) Magadan'),
(112, 'Pacific/Auckland', '(GMT+12:00) Auckland'),
(113, 'Pacific/Fiji', '(GMT+12:00) Fiji');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `registered` tinyint(1) NOT NULL DEFAULT 0,
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `theme_id` int(11) DEFAULT NULL,
  `notify_sent` tinyint(1) NOT NULL DEFAULT 1,
  `notify_viewed` tinyint(1) NOT NULL DEFAULT 0,
  `notify_paid` tinyint(1) NOT NULL DEFAULT 1,
  `public_id` int(10) UNSIGNED DEFAULT NULL,
  `force_pdfjs` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_feed_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `account_id`, `created_at`, `updated_at`, `deleted_at`, `first_name`, `last_name`, `phone`, `username`, `email`, `password`, `confirmation_code`, `registered`, `confirmed`, `theme_id`, `notify_sent`, `notify_viewed`, `notify_paid`, `public_id`, `force_pdfjs`, `remember_token`, `news_feed_id`) VALUES
(1, 1, '2015-04-24 09:35:19', '2015-05-23 06:05:51', NULL, 'Vincent', 'van der Kolk', '0613830405', 'vincent@kolkmedia.com', 'vincent@kolkmedia.com', '$2y$10$4UlT2STcRPvfalWICeQNYOcG3HA2CZQ.f47QFt0TVaYIiW6h6K.ca', 'ebb775da4f053b3f731998c5b92717c6', 1, 1, NULL, 1, 1, 1, NULL, 0, NULL, NULL),
(2, 1, '2015-04-25 07:13:40', '2015-05-13 08:37:21', '2015-05-13 08:37:21', 'Vincent2', 'van der Kolk2', NULL, 'vincentvdk@gmail.com', 'vincentvdk@gmail.com', '$2y$10$vJqFcdUJXfYwHuMLB409buxw5UVT7gmP5M6gF4l8CrY1Awpk9zBFG', '', 1, 1, NULL, 1, 0, 1, 1, 0, NULL, NULL),
(3, 1, '2015-04-28 12:11:48', '2015-05-19 07:21:54', NULL, 'Gerard', 'van der Kolk', NULL, 'gerardvanderkolk@planet.nl', 'gerardvanderkolk@planet.nl', '$2y$10$SdW6Q2YdhxTVvxO8SgQJmeIYQqIEsn3q7mPPHojdTzrrdOlUQYZei', '', 1, 1, NULL, 1, 0, 1, 2, 0, NULL, NULL),
(4, 1, '2015-05-13 06:07:44', '2020-11-17 11:35:58', '2020-11-17 11:35:58', 'Sandra', 'van der Kolk', NULL, 'sannievdk@hotmail.com', 'sannievdk@hotmail.com', '$2y$10$eIXk/jwHgwdS8w2AfyXvq.ojtxRrb4U/BNLDAUsxdMWrDA6gOB9Ly', 'da0aee23ca44d64ade3e2b6970c669fb', 1, 0, NULL, 1, 0, 1, 3, 0, NULL, NULL),
(5, 1, '2015-05-13 08:38:12', '2015-05-15 09:36:13', '2015-05-15 09:36:13', 'Vincent', 'van der Kolk', NULL, 'vincent.van.der.kolk1@nn.nl', 'vincent.van.der.kolk1@nn.nl', '$2y$10$3PboY3W7zmKtBZX07fskzehlFQSF0opntL4Ri4lIx346ZAW4D1gM6', '', 1, 1, NULL, 1, 0, 1, 4, 0, NULL, NULL),
(6, 1, '2015-05-15 06:39:05', '2020-11-17 11:35:52', '2020-11-17 11:35:52', 'Aad', 'de Jong', NULL, 'a3.aaddejong@planet.nl', 'a3.aaddejong@planet.nl', '$2y$10$KS4eLPmlTEOTkV1Jrg62tOXIZKI8Jxf1XZm2FkmKV5qnQNfj6wQUi', '2a1ad21c8a0a2e4935ba000d2aba3518', 1, 0, NULL, 1, 0, 1, 5, 0, NULL, NULL);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_account_key_unique` (`account_key`),
  ADD KEY `accounts_timezone_id_foreign` (`timezone_id`),
  ADD KEY `accounts_date_format_id_foreign` (`date_format_id`),
  ADD KEY `accounts_datetime_format_id_foreign` (`datetime_format_id`),
  ADD KEY `accounts_country_id_foreign` (`country_id`),
  ADD KEY `accounts_currency_id_foreign` (`currency_id`),
  ADD KEY `accounts_industry_id_foreign` (`industry_id`),
  ADD KEY `accounts_size_id_foreign` (`size_id`),
  ADD KEY `accounts_invoice_design_id_foreign` (`invoice_design_id`),
  ADD KEY `accounts_language_id_foreign` (`language_id`);

--
-- Indexen voor tabel `account_gateways`
--
ALTER TABLE `account_gateways`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_gateways_account_id_public_id_unique` (`account_id`,`public_id`),
  ADD KEY `account_gateways_gateway_id_foreign` (`gateway_id`),
  ADD KEY `account_gateways_user_id_foreign` (`user_id`),
  ADD KEY `account_gateways_public_id_index` (`public_id`);

--
-- Indexen voor tabel `account_gateway_tokens`
--
ALTER TABLE `account_gateway_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_gateway_tokens_account_id_foreign` (`account_id`),
  ADD KEY `account_gateway_tokens_contact_id_foreign` (`contact_id`),
  ADD KEY `account_gateway_tokens_account_gateway_id_foreign` (`account_gateway_id`),
  ADD KEY `account_gateway_tokens_client_id_foreign` (`client_id`);

--
-- Indexen voor tabel `account_tokens`
--
ALTER TABLE `account_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_tokens_token_unique` (`token`),
  ADD UNIQUE KEY `account_tokens_account_id_public_id_unique` (`account_id`,`public_id`),
  ADD KEY `account_tokens_user_id_foreign` (`user_id`),
  ADD KEY `account_tokens_account_id_index` (`account_id`);

--
-- Indexen voor tabel `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activities_account_id_foreign` (`account_id`),
  ADD KEY `activities_client_id_foreign` (`client_id`);

--
-- Indexen voor tabel `affiliates`
--
ALTER TABLE `affiliates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `affiliates_affiliate_key_unique` (`affiliate_key`);

--
-- Indexen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_public_id_index` (`public_id`);

--
-- Indexen voor tabel `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_account_id_public_id_unique` (`account_id`,`public_id`),
  ADD KEY `clients_user_id_foreign` (`user_id`),
  ADD KEY `clients_country_id_foreign` (`country_id`),
  ADD KEY `clients_industry_id_foreign` (`industry_id`),
  ADD KEY `clients_size_id_foreign` (`size_id`),
  ADD KEY `clients_currency_id_foreign` (`currency_id`),
  ADD KEY `clients_account_id_index` (`account_id`),
  ADD KEY `clients_public_id_index` (`public_id`);

--
-- Indexen voor tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_account_id_public_id_unique` (`account_id`,`public_id`),
  ADD KEY `contacts_user_id_foreign` (`user_id`),
  ADD KEY `contacts_client_id_index` (`client_id`);

--
-- Indexen voor tabel `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `credits_account_id_public_id_unique` (`account_id`,`public_id`),
  ADD KEY `credits_user_id_foreign` (`user_id`),
  ADD KEY `credits_account_id_index` (`account_id`),
  ADD KEY `credits_client_id_index` (`client_id`),
  ADD KEY `credits_public_id_index` (`public_id`);

--
-- Indexen voor tabel `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `datetime_formats`
--
ALTER TABLE `datetime_formats`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `date_formats`
--
ALTER TABLE `date_formats`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `documents_account_id_public_id_unique` (`account_id`,`public_id`),
  ADD KEY `documents_invoice_id_foreign` (`invoice_id`),
  ADD KEY `documents_client_id_foreign` (`client_id`),
  ADD KEY `documents_user_id_foreign` (`user_id`),
  ADD KEY `documents_public_id_index` (`public_id`);

--
-- Indexen voor tabel `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `declarations_account_id_public_id_unique` (`account_id`,`public_id`),
  ADD KEY `declarations_invoice_id_foreign` (`invoice_id`),
  ADD KEY `declarations_client_id_foreign` (`client_id`),
  ADD KEY `declarations_user_id_foreign` (`user_id`),
  ADD KEY `declarations_product_id_foreign` (`product_id`),
  ADD KEY `declarations_public_id_index` (`public_id`);

--
-- Indexen voor tabel `frequencies`
--
ALTER TABLE `frequencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gateways_payment_library_id_foreign` (`payment_library_id`);

--
-- Indexen voor tabel `industries`
--
ALTER TABLE `industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `invitations`
--
ALTER TABLE `invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invitations_account_id_public_id_unique` (`account_id`,`public_id`),
  ADD UNIQUE KEY `invitations_invitation_key_unique` (`invitation_key`),
  ADD KEY `invitations_user_id_foreign` (`user_id`),
  ADD KEY `invitations_contact_id_foreign` (`contact_id`),
  ADD KEY `invitations_invoice_id_index` (`invoice_id`),
  ADD KEY `invitations_public_id_index` (`public_id`);

--
-- Indexen voor tabel `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoices_account_id_public_id_unique` (`account_id`,`public_id`),
  ADD UNIQUE KEY `invoices_account_id_invoice_number_unique` (`account_id`,`invoice_number`),
  ADD KEY `invoices_user_id_foreign` (`user_id`),
  ADD KEY `invoices_invoice_status_id_foreign` (`invoice_status_id`),
  ADD KEY `invoices_client_id_index` (`client_id`),
  ADD KEY `invoices_account_id_index` (`account_id`),
  ADD KEY `invoices_recurring_invoice_id_index` (`recurring_invoice_id`),
  ADD KEY `invoices_public_id_index` (`public_id`),
  ADD KEY `invoices_invoice_design_id_foreign` (`invoice_design_id`);

--
-- Indexen voor tabel `invoice_designs`
--
ALTER TABLE `invoice_designs`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoice_items_account_id_public_id_unique` (`account_id`,`public_id`),
  ADD KEY `invoice_items_product_id_foreign` (`product_id`),
  ADD KEY `invoice_items_user_id_foreign` (`user_id`),
  ADD KEY `invoice_items_invoice_id_index` (`invoice_id`);

--
-- Indexen voor tabel `invoice_statuses`
--
ALTER TABLE `invoice_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `licenses_license_key_unique` (`license_key`),
  ADD KEY `licenses_affiliate_id_foreign` (`affiliate_id`);

--
-- Indexen voor tabel `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_account_id_public_id_unique` (`account_id`,`public_id`),
  ADD KEY `payments_contact_id_foreign` (`contact_id`),
  ADD KEY `payments_account_gateway_id_foreign` (`account_gateway_id`),
  ADD KEY `payments_user_id_foreign` (`user_id`),
  ADD KEY `payments_payment_type_id_foreign` (`payment_type_id`),
  ADD KEY `payments_account_id_index` (`account_id`),
  ADD KEY `payments_client_id_index` (`client_id`),
  ADD KEY `payments_public_id_index` (`public_id`),
  ADD KEY `payments_invoice_id_foreign` (`invoice_id`);

--
-- Indexen voor tabel `payment_libraries`
--
ALTER TABLE `payment_libraries`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `payment_terms`
--
ALTER TABLE `payment_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_account_id_public_id_unique` (`account_id`,`public_id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_account_id_index` (`account_id`);

--
-- Indexen voor tabel `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_account_id_name_unique` (`account_id`,`name`),
  ADD KEY `projects_user_id_foreign` (`user_id`),
  ADD KEY `projects_account_id_index` (`account_id`);

--
-- Indexen voor tabel `project_codes`
--
ALTER TABLE `project_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_codes_account_id_name_unique` (`account_id`,`name`),
  ADD KEY `project_codes_user_id_foreign` (`user_id`),
  ADD KEY `project_codes_project_id_foreign` (`project_id`),
  ADD KEY `project_codes_account_id_index` (`account_id`);

--
-- Indexen voor tabel `quarters`
--
ALTER TABLE `quarters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quarters_public_id_index` (`public_id`);

--
-- Indexen voor tabel `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_account_id_event_id_unique` (`account_id`,`event_id`);

--
-- Indexen voor tabel `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_rates_account_id_public_id_unique` (`account_id`,`public_id`),
  ADD KEY `tax_rates_user_id_foreign` (`user_id`),
  ADD KEY `tax_rates_account_id_index` (`account_id`);

--
-- Indexen voor tabel `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `timesheets`
--
ALTER TABLE `timesheets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `timesheets_account_id_public_id_unique` (`account_id`,`public_id`),
  ADD KEY `timesheets_user_id_foreign` (`user_id`),
  ADD KEY `timesheets_account_id_index` (`account_id`);

--
-- Indexen voor tabel `timesheet_events`
--
ALTER TABLE `timesheet_events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `timesheet_events_timesheet_event_source_id_uid_unique` (`timesheet_event_source_id`,`uid`),
  ADD KEY `timesheet_events_user_id_foreign` (`user_id`),
  ADD KEY `timesheet_events_account_id_index` (`account_id`),
  ADD KEY `timesheet_events_timesheet_id_index` (`timesheet_id`),
  ADD KEY `timesheet_events_project_id_index` (`project_id`),
  ADD KEY `timesheet_events_project_code_id_index` (`project_code_id`);

--
-- Indexen voor tabel `timesheet_event_sources`
--
ALTER TABLE `timesheet_event_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timesheet_event_sources_user_id_foreign` (`user_id`),
  ADD KEY `timesheet_event_sources_account_id_index` (`account_id`);

--
-- Indexen voor tabel `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_account_id_public_id_unique` (`account_id`,`public_id`),
  ADD KEY `users_account_id_index` (`account_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `account_gateways`
--
ALTER TABLE `account_gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `account_gateway_tokens`
--
ALTER TABLE `account_gateway_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `account_tokens`
--
ALTER TABLE `account_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;

--
-- AUTO_INCREMENT voor een tabel `affiliates`
--
ALTER TABLE `affiliates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT voor een tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT voor een tabel `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=895;

--
-- AUTO_INCREMENT voor een tabel `credits`
--
ALTER TABLE `credits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT voor een tabel `datetime_formats`
--
ALTER TABLE `datetime_formats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT voor een tabel `date_formats`
--
ALTER TABLE `date_formats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT voor een tabel `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT voor een tabel `frequencies`
--
ALTER TABLE `frequencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT voor een tabel `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT voor een tabel `industries`
--
ALTER TABLE `industries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT voor een tabel `invitations`
--
ALTER TABLE `invitations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT voor een tabel `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT voor een tabel `invoice_designs`
--
ALTER TABLE `invoice_designs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT voor een tabel `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT voor een tabel `invoice_statuses`
--
ALTER TABLE `invoice_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT voor een tabel `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT voor een tabel `licenses`
--
ALTER TABLE `licenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT voor een tabel `payment_libraries`
--
ALTER TABLE `payment_libraries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `payment_terms`
--
ALTER TABLE `payment_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT voor een tabel `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT voor een tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT voor een tabel `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `project_codes`
--
ALTER TABLE `project_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `quarters`
--
ALTER TABLE `quarters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT voor een tabel `timesheets`
--
ALTER TABLE `timesheets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `timesheet_events`
--
ALTER TABLE `timesheet_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `timesheet_event_sources`
--
ALTER TABLE `timesheet_event_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
