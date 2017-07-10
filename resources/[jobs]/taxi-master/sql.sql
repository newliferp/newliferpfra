
CREATE TABLE `coffretaxi` (
  `id` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `solde` varchar(10) NOT NULL,
  `dirtysolde` varchar(10) NOT NULL,
  `lasttransfert` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `coffretaxi` (`id`, `identifier`, `solde`, `dirtysolde`, `lasttransfert`) VALUES
(1, '0', '500', '400', '10');

ALTER TABLE `coffretaxi`
  ADD PRIMARY KEY (`id`);
COMMIT;
