-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 05 jul 2021 om 08:29
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
-- Database: `offlex1q_besoof`
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
(1, 34, 221, 142, 3, '2015-04-24 09:35:19', '2021-04-29 06:18:10', NULL, 'Besoof', '127.0.0.1', 'kBObEDM7fzm7IXIt7qcNdokmTFg4ODw6', '2021-04-29 06:18:10', 'Lijsterbesdreef', '4', 'Bleiswijk', 'zuid-holland', '2665 RL', 528, 'Uw betaling zien we graag binnen genoemde vervaldatum (30\ndagen) tegemoet, onder vermelding van het factuurnummer op\nrekening IBAN: NL78RABO0362405298.', 'Met vriendelijke groet,<p/>\r\n\r\nJolanda van der Kolk<p/>\r\nBesoof<p/>', 23, 1, 1, 0, 11, '', 'jolanda@besoof.nl', 6, NULL, '', '', '', '', '', '', 1, 0, '', '', 0, 1, '', '', 0, 0, '000042511968', NULL, '', 2, 'Offerte', 1, 0, '74565907', 'Geachte $contact,<p/>\r\n\r\nBijgaand treft u een nieuwe factuur. U kunt deze bekijken door op onderstaande link te klikken.\r\n\r\n<p/>\r\n\r\n<a href=\"$link\">$link</a><p/>\r\n\r\nHopende u voldoende geinformeerd te hebben.<p/>\r\n\r\n</br>\r\n\r\n<p/>$footer<p/>', 'Geachte $client,<p/>\r\n\r\nOm uw offerte van $amount te bekijken, klik op de link hieronder.<p/>\r\n\r\n<a href=\"$link\">$link</a><p/>\r\n\r\n$footer', 'Geachte $client,<p/>\r\n\r\nBedankt voor uw betaling van $amount.<p/>\r\n\r\n$footer', 2, 'Besoof\r\nLijsterbesdreef 4\r\n2665 RL Bleiswijk', 1, '{\"content\":[{\"columns\":[{\"image\":\"$accountLogo\",\"fit\":[130,80]},{\"text\":\"Van:\",\"bold\":true,\"alignment\":\"right\",\"margin\":[170,2,0,0]},{\"stack\":\"$accountDetails\",\"margin\":[10,0,0,0]}]},{\"text\":\"\",\"fontsize\":\"10\",\"margin\":[8,20,8,5],\"style\":\"entityTypeLabel\"},{\"columns\":[{\"text\":\"Aan:\",\"margin\":[0,2,0,0],\"bold\":true},{\"stack\":\"$clientDetails\",\"margin\":[-100,0,0,0]},{\"stack\":\"$invoiceDetailsLabels\",\"margin\":[0,0,10,0],\"style\":\"entityTypeLabel2\",\"alignment\":\"right\",\"bold\":true},{\"stack\":\"$invoiceDetailsData\",\"margin\":[-1,0,0,0],\"style\":\"entityTypeLabel2\"}]},{\"style\":\"invoiceLineItemsTable\",\"table\":{\"headerRows\":1,\"widths\":\"$invoiceLineItemColumns\",\"body\":\"$invoiceLineItems\",\"fontsize\":\"10\"},\"layout\":{\"hLineWidth\":\"$notFirst:.5\",\"vLineWidth\":\"$none\",\"hLineColor\":\"#D8D8D8\",\"paddingLeft\":\"$amount:8\",\"paddingRight\":\"$amount:8\",\"paddingTop\":\"$amount:14\",\"paddingBottom\":\"$amount:14\"}},{\"columns\":[{\"table\":{\"widths\":[\"*\",\"30%\"],\"body\":\"$subtotals\"},\"layout\":{\"hLineWidth\":\"$none\",\"vLineWidth\":\"$none\",\"paddingLeft\":\"$amount:0\",\"paddingRight\":\"$amount:8\",\"paddingTop\":\"$amount:4\",\"paddingBottom\":\"$amount:4\"},\"margin\":[0,0,0,0]}]}],\"defaultStyle\":{\"stack\":\"$notesAndTerms\",\"fontSize\":\"$fontSize\",\"margin\":[8,4,8,4]},\"footer\":{\"columns\":[{\"text\":\"$accountDetails\",\"alignment\":\"left\",\"bold\":false,\"margin\":[40,-40,30,0]},{\"stack\":\"$notesAndTerms\",\"alignment\":\"left\",\"margin\":[-258,-150,100,0]}]},\"styles\":{\"entityTypeLabel\":{\"fontSize\":\"$fontSizeLargest\",\"color\":\"$primaryColor:#2e3f4d\"},\"entityTypeLabel2\":{\"fontSize\":\"9\",\"bold\":false,\"lineHeight\":1.2},\"primaryColor\":{\"color\":\"$primaryColor:#2e3f4d\"},\"accountName\":{\"color\":\"$primaryColor:#2e3f4d\",\"bold\":true},\"invoiceDetails\":{\"margin\":[0,0,8,0]},\"accountDetails\":{\"margin\":[0,2,0,2]},\"clientDetails\":{\"margin\":[0,2,0,2]},\"notesAndTerms\":{\"margin\":[0,2,0,2]},\"accountAddress\":{\"margin\":[0,2,0,2]},\"odd\":{\"fillColor\":\"#fbfbfb\"},\"productKey\":{\"color\":\"$primaryColor:#2e3f4d\",\"bold\":true},\"balanceDueLabel\":{\"fontSize\":\"$fontSizeLarger\"},\"balanceDue\":{\"fontSize\":\"$fontSizeLarger\",\"color\":\"$primaryColor:#2e3f4d\"},\"invoiceNumber\":{\"bold\":true},\"tableHeader\":{\"bold\":true,\"fontSize\":\"9\"},\"costTableHeader\":{\"alignment\":\"right\"},\"qtyTableHeader\":{\"alignment\":\"right\"},\"taxTableHeader\":{\"alignment\":\"right\"},\"lineTotalTableHeader\":{\"alignment\":\"right\"},\"invoiceLineItemsTable\":{\"margin\":[0,16,0,10]},\"clientName\":{\"bold\":true},\"cost\":{\"alignment\":\"right\"},\"quantity\":{\"alignment\":\"right\"},\"tax\":{\"alignment\":\"right\"},\"lineTotal\":{\"alignment\":\"right\"},\"subtotals\":{\"alignment\":\"right\"},\"termsLabel\":{\"bold\":true}},\"pageMargins\":[40,40,40,60]}', 9, '{\"item\":\"\",\"description\":\"\",\"unit_cost\":\"\",\"quantity\":\"\"}');

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
(397, '2020-11-17 11:09:36', '2020-11-17 11:09:36', 1, 1, 1, NULL, NULL, 63, NULL, NULL, 'Jolanda van der Kolk  heeft  [invoice:1:0001]  gemaakt', NULL, 4, 0.00, 0.00, NULL, '2a02:a444:f231:1:4839:c8a3:fa6b:d28b'),
(398, '2021-01-24 09:22:17', '2021-01-24 09:22:17', 1, 15, 1, NULL, NULL, NULL, NULL, NULL, 'Jolanda van der Kolk  heeft  [client:6:Fleur]  aangegemaakt', NULL, 1, NULL, NULL, NULL, '2a02:a444:f231:1:3436:df7:7c8f:2bfa'),
(399, '2021-01-24 09:22:19', '2021-01-24 09:22:19', 1, 16, 1, NULL, NULL, NULL, NULL, NULL, 'Jolanda van der Kolk  heeft  [client:7:Fleur]  aangegemaakt', NULL, 1, NULL, NULL, NULL, '2a02:a444:f231:1:3436:df7:7c8f:2bfa'),
(400, '2021-01-24 09:22:22', '2021-01-24 09:22:22', 1, 17, 1, NULL, NULL, NULL, NULL, NULL, 'Jolanda van der Kolk  heeft  [client:8:Fleur]  aangegemaakt', NULL, 1, NULL, NULL, NULL, '2a02:a444:f231:1:3436:df7:7c8f:2bfa'),
(401, '2021-01-24 09:23:37', '2021-01-24 09:23:37', 1, 18, 1, NULL, NULL, NULL, NULL, NULL, 'Jolanda van der Kolk  heeft  [client:9:Manteau kozijnen]  aangegemaakt', NULL, 1, NULL, NULL, NULL, '2a02:a444:f231:1:3436:df7:7c8f:2bfa'),
(402, '2021-04-04 11:07:24', '2021-04-04 11:07:24', 1, 16, 1, NULL, NULL, NULL, NULL, NULL, 'Jolanda van der Kolk  heeft  [client:7:Fleur]  verwijderd', NULL, 3, NULL, NULL, NULL, '2a02:a444:f231:1:dc43:4ffb:177e:7e9'),
(403, '2021-04-04 11:07:28', '2021-04-04 11:07:28', 1, 17, 1, NULL, NULL, NULL, NULL, NULL, 'Jolanda van der Kolk  heeft  [client:8:Fleur]  verwijderd', NULL, 3, NULL, NULL, NULL, '2a02:a444:f231:1:dc43:4ffb:177e:7e9'),
(404, '2021-04-04 11:14:42', '2021-04-04 11:14:42', 1, 15, 1, NULL, NULL, 63, NULL, NULL, 'Jolanda van der Kolk  heeft  [invoice:1:20210001]  bijgewerkt', '{\"invoice_number\":\"0001\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2020-11-17\",\"due_date\":\"2020-12-01\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: t.n.v. Besoof.\",\"public_notes\":\"\",\"tax_name\":\"\",\"tax_rate\":\"0.00\",\"amount\":\"0.00\",\"balance\":\"0.00\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Besoof\\r\\nLijsterbesdreef 4\\r\\n2665 RL Bleiswijk\\r\\n06-\",\"invoice_items\":[],\"client\":{\"currency_id\":\"3\",\"name\":\"Kolkmedia\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0613830405\",\"payment_terms\":\"14\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"NL146175426B01\",\"id_number\":\"54875765\",\"contacts\":[{\"first_name\":\"Vincent\",\"last_name\":\"van der Kolk\",\"email\":\"vincent@kolkmedia.com\",\"phone\":\"0613830405\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Besoof\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0652083356\\u202c\",\"work_email\":\"jolanda@besoof.nl\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"000042511968\",\"id_number\":\"74565907\",\"pdf_email_attachment\":\"1\"}}', 5, 39.95, 39.95, NULL, '2a02:a444:f231:1:dc43:4ffb:177e:7e9'),
(405, '2021-04-04 11:24:21', '2021-04-04 11:24:21', 1, 15, 1, NULL, NULL, 63, NULL, NULL, 'Jolanda van der Kolk  heeft  [invoice:1:20210001]  bijgewerkt', '{\"invoice_number\":\"20210001\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2021-04-04\",\"due_date\":\"2021-05-04\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30 dagen) tegemoet, onder vermelding van het factuurnummer op rekening IBAN: t.n.v. Besoof.\",\"public_notes\":\"\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"39.95\",\"balance\":\"39.95\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Besoof\\r\\nLijsterbesdreef 4\\r\\n2665 RL Bleiswijk\\r\\n06-\",\"invoice_items\":[{\"product_key\":\"dekentje\",\"notes\":\"Ledikantdeken 100x140cm saffier groen\",\"cost\":\"33.02\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Fleur\",\"address1\":\"Rozendreef\",\"address2\":\"6\",\"city\":\"Lansingerland\",\"state\":\"Zuid-Holland\",\"postal_code\":\"2665 RR\",\"work_phone\":\"\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"\",\"contacts\":[{\"first_name\":\"Fleur\",\"last_name\":\"Walsmit\",\"email\":\"fmesritz@gmail.com\",\"phone\":\"\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Besoof\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"0652083356\\u202c\",\"work_email\":\"jolanda@besoof.nl\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"000042511968\",\"id_number\":\"74565907\",\"pdf_email_attachment\":\"1\"}}', 5, 0.00, 39.95, NULL, '2a02:a444:f231:1:dc43:4ffb:177e:7e9'),
(406, '2021-04-04 11:47:34', '2021-04-04 11:47:34', 1, 15, 1, NULL, NULL, 63, NULL, NULL, 'Jolanda van der Kolk  heeft  [invoice:1:20210001]  bijgewerkt', '{\"invoice_number\":\"20210001\",\"discount\":\"0.00\",\"po_number\":\"\",\"invoice_date\":\"2021-04-04\",\"due_date\":\"2021-05-04\",\"terms\":\"Uw betaling zien we graag binnen genoemde vervaldatum (30\\ndagen) tegemoet, onder vermelding van het factuurnummer op\\nrekening IBAN: NL78RABO0362405298 t.n.v. Besoof.\",\"public_notes\":\"\",\"tax_name\":\"BTW\",\"tax_rate\":\"21.00\",\"amount\":\"39.95\",\"balance\":\"39.95\",\"invoice_design_id\":\"11\",\"is_quote\":\"0\",\"custom_value1\":\"0.00\",\"custom_value2\":\"0.00\",\"custom_taxes1\":\"0\",\"custom_taxes2\":\"0\",\"is_amount_discount\":\"0\",\"invoice_footer\":\"Besoof\\nLijsterbesdreef 4\\n2665 RL Bleiswijk\",\"invoice_items\":[{\"product_key\":\"dekentje\",\"notes\":\"Ledikantdeken 100x140cm saffier groen\",\"cost\":\"33.02\",\"qty\":\"1.00\",\"tax_name\":null,\"tax_rate\":\"0.00\"}],\"client\":{\"currency_id\":\"3\",\"name\":\"Fleur\",\"address1\":\"Rozendreef\",\"address2\":\"6\",\"city\":\"Lansingerland\",\"state\":\"Zuid-Holland\",\"postal_code\":\"2665 RR\",\"work_phone\":\"\",\"payment_terms\":\"30\",\"custom_value1\":\"\",\"custom_value2\":\"\",\"vat_number\":\"\",\"id_number\":\"\",\"contacts\":[{\"first_name\":\"Fleur\",\"last_name\":\"Walsmit\",\"email\":\"fmesritz@gmail.com\",\"phone\":\"\"}]},\"account\":{\"currency_id\":\"3\",\"name\":\"Besoof\",\"address1\":\"Lijsterbesdreef\",\"address2\":\"4\",\"city\":\"Bleiswijk\",\"state\":\"zuid-holland\",\"postal_code\":\"2665 RL\",\"work_phone\":\"\",\"work_email\":\"jolanda@besoof.nl\",\"custom_label1\":\"\",\"custom_value1\":\"\",\"custom_label2\":\"\",\"custom_value2\":\"\",\"custom_client_label1\":\"\",\"custom_client_label2\":\"\",\"primary_color\":\"\",\"secondary_color\":\"\",\"hide_quantity\":\"0\",\"hide_paid_to_date\":\"1\",\"custom_invoice_label1\":\"\",\"custom_invoice_label2\":\"\",\"vat_number\":\"000042511968\",\"id_number\":\"74565907\",\"pdf_email_attachment\":\"1\"}}', 5, 39.96, 79.91, NULL, '2a02:a444:f231:1:dc43:4ffb:177e:7e9'),
(407, '2021-04-04 11:48:19', '2021-04-04 11:48:19', 1, 15, 1, 1, NULL, 63, NULL, NULL, 'Jolanda van der Kolk  heeft  [invoice:1:20210001]  gemaild naar Vincent van der Kolk', NULL, 20, NULL, 79.91, NULL, '2a02:a444:f231:1:dc43:4ffb:177e:7e9'),
(408, '2021-04-04 11:48:19', '2021-04-04 11:48:19', 1, 15, 1, 17, NULL, 63, NULL, NULL, 'Jolanda van der Kolk  heeft  [invoice:1:20210001]  gemaild naar Fleur Walsmit', NULL, 20, NULL, 79.91, NULL, '2a02:a444:f231:1:dc43:4ffb:177e:7e9'),
(409, '2021-04-29 06:18:28', '2021-04-29 06:18:28', 1, 15, 1, NULL, 52, 63, NULL, NULL, 'Jolanda van der Kolk  heeft een  betaling voor  [invoice:1:20210001]  ingegeven', NULL, 10, -79.91, 0.00, NULL, '2a02:a444:f231:1:fcb0:bb64:2:74cf');

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
(1, 1, 1, 3, '2015-04-24 09:52:20', '2020-11-17 11:09:36', NULL, 'Kolkmedia', 'Lijsterbesdreef', '4', 'Bleiswijk', 'zuid-holland', '2665 RL', 528, '0613830405', '', 0.00, 0.00, '2015-09-29 05:55:10', 'www.kolkmedia.com', 10, 1, 0, 14, 1, '', '', 'NL146175426B01', '54875765'),
(5, 1, 1, 3, '2016-06-17 04:56:05', '2016-08-12 05:43:11', NULL, 'G.H.van der Kolk', 'Kastanjelaan', '61', 'Bleiswijk', 'Zuid-holland', '2665 GA', 528, '(06) 13 32 30 77', '', NULL, 1960.13, NULL, 'https://nl.linkedin.com/in/gerard-van-der-kolk-kolk-40495824', 21, 1, 0, 30, 5, '', '', '', 'G.H.van der Kolk'),
(15, 1, 1, 3, '2021-01-24 09:22:17', '2021-04-29 06:18:28', NULL, 'Fleur Walsmit', 'Rozendreef', '6', 'Lansingerland', 'Zuid-Holland', '2665 RR', 528, '', '', 0.00, 79.91, NULL, '', NULL, NULL, 0, 30, 6, '', '', '', ''),
(16, 1, 1, 3, '2021-01-24 09:22:19', '2021-04-04 11:07:24', '2021-04-04 11:07:24', 'Fleur', 'Rozendreef', '6', 'Lansingerland', 'Zuid-Holland', '2665 RR', 528, '', '', NULL, NULL, NULL, '', NULL, NULL, 1, 30, 7, '', '', '', ''),
(17, 1, 1, 3, '2021-01-24 09:22:22', '2021-04-04 11:07:28', '2021-04-04 11:07:28', 'Fleur', 'Rozendreef', '6', 'Lansingerland', 'Zuid-Holland', '2665 RR', 528, '', '', NULL, NULL, NULL, '', NULL, NULL, 1, 30, 8, '', '', '', ''),
(18, 1, 1, 3, '2021-01-24 09:23:37', '2021-01-24 09:24:36', NULL, 'Manteau kozijnen', 'Kristalstraat', '38', 'Lansingerland', 'Zuid-Holland', '2665 NE', 528, '', '', NULL, NULL, NULL, '', NULL, NULL, 0, 30, 9, '', '', '', '');

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
(1, 1, 1, 1, '2015-04-24 09:52:20', '2020-11-17 11:09:36', NULL, 1, 1, 'Vincent', 'van der Kolk', 'vincent@kolkmedia.com', '0613830405', NULL, 1),
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
(17, 1, 1, 15, '2021-01-24 09:22:17', '2021-04-04 11:48:19', NULL, 1, 1, 'Fleur', 'Walsmit', 'fmesritz@gmail.com', '', NULL, 17),
(18, 1, 1, 16, '2021-01-24 09:22:19', '2021-01-24 09:22:19', NULL, 1, 0, 'Fleur', 'Walsmit', 'info@besoof.nl', '', NULL, 18),
(19, 1, 1, 17, '2021-01-24 09:22:22', '2021-01-24 09:22:22', NULL, 1, 0, 'Fleur', 'Walsmit', 'info@besoof.nl', '', NULL, 19),
(20, 1, 1, 18, '2021-01-24 09:23:37', '2021-01-24 09:24:36', NULL, 1, 0, 'Manteau kozijnen', '', 'info@manteaukozijnen.nl', '', NULL, 20);

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
(70, 1, 1, 1, 63, 'f2KxYb70HiCqxBsyh0Ff514aMefGRf8z', '2020-11-17 11:09:36', '2021-04-04 11:48:19', NULL, NULL, '2021-04-04 11:48:19', '0000-00-00 00:00:00', 53),
(71, 1, 1, 17, 63, 'WhgKDbOPKIzf1pvKZX6kPI3mdgvqtPbW', '2021-04-04 11:14:42', '2021-04-04 11:48:19', NULL, NULL, '2021-04-04 11:48:19', '0000-00-00 00:00:00', 54);

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
(63, 15, 1, 1, 5, '2020-11-17 11:09:36', '2021-04-29 06:18:28', NULL, '20210001', 0.00, '', '2021-04-04', '2021-05-04', 'Uw betaling zien we graag binnen genoemde vervaldatum (30\ndagen) tegemoet, onder vermelding van het factuurnummer op\nrekening IBAN: NL78RABO0362405298.', '', 0, 0, 0, NULL, NULL, NULL, NULL, 'BTW', 21.00, 79.91, 0.00, 1, 11, 0, NULL, NULL, 0.00, 0.00, 0, 0, 0, 'Besoof\nLijsterbesdreef 4\n2665 RL Bleiswijk');

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
(347, 1, 1, 63, 50, '2021-04-04 11:48:19', '2021-04-04 11:48:19', NULL, 'dekentje', 'Ledikantdeken 100x140cm Brique/Wilgentak', 33.02, 1.00, NULL, 0.00, 122),
(346, 1, 1, 63, 50, '2021-04-04 11:48:19', '2021-04-04 11:48:19', NULL, 'dekentje', 'Ledikantdeken 100x140cm Saffier groen/Eucalyptus', 33.02, 1.00, NULL, 0.00, 121);

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
(52, 63, 1, 15, NULL, NULL, 1, NULL, NULL, '2021-04-29 06:18:28', '2021-04-29 06:18:28', NULL, 0, 79.91, '2021-04-29', '', NULL, 1);

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
(50, 1, 1, '2021-04-04 11:14:42', '2021-04-04 11:14:42', NULL, 'dekentje', '', 0.00, NULL, 1);

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
(2, 1, 1, '2015-04-24 10:06:07', '2021-04-04 11:48:19', NULL, 'BTW', 21.00, 2);

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
(1, 1, '2015-04-24 09:35:19', '2020-11-17 12:06:38', NULL, 'Jolanda', 'van der Kolk', '06 52 08 33 56‬', 'jolanda@besoof.nl', 'jolanda@besoof.nl', '$2y$10$kkzV9yAaoZ7dyQzPW8OoMOud6uQdfUXwTd1rkNeYsDuAgu49Dz.12', 'ebb775da4f053b3f731998c5b92717c6', 1, 1, NULL, 1, 1, 1, NULL, 0, NULL, NULL),
(3, 1, '2015-04-28 12:11:48', '2020-10-22 11:37:19', '2020-10-22 11:37:19', 'Gerard', 'van der Kolk', NULL, 'gerardvanderkolk@planet.nl', 'gerardvanderkolk@planet.nl', '$2y$10$SdW6Q2YdhxTVvxO8SgQJmeIYQqIEsn3q7mPPHojdTzrrdOlUQYZei', '', 1, 1, NULL, 1, 0, 1, 2, 0, NULL, NULL),
(6, 1, '2015-05-15 06:39:05', '2020-10-22 11:37:13', '2020-10-22 11:37:13', 'Aad', 'de Jong', NULL, 'a3.aaddejong@planet.nl', 'a3.aaddejong@planet.nl', '$2y$10$KS4eLPmlTEOTkV1Jrg62tOXIZKI8Jxf1XZm2FkmKV5qnQNfj6wQUi', '2a1ad21c8a0a2e4935ba000d2aba3518', 1, 0, NULL, 1, 0, 1, 5, 0, NULL, NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=410;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT voor een tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT voor een tabel `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT voor een tabel `invoice_designs`
--
ALTER TABLE `invoice_designs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT voor een tabel `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
