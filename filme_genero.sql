use cinemao;

CREATE TABLE fgenero (
	cod_film integer,
	cod_gen integer,
	Foreign key(cod_film) references filme(cod_film),
	Foreign key(cod_gen) references genero(cod_gen)
);

select * from fgenero;

insert into fgenero (cod_film,cod_gen)
values
	(1,7),
	(2,4),
	(2,7),
	(3,6),
	(4,4),
	(4,7),
	(5,7),
	(5,13),
	(7,7),
	(8,1),
	(8,5),
	(8,7),
	(8,15),
	(8,16),
	(9,5),
	(9,7),
	(9,14),
	(10,7),
	(11,7),
	(11,10),
	(12,4),
	(12,7),
	(14,4),
	(14,7),
	(14,8),
	(15,6),
	(16,7),
	(18,7),
	(19,6),
	(20,4),
	(20,7),
	(22,5),
	(22,7),
	(22,13),
	(23,7),
	(23,14),
	(24,7),
	(24,14),
	(25,7),
	(26,5),
	(26,7),
	(26,16),
	(28,14),
	(28,15),
	(29,4),
	(29,7),
	(29,14),
	(30,7),
	(30,16),
	(30,18),
	(31,7),
	(33,5),
	(33,16),
	(37,7),
	(37,10),
	(37,14),
	(38,4),
	(38,5),
	(39,4),
	(39,7),
	(39,13),
	(39,16),
	(41,2),
	(41,7),
	(42,6),
	(43,7),
	(43,15),
	(44,7),
	(45,4),
	(45,7),
	(45,14),
	(46,7),
	(47,7),
	(47,14),
	(49,7),
	(50,7),
	(51,7),
	(52,7),
	(52,16),
	(53,7),
	(53,11),
	(53,13),
	(53,16),
	(54,7),
	(55,7),
	(58,7),
	(59,1),
	(59,2),
	(59,7),
	(59,10),
	(59,18),
	(61,2),
	(61,3),
	(61,8),
	(61,9),
	(62,2),
	(62,7),
	(63,4),
	(63,7),
	(64,4),
	(64,7),
	(65,7),
	(68,6),
	(69,7),
	(69,13),
	(69,15),
	(70,4),
	(70,7),
	(71,7),
	(71,14),
	(72,7),
	(73,16),
	(74,7),
	(75,6),
	(76,6),
	(77,3),
	(77,7),
	(77,9),
	(77,13),
	(77,15),
	(78,7),
	(80,4),
	(80,7),
	(81,7),
	(82,7),
	(82,18),
	(83,4),
	(83,5),
	(83,7),
	(84,4),
	(84,7),
	(84,9),
	(84,14),
	(87,1),
	(87,5),
	(87,7),
	(87,14),
	(87,16),
	(88,7),
	(89,5),
	(89,7),
	(89,14),
	(90,7),
	(91,7),
	(91,18),
	(92,7),
	(93,2),
	(93,9),
	(94,7),
	(95,7),
	(96,1),
	(96,5),
	(96,16),
	(97,4),
	(97,7),
	(99,5),
	(99,7),
	(99,14),
	(101,6),
	(103,4),
	(103,7),
	(103,14),
	(104,4),
	(104,7),
	(105,7),
	(105,18),
	(107,7),
	(107,10),
	(108,7),
	(108,14),
	(109,7),
	(110,8),
	(110,9),
	(110,14),
	(111,7),
	(111,14),
	(112,7),
	(112,14),
	(113,7),
	(113,14),
	(117,7),
	(118,7),
	(118,14),
	(120,7),
	(121,7),
	(122,7),
	(123,7),
	(124,7),
	(125,7),
	(126,7),
	(127,7),
	(128,7),
	(129,7),
	(130,7),
	(131,7),
	(132,7),
	(133,7),
	(134,7),
	(135,6),
	(136,5),
	(136,7),
	(136,13),
	(136,16),
	(137,7),
	(138,2),
	(138,5),
	(138,7),
	(138,19),
	(139,7),
	(139,9),
	(139,12),
	(139,14),
	(140,15),
	(140,16),
	(141,1),
	(141,11),
	(142,7),
	(142,11),
	(144,7),
	(144,14),
	(146,7),
	(146,13),
	(146,16),
	(147,7),
	(147,14),
	(148,5),
	(148,13),
	(148,16),
	(151,7),
	(151,10),
	(151,17),
	(152,1),
	(152,5),
	(153,1),
	(153,7),
	(153,14),
	(153,16),
	(155,7),
	(156,4),
	(156,14),
	(157,7),
	(157,14),
	(158,4),
	(158,7),
	(158,13),
	(158,14),
	(160,7),
	(162,4),
	(163,4),
	(163,8),
	(163,14),
	(164,7),
	(165,6),
	(166,7),
	(166,11),
	(166,17),
	(167,7),
	(168,4),
	(168,7),
	(168,9),
	(169,7),
	(169,17),
	(172,12),
	(173,7),
	(174,7),
	(174,14),
	(175,7),
	(177,4),
	(178,7),
	(178,14),
	(179,7),
	(180,6),
	(181,7),
	(182,4),
	(182,7),
	(182,14),
	(183,7),
	(184,6),
	(185,4),
	(185,7),
	(185,14),
	(186,7),
	(186,14),
	(187,7),
	(187,14),
	(188,7),
	(189,7),
	(190,4),
	(190,7),
	(191,7),
	(192,6),
	(193,5),
	(193,7),
	(193,16),
	(195,4),
	(195,7),
	(196,4),
	(196,7),
	(196,14),
	(200,4),
	(200,7),
	(202,5),
	(202,7),
	(203,4),
	(203,7),
	(204,4),
	(204,19),
	(205,1),
	(205,2),
	(205,7),
	(206,12),
	(207,4),
	(207,7),
	(207,16),
	(209,7),
	(210,6),
	(211,7),
	(211,14),
	(212,1),
	(212,3),
	(212,11),
	(213,5),
	(213,7),
	(214,7),
	(215,7),
	(215,16),
	(216,4),
	(216,7),
	(217,7),
	(218,7),
	(218,14),
	(221,5),
	(221,7),
	(221,14),
	(222,7),
	(222,14),
	(223,11),
	(223,16),
	(224,6),
	(226,7),
	(226,10),
	(228,7),
	(229,1),
	(229,2),
	(229,7),
	(230,7),
	(231,7),
	(232,7),
	(232,18),
	(233,6),
	(234,5),
	(234,7),
	(235,7),
	(235,16),
	(235,18),
	(236,7),
	(237,4),
	(237,7),
	(238,7),
	(239,5),
	(239,6),
	(240,1),
	(240,19),
	(241,4),
	(242,7),
	(243,4),
	(243,7),
	(243,9),
	(243,12),
	(243,14),
	(244,5),
	(244,7),
	(244,13),
	(244,16),
	(245,7),
	(245,14),
	(249,7),
	(250,7),
	(250,9),
	(250,13),
	(251,7),
	(251,14),
	(252,7),
	(252,14),
	(253,7),
	(253,10),
	(253,13),
	(253,17),
	(254,2),
	(254,3),
	(254,4),
	(254,8),
	(254,17),
	(255,4),
	(255,7),
	(255,14),
	(257,1),
	(257,5),
	(257,7),
	(259,7),
	(260,9),
	(260,11),
	(262,7),
	(263,1),
	(263,7),
	(263,16),
	(264,7),
	(265,7),
	(266,7),
	(267,7),
	(268,7),
	(269,7),
	(270,7),
	(272,7),
	(272,13),
	(273,6),
	(274,7),
	(275,6),
	(277,7),
	(277,15),
	(277,16),
	(279,9),
	(279,11),
	(279,15),
	(280,7),
	(281,7),
	(282,7),
	(283,7),
	(284,7),
	(285,7),
	(286,7),
	(287,7),
	(287,11),
	(287,14),
	(288,1),
	(288,2),
	(288,15),
	(289,6),
	(289,18),
	(290,4),
	(290,7),
	(291,7),
	(292,6),
	(293,7),
	(293,9),
	(294,7),
	(295,1),
	(295,5),
	(295,7),
	(297,6),
	(298,7),
	(298,18),
	(299,9),
	(299,11),
	(300,7),
	(302,6),
	(304,7),
	(304,14),
	(305,7),
	(306,7),
	(306,14),
	(307,5),
	(307,7),
	(308,13),
	(308,16),
	(308,18),
	(309,7),
	(309,9),
	(310,7),
	(310,14),
	(311,7),
	(311,14),
	(312,7),
	(313,7),
	(313,14),
	(314,4),
	(315,4),
	(315,7),
	(315,14),
	(316,7),
	(316,18),
	(316,19),
	(317,6),
	(318,6),
	(319,4),
	(320,7),
	(321,1),
	(321,7),
	(321,18),
	(322,7),
	(322,13),
	(322,14),
	(323,7),
	(323,14),
	(325,7),
	(325,18),
	(326,7),
	(326,18),
	(327,7),
	(327,14),
	(328,7),
	(328,14),
	(329,4),
	(329,7),
	(329,14),
	(330,1),
	(330,15),
	(331,4),
	(331,9),
	(331,14),
	(332,5),
	(332,7),
	(332,16),
	(333,4),
	(333,7),
	(333,18),
	(334,5),
	(334,7),
	(335,7),
	(335,13),
	(335,16),
	(336,7),
	(336,11),
	(337,18),
	(338,7),
	(338,10),
	(338,17),
	(339,6),
	(340,7),
	(341,7),
	(343,7),
	(343,14),
	(344,1),
	(344,4),
	(344,11),
	(346,7),
	(347,6),
	(348,1),
	(348,5),
	(348,7),
	(348,16),
	(349,7),
	(350,5),
	(350,7),
	(351,1),
	(351,4),
	(351,5),
	(352,7),
	(352,10),
	(352,14),
	(353,4),
	(353,7),
	(354,7),
	(357,2),
	(357,4),
	(357,8),
	(358,8),
	(358,12),
	(358,14),
	(360,6),
	(361,7),
	(361,11),
	(361,16),
	(362,5),
	(362,7),
	(363,7),
	(363,14),
	(364,2),
	(364,3),
	(364,9),
	(365,6),
	(367,4),
	(367,7),
	(368,7),
	(369,5),
	(369,7),
	(369,16),
	(372,7),
	(373,7),
	(374,4),
	(374,7),
	(375,7),
	(375,9),
	(375,11),
	(376,6),
	(377,7),
	(378,7),
	(379,3),
	(379,4),
	(381,7),
	(382,5),
	(382,7),
	(383,7),
	(384,7),
	(387,7),
	(387,9),
	(387,11),
	(388,7),
	(389,13),
	(389,16),
	(390,7),
	(390,14),
	(391,7),
	(391,14),
	(392,7),
	(392,14),
	(393,7),
	(393,14),
	(396,6),
	(397,7),
	(398,5),
	(398,15),
	(398,16),
	(399,7),
	(400,7),
	(400,14),
	(401,7),
	(401,9),
	(401,13),
	(401,16),
	(402,5),
	(402,7),
	(403,4),
	(403,7),
	(403,12),
	(404,7),
	(405,7),
	(405,16),
	(407,6),
	(411,6),
	(412,6),
	(412,18),
	(413,7),
	(414,4),
	(416,7),
	(418,7),
	(419,7),
	(419,19),
	(420,4),
	(421,7),
	(422,7),
	(422,14),
	(423,4),
	(423,7),
	(423,9),
	(424,7),
	(424,14),
	(425,7),
	(425,8),
	(426,1),
	(426,7),
	(426,10),
	(426,18),
	(427,1),
	(428,7),
	(429,7),
	(430,1),
	(430,5),
	(430,7),
	(430,16),
	(431,6),
	(432,6),
	(433,2),
	(433,3),
	(433,7),
	(433,8),
	(433,9),
	(435,6),
	(439,7),
	(439,14),
	(440,9),
	(440,11),
	(446,7),
	(447,7),
	(448,7),
	(449,7),
	(449,16),
	(450,4),
	(450,7),
	(452,4),
	(452,7),
	(452,14),
	(453,4),
	(453,7),
	(457,7),
	(458,7),
	(458,14),
	(459,7),
	(460,6),
	(462,7),
	(463,7),
	(463,14),
	(463,18),
	(464,6),
	(465,7),
	(469,7),
	(472,7),
	(474,7),
	(474,14),
	(476,5),
	(476,16),
	(477,7),
	(478,7),
	(479,7),
	(480,7),
	(481,7),
	(482,7),
	(483,7),
	(484,7),
	(485,7),
	(486,7),
	(487,7),
	(488,1),
	(488,5),
	(488,7),
	(488,16),
	(489,4),
	(489,7),
	(490,7),
	(490,13),
	(493,5),
	(493,7),
	(493,10),
	(493,16),
	(494,7),
	(494,18),
	(496,7),
	(496,17),
	(497,7),
	(497,17),
	(498,4),
	(498,12),
	(501,7),
	(501,13),
	(501,14),
	(502,4),
	(502,7),
	(502,18),
	(503,7),
	(505,7),
	(507,6),
	(510,6),
	(512,7),
	(512,14),
	(513,6),
	(516,1),
	(516,4),
	(516,5),
	(517,7),
	(518,4),
	(518,12),
	(519,3),
	(519,4),
	(519,7),
	(519,11),
	(523,6),
	(524,7),
	(524,14),
	(525,1),
	(525,7),
	(525,16),
	(526,7),
	(526,10),
	(526,18),
	(528,7),
	(528,13),
	(528,16),
	(530,7),
	(530,14),
	(531,4),
	(531,7),
	(531,14),
	(532,4),
	(532,7),
	(532,14),
	(533,4),
	(533,5),
	(534,7),
	(538,7),
	(539,7),
	(540,7),
	(541,7),
	(542,4),
	(542,5),
	(542,13),
	(543,7),
	(543,14),
	(544,4),
	(544,14),
	(544,17),
	(545,7),
	(546,6),
	(550,4),
	(550,7),
	(550,14),
	(551,7),
	(555,7),
	(555,14),
	(556,7),
	(557,7),
	(557,10),
	(558,7),
	(558,18),
	(559,5),
	(559,7),
	(559,18),
	(560,7),
	(560,14),
	(561,3),
	(561,4),
	(561,7),
	(562,7),
	(562,14),
	(564,1),
	(564,19),
	(565,5),
	(565,7),
	(565,14),
	(566,7),
	(566,19),
	(567,4),
	(567,14),
	(567,18),
	(569,7),
	(569,15),
	(570,7),
	(570,15),
	(571,7),
	(571,15),
	(572,7),
	(572,15),
	(573,7),
	(574,6),
	(575,7),
	(575,10),
	(575,16),
	(577,7),
	(577,10),
	(578,3),
	(578,7),
	(578,14),
	(579,7),
	(580,4),
	(580,7),
	(580,14),
	(581,7),
	(581,10),
	(583,7),
	(584,7),
	(584,11),
	(584,16),
	(585,4),
	(586,5),
	(586,7),
	(587,4),
	(588,7),
	(588,10),
	(589,4),
	(589,7),
	(589,14),
	(590,7),
	(591,4),
	(591,7),
	(591,14),
	(592,7),
	(593,15),
	(593,16),
	(594,7),
	(595,4),
	(596,7),
	(597,7),
	(598,7),
	(598,13),
	(598,16),
	(599,7),
	(600,16),
	(601,19),
	(603,4),
	(603,7),
	(604,3),
	(604,8),
	(604,9),
	(605,3),
	(605,8),
	(606,4),
	(606,7),
	(606,14),
	(607,7),
	(609,4),
	(610,5),
	(610,7),
	(613,7),
	(614,4),
	(614,7),
	(614,12),
	(615,7),
	(617,7),
	(619,6),
	(620,6),
	(620,10),
	(620,18),
	(621,4),
	(621,7),
	(622,7),
	(623,6),
	(624,6),
	(627,7),
	(628,7),
	(628,10),
	(628,18),
	(629,4),
	(629,7),
	(631,5),
	(631,7),
	(632,7),
	(633,6),
	(634,7),
	(635,7),
	(636,7),
	(640,7),
	(642,5),
	(642,7),
	(643,3),
	(643,12),
	(643,15),
	(645,4),
	(645,7),
	(645,14),
	(646,7),
	(646,11),
	(647,7),
	(647,14),
	(648,7),
	(648,14),
	(649,4),
	(649,12),
	(650,7),
	(651,7),
	(651,14),
	(652,2),
	(652,14),
	(653,7),
	(655,7),
	(656,7),
	(656,14),
	(657,4),
	(657,7),
	(658,2),
	(658,4),
	(658,9),
	(658,15),
	(659,7),
	(659,13),
	(660,7),
	(660,13),
	(661,7),
	(661,13),
	(662,7),
	(662,13),
	(663,7),
	(663,13),
	(664,7),
	(664,13),
	(665,7),
	(665,13),
	(666,7),
	(666,13),
	(667,7),
	(669,7),
	(670,7),
	(672,7),
	(673,7),
	(674,12),
	(674,14),
	(675,7),
	(676,5),
	(676,7),
	(677,1),
	(677,2),
	(677,16),
	(679,7),
	(682,7),
	(682,13),
	(683,7),
	(686,5),
	(686,7),
	(687,5),
	(687,7),
	(688,5),
	(688,16),
	(689,4),
	(689,14),
	(690,6),
	(691,7),
	(691,16),
	(692,5),
	(692,7),
	(693,6),
	(694,4),
	(694,7),
	(694,14),
	(694,17),
	(695,5),
	(695,7),
	(695,16),
	(696,4),
	(697,4),
	(698,7),
	(699,7),
	(700,4),
	(700,5),
	(701,2),
	(701,3),
	(701,9),
	(703,2),
	(703,3),
	(703,4),
	(705,11),
	(706,2),
	(706,3),
	(706,9),
	(709,7),
	(709,11),
	(709,16),
	(710,5),
	(710,16),
	(711,7),
	(712,5),
	(712,7),
	(712,16),
	(713,1),
	(713,5),
	(713,7),
	(713,16),
	(715,1),
	(715,5),
	(715,16),
	(716,11),
	(716,15),
	(718,7),
	(719,1),
	(719,2),
	(719,7),
	(719,16),
	(720,19),
	(721,7),
	(723,7),
	(723,13),
	(723,14),
	(723,16),
	(724,5),
	(724,7),
	(725,3),
	(725,12),
	(726,7),
	(726,14),
	(728,7),
	(729,19),
	(730,7),
	(730,18),
	(731,6),
	(732,1),
	(732,2),
	(732,7),
	(732,14),
	(732,19),
	(733,7),
	(733,14),
	(733,16),
	(734,4),
	(734,7),
	(736,7),
	(737,7),
	(737,11),
	(737,16),
	(738,11),
	(739,6),
	(740,4),
	(740,7),
	(740,14),
	(741,5),
	(741,7),
	(743,7),
	(743,11),
	(743,13),
	(744,4),
	(744,7),
	(745,7),
	(746,6),
	(747,6),
	(748,5),
	(748,7),
	(749,4),
	(749,6),
	(749,7),
	(750,6),
	(752,7),
	(752,13),
	(752,17),
	(753,6),
	(755,6),
	(756,1),
	(756,7),
	(757,1),
	(757,2),
	(757,7),
	(758,7),
	(759,7),
	(759,12),
	(760,7),
	(761,7),
	(762,7),
	(763,7),
	(764,7),
	(765,7),
	(766,7),
	(767,7),
	(767,10),
	(767,14),
	(768,11),
	(768,15),
	(769,7),
	(777,1),
	(777,5),
	(777,7),
	(778,4),
	(779,7),
	(780,7),
	(782,6),
	(784,7),
	(784,10),
	(784,14),
	(785,4),
	(785,7),
	(785,18),
	(786,7),
	(788,4),
	(788,9),
	(789,1),
	(791,10),
	(791,18),
	(792,7),
	(793,7),
	(795,4),
	(795,14),
	(796,7),
	(796,13),
	(799,4),
	(799,7),
	(800,7),
	(800,14),
	(801,7),
	(802,7),
	(802,14),
	(803,7),
	(803,14),
	(804,7),
	(805,4),
	(805,7),
	(806,7),
	(808,4),
	(808,14),
	(809,7),
	(809,13),
	(809,14),
	(809,15),
	(810,6),
	(811,7),
	(812,7),
	(812,16),
	(812,18),
	(813,1),
	(813,5),
	(813,16),
	(815,4),
	(815,7),
	(816,7),
	(817,3),
	(817,6),
	(818,7),
	(818,17),
	(821,16),
	(822,7),
	(823,7),
	(824,7),
	(825,6),
	(826,4),
	(826,7),
	(829,5),
	(829,7),
	(829,14),
	(829,16),
	(830,7),
	(831,4),
	(831,7),
	(832,6),
	(832,18),
	(834,7),
	(835,7),
	(835,18),
	(836,7),
	(836,14),
	(837,7),
	(839,6),
	(839,10),
	(839,14),
	(840,11),
	(841,7),
	(842,7),
	(842,14),
	(844,4),
	(844,7),
	(844,12),
	(845,7),
	(846,4),
	(846,12),
	(847,7),
	(847,14),
	(849,7),
	(850,1),
	(850,5),
	(850,13),
	(851,4),
	(851,5),
	(852,4),
	(854,7),
	(856,1),
	(856,4),
	(856,5),
	(856,16),
	(857,5),
	(857,7),
	(859,7),
	(859,10),
	(860,7),
	(860,9),
	(861,7),
	(862,13),
	(862,16),
	(863,7),
	(864,2),
	(864,14),
	(865,7),
	(865,16),
	(866,6),
	(867,9),
	(867,11),
	(867,16),
	(868,5),
	(868,7),
	(869,5),
	(869,7),
	(869,13),
	(869,17),
	(870,1),
	(870,5),
	(870,7),
	(870,10),
	(871,6),
	(872,14),
	(873,7),
	(874,4),
	(874,5),
	(874,7),
	(875,5),
	(875,7),
	(875,10),
	(875,19),
	(876,6),
	(877,7),
	(877,14),
	(878,7),
	(878,14),
	(879,7),
	(879,14),
	(880,7),
	(880,14),
	(881,5),
	(881,7),
	(882,6),
	(883,11),
	(884,4),
	(885,7),
	(886,9),
	(887,7),
	(887,10),
	(888,3),
	(888,4),
	(888,8),
	(889,4),
	(889,12),
	(889,14),
	(890,7),
	(891,5),
	(891,7),
	(891,13),
	(892,11),
	(892,15),
	(893,7),
	(893,9),
	(894,7),
	(894,12),
	(894,18),
	(895,3),
	(896,5),
	(896,7),
	(896,16),
	(897,7),
	(898,5),
	(898,7),
	(898,11),
	(898,16),
	(899,7),
	(900,6),
	(901,7),
	(901,15),
	(901,16),
	(902,4),
	(902,12),
	(905,5),
	(905,7),
	(905,13),
	(906,1),
	(906,5),
	(906,7),
	(907,4),
	(907,14),
	(909,3),
	(911,7),
	(911,14),
	(914,11),
	(914,15),
	(914,16),
	(915,4),
	(915,7),
	(917,7),
	(918,4),
	(919,7),
	(919,11),
	(921,7),
	(921,14),
	(923,3),
	(927,6),
	(929,7),
	(929,10),
	(930,16),
	(932,7),
	(932,15),
	(933,5),
	(933,7),
	(934,7),
	(936,11),
	(936,15),
	(937,6),
	(938,5),
	(938,7),
	(939,7),
	(939,18),
	(941,5),
	(941,7),
	(943,7),
	(945,7),
	(945,14),
	(946,4),
	(946,7),
	(946,10),
	(948,1),
	(948,7),
	(948,10),
	(948,18),
	(953,7),
	(953,14),
	(954,19),
	(955,7),
	(955,14),
	(956,2),
	(956,9),
	(956,16),
	(957,4),
	(958,7),
	(958,13),
	(958,16),
	(959,7),
	(959,13),
	(959,16),
	(960,7),
	(960,13),
	(960,16),
	(961,7),
	(961,13),
	(961,16),
	(962,7),
	(962,13),
	(962,16),
	(963,7),
	(963,13),
	(963,16),
	(964,7),
	(964,13),
	(964,16),
	(970,1),
	(970,11),
	(970,16),
	(971,2),
	(971,17),
	(973,7),
	(973,11),
	(973,16),
	(974,7),
	(974,11),
	(974,16),
	(975,4),
	(976,7),
	(977,5),
	(977,13),
	(977,16),
	(980,7),
	(981,7),
	(982,7),
	(983,7),
	(984,11),
	(984,13),
	(984,16),
	(985,7),
	(987,3),
	(989,7),
	(990,7),
	(991,7),
	(992,5),
	(992,7),
	(992,13),
	(992,16),
	(993,7),
	(994,6),
	(995,7),
	(996,4),
	(996,7),
	(997,7),
	(997,14),
	(999,7),
	(999,14),
	(1000,5),
	(1000,13),
	(1000,16),
	(1001,19),
	(1003,13),
	(1004,7),
	(1005,4),
	(1005,7),
	(1006,7),
	(1007,4),
	(1007,7),
	(1007,14),
	(1007,17),
	(1008,4),
	(1008,5),
	(1008,7),
	(1008,13),
	(1008,14),
	(1009,5),
	(1009,7),
	(1009,10),
	(1009,16),
	(1010,7),
	(1012,7),
	(1013,5),
	(1013,13),
	(1013,16),
	(1014,1),
	(1014,2),
	(1014,7),
	(1014,10),
	(1015,2),
	(1015,9),
	(1015,15),
	(1017,7),
	(1018,7),
	(1019,7),
	(1020,6),
	(1021,5),
	(1021,7),
	(1022,6),
	(1023,4),
	(1025,7),
	(1026,7),
	(1026,14),
	(1026,18),
	(1027,7),
	(1027,17),
	(1028,7),
	(1028,9),
	(1028,11),
	(1029,7),
	(1029,18),
	(1030,7),
	(1030,14),
	(1031,7),
	(1031,14),
	(1034,7),
	(1035,6),
	(1035,18),
	(1036,4),
	(1036,9),
	(1036,14),
	(1037,7),
	(1039,11),
	(1040,1),
	(1040,4),
	(1040,15),
	(1041,7),
	(1041,16),
	(1043,7),
	(1044,16),
	(1045,7),
	(1045,14),
	(1045,17),
	(1046,7),
	(1046,14),
	(1047,1),
	(1047,13),
	(1047,15),
	(1047,16),
	(1048,11),
	(1049,4),
	(1049,7),
	(1049,9),
	(1049,13),
	(1051,7),
	(1052,7),
	(1053,7),
	(1054,4),
	(1056,4),
	(1056,7),
	(1057,6),
	(1058,7),
	(1058,9),
	(1060,7),
	(1060,18),
	(1061,7),
	(1061,9),
	(1061,11),
	(1061,16),
	(1062,7),
	(1062,9),
	(1062,11),
	(1062,16),
	(1063,2),
	(1063,6),
	(1064,7),
	(1064,14),
	(1066,7),
	(1067,7),
	(1069,7),
	(1070,7),
	(1071,7),
	(1072,7),
	(1072,8),
	(1073,1),
	(1073,7),
	(1073,18),
	(1075,4),
	(1075,7),
	(1076,7),
	(1076,14),
	(1078,6),
	(1079,1),
	(1079,7),
	(1080,7),
	(1081,3),
	(1081,7),
	(1081,9),
	(1082,1),
	(1082,11),
	(1082,15),
	(1082,16),
	(1084,4),
	(1084,5),
	(1084,7),
	(1085,7),
	(1085,10),
	(1085,18),
	(1086,7),
	(1087,13),
	(1087,16),
	(1088,7),
	(1088,10),
	(1088,18),
	(1089,7),
	(1089,10),
	(1089,18),
	(1090,2),
	(1090,7),
	(1090,19),
	(1091,7),
	(1091,9),
	(1092,7),
	(1092,10),
	(1093,7),
	(1093,10),
	(1093,16),
	(1094,7),
	(1094,10),
	(1095,7),
	(1096,7),
	(1096,14),
	(1097,1),
	(1097,7),
	(1097,14),
	(1098,7),
	(1100,7),
	(1100,14),
	(1101,5),
	(1101,7),
	(1101,16),
	(1103,7),
	(1103,10),
	(1104,1),
	(1104,7),
	(1104,19),
	(1105,5),
	(1105,7),
	(1105,16),
	(1107,7),
	(1108,1),
	(1108,7),
	(1109,7),
	(1110,4),
	(1110,7),
	(1110,14),
	(1111,7),
	(1111,10),
	(1111,14),
	(1112,7),
	(1113,7),
	(1114,7),
	(1114,13),
	(1115,7),
	(1116,3),
	(1116,7),
	(1116,10),
	(1116,14),
	(1116,18),
	(1118,7),
	(1119,7),
	(1120,5),
	(1120,7),
	(1122,7),
	(1123,7),
	(1123,14),
	(1124,7),
	(1124,14),
	(1125,4),
	(1125,7),
	(1125,14),
	(1126,6),
	(1126,12),
	(1127,4),
	(1127,7),
	(1127,12),
	(1128,7),
	(1131,4),
	(1131,14),
	(1132,7),
	(1136,5),
	(1136,7),
	(1136,14),
	(1136,16),
	(1138,1),
	(1138,7),
	(1139,4),
	(1139,7),
	(1140,6),
	(1141,7),
	(1142,7),
	(1143,4),
	(1143,7),
	(1144,4),
	(1144,7),
	(1149,7),
	(1150,4),
	(1151,4),
	(1151,7),
	(1151,12),
	(1151,14),
	(1152,1),
	(1152,5),
	(1153,7),
	(1153,8),
	(1154,3),
	(1154,7),
	(1155,7),
	(1157,5),
	(1157,7),
	(1158,5),
	(1158,7),
	(1159,5),
	(1159,7),
	(1160,5),
	(1160,7),
	(1161,6),
	(1162,6),
	(1163,7),
	(1164,5),
	(1164,7),
	(1165,7),
	(1165,14),
	(1166,7),
	(1166,14),
	(1167,4),
	(1168,16),
	(1169,6),
	(1170,4),
	(1174,7),
	(1174,9),
	(1174,14),
	(1175,7),
	(1175,11),
	(1175,14),
	(1176,5),
	(1176,7),
	(1177,7),
	(1179,7),
	(1180,7),
	(1180,16),
	(1182,4),
	(1182,14),
	(1184,7),
	(1184,17),
	(1185,7),
	(1185,9),
	(1185,13),
	(1186,6),
	(1189,4),
	(1189,7),
	(1189,9),
	(1190,6),
	(1191,7),
	(1192,1),
	(1192,16),
	(1193,5),
	(1193,7),
	(1195,7),
	(1195,19),
	(1196,6),
	(1198,4),
	(1199,2),
	(1199,7),
	(1199,9),
	(1200,7),
	(1201,7),
	(1201,14),
	(1201,17),
	(1202,7),
	(1202,12),
	(1202,14),
	(1203,7),
	(1204,6),
	(1205,11),
	(1205,13),
	(1205,15),
	(1206,11),
	(1206,13),
	(1206,16),
	(1207,7),
	(1207,11),
	(1208,7),
	(1209,7),
	(1209,11),
	(1209,16),
	(1211,7),
	(1212,13),
	(1213,6),
	(1213,7),
	(1214,6),
	(1215,7),
	(1216,3),
	(1216,7),
	(1217,7),
	(1218,7),
	(1218,14),
	(1218,18),
	(1219,7),
	(1219,14),
	(1219,18),
	(1220,7),
	(1220,14),
	(1220,18),
	(1221,7),
	(1221,14),
	(1221,18),
	(1223,7),
	(1223,16),
	(1224,7),
	(1226,4),
	(1226,8),
	(1227,7),
	(1228,5),
	(1228,7),
	(1228,13),
	(1229,5),
	(1229,7),
	(1229,13),
	(1230,5),
	(1230,7),
	(1230,13),
	(1231,5),
	(1231,7),
	(1231,13),
	(1232,5),
	(1232,7),
	(1232,13),
	(1233,5),
	(1233,7),
	(1233,13),
	(1234,7),
	(1234,13),
	(1236,7),
	(1237,7),
	(1238,7),
	(1239,6),
	(1241,7),
	(1243,7),
	(1243,16),
	(1245,2),
	(1245,4),
	(1245,7),
	(1247,4),
	(1247,5),
	(1247,16),
	(1248,7),
	(1249,7),
	(1250,2),
	(1250,3),
	(1250,8),
	(1250,9),
	(1251,6),
	(1251,12),
	(1253,4),
	(1253,7),
	(1254,4),
	(1254,7),
	(1255,6),
	(1256,7),
	(1257,7),
	(1257,16),
	(1258,4),
	(1258,7),
	(1258,16),
	(1259,7),
	(1260,7),
	(1261,7),
	(1261,14),
	(1262,7),
	(1262,14),
	(1263,7),
	(1264,7),
	(1265,7),
	(1265,14),
	(1266,7),
	(1269,6),
	(1269,7),
	(1270,7),
	(1271,3),
	(1272,7),
	(1272,16),
	(1273,7),
	(1273,14),
	(1274,7),
	(1275,7),
	(1275,14),
	(1277,4),
	(1277,7),
	(1278,1),
	(1278,7),
	(1278,11),
	(1278,15),
	(1278,16),
	(1280,4);