-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 21 fév. 2020 à 09:33
-- Version du serveur :  5.7.26
-- Version de PHP : 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `initiation`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` tinyint(255) UNSIGNED NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `dateRedaction` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nbComms` smallint(5) UNSIGNED DEFAULT NULL,
  `idRedacteur` tinyint(255) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idRedacteur` (`idRedacteur`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `contenu`, `img`, `dateRedaction`, `nbComms`, `idRedacteur`) VALUES
(3, 'Hardbass Gopnik kurwa', 'De nombreux stéréotypes sont associés au gopnik. Il est souvent représenté accroupi dans un espace public (parcs, arrêts de bus…). Cette position serait héritée des prisonniers soviétiques qui ne souhaitaient pas s’asseoir sur le sol froid1.\r\n\r\nLes gopniks sont souvent vêtus de survêtements Adidas, popularisés pendant les Jeux olympiques d\'été de 1980 par l’équipe olympique soviétique2, certains vouant une vraie passion pour les « trois bandes » de la marque. Cela dit, certains gopniks renient la marque d\'origine, se tournant vers des contrefaçons, Adidas étant une multinationale, contraire à l\'esprit du courant.\r\n\r\nParmi les attributs du gopnik on retrouve les graines de tournesol, les cigarettes bon marché, le kvas, la vodka, les mocassins, le béret et leur style de musique favori : le hardbass.\r\n\r\nLes gopniks traitent aux gens de l\'ouest de western spy (espion de l\'ouest en anglais), comme par exemple le duo Hardbass School ont créé une chanson là ils traitent au célèbre youtubeur PewDiePie de western.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQYrHOqzaC9RyXZKYyM8Mf47QlER6NoyHh2FO_AOgPli6zzDuKS', '2020-02-06 13:38:51', NULL, 14),
(4, 'Tu fais du tuning si tu viens du nord??', 'Le terme « tuning » provient du verbe anglais « to tune » qui signifie accorder (pour des instruments de musique à l\'origine, mais se dit aussi pour le réglage d\'un moteur). Le sens d\'accorder a été légèrement altéré ici pour signifier optimiser, ou mettre au point.\r\n\r\nLe but premier du tuning est de personnaliser un véhicule, mais aussi d\'améliorer ses performances. Cela se caractérise généralement par l\'installation d\'accessoires extérieurs (pièces de carrosserie, roues, pneus, aileron, vitres teintées, autocollants en vinyle) et intérieurs (volant, sièges, arceau de sécurité), de pièces mécaniques (turbocompresseur, transmission, freins, suspension, échappement) ou électroniques (ECU, systèmes multimédia).\r\n\r\nLe tuning et la préparation automobile se sont surtout développés aux États-Unis et au Japon, puis en Europe. Chacune de ces régions a d\'ailleurs développé ses propres styles de tuning. De plus en plus de pays pratiquent cette mouvance.\r\n\r\nLe tuning est parfois considéré par les amateurs d\'automobiles, et plus généralement le grand public, comme un loisir pratiqué par les couches populaires de la société. Cependant, ce loisir peut s\'avérer devenir un hobby de luxe. En effet, nombre de préparateurs automobile connus ont des réputations prestigieuses grâce à la qualité de leurs travaux. Ces préparateurs peuvent aussi bien être des préparateurs constructeurs (appartenant à l\'entreprise) que des préparateurs indépendants. Les détracteurs du tuning lui reprochent, entre autres, son coût assez élevé ainsi qu\'un mauvais goût souvent dû à des extravagances.\r\n\r\nIl existe des concours d\'accélération (« runs ») pour comparer les performances des voitures, des rassemblements (« shows ») de voitures modifiées et des concours concernant les systèmes audio (notamment en matière de puissance sonore). Ceux qui pratiquent le tuning à titre de loisir sont parfois appelés des « tuneurs »2.', 'https://linfoweb.com/wp-content/uploads/2019/08/tuning1.jpg', '2020-02-06 15:53:32', NULL, 13),
(5, 'Chypre : Un homme se filme en tenant le volant avec les pieds, quarante jours de prison', 'Un Chypriote qui avait publié une vidéo de lui conduisant un camion avec ses pieds sur une autoroute de l’île a été condamné, ce jeudi, à quarante jours de prison. Celui-ci avait plaidé coupable pour « conduite dangereuse », a rapporté l’agence chypriote CNA.  Le conducteur de 43 ans a admis avoir publié lui-même la vidéo sur les réseaux sociaux, ainsi qu’avoir conduit sans assurance. Le tribunal de Larnaca, dans le Sud-Est, l’a reconnu coupable d’acte imprudent ayant mis en danger la vie d’autrui. Le juge a également ordonné le retrait de son permis pour une durée de neuf mois.', 'https://img.20mn.fr/EQ4LRCj5QGGnDBhiuKHSWQ/640x410_retroviseur-voiture-illustration.jpg', '2020-02-14 15:04:28', NULL, 24),
(6, 'Russie : Il fait croire qu’il a le coronavirus dans le métro et provoque la panique', 'Le coronavirus inspire décidément beaucoup de petits plaisantins. Un homme a récemment été arrêté à Moscou (Russie) pour avoir fait croire qu’il avait le coronavirus en pleine rame de métro, provoquant la panique chez les passagers, rapporte la BBC.  Sur une vidéo, publiée sur un site de canulars le 2 février dernier, on voit plusieurs personnes tenter d’aider un homme vraisemblablement malade qui titube et tombe au sol. Les passagers s’enfuient quand la « victime », qui porte un masque médical, se met à convulser sur le sol du métro. La vidéo a depuis été retirée du site.', 'https://img.20mn.fr/Xf3Wf2qvTuiyGrr-d9oLZQ/960x614_coronavirus-une-app-pour-savoir-si-on-a-ete-en-contact-avec-des-personnes-malades.jpg', '2020-02-14 15:09:26', NULL, 24),
(7, 'Au Japon, une application permet de « sortir » avec un samouraï', 'Fatigués des applications de rencontre traditionnelles ? Laissez-vous tenter par cette alternative insolite. Samouraï Love Ballad est une application dans laquelle les joueurs, ou plutôt les joueuses, choisissent un partenaire parmi une sélection d’authentiques seigneurs de guerre datant du XVe au XVIe siècle et qui a su séduire des centaines de milliers d’utilisatrices au Japon, comme dans le reste du monde, rapporte le Japan Times.  En jouant le rôle d’un protagoniste féminin, la joueuse progresse dans l’histoire du jeu en choisissant des actions et des réponses, qui apparaissent sur l’écran sous la forme d’une bulle comme dans un manga. Moyennant la possibilité d’engager une relation avec jusqu’à 10 personnages de samouraï, les joueuses seront toutefois incitées à dépenser de l’argent dans des accessoires en tous genres pour avancer dans le jeu et gagner le cœur de leur samouraï.', 'https://img.20mn.fr/66F79srlQMih-cII2KapgQ/640x410_femme-jouant-jeu-simulation-romantique-ultra-populaire-serie-applications-ikemen.jpg', '2020-02-14 15:10:11', NULL, 24),
(8, ' Twitter : La Normandie veut aussi son emoji, comme la Bretagne', 'Une guerre entre Bretons et Normands à coups d’émojis ? Alors que la Bretagne a bénéficié de son propre emoji sur Twitter durant plusieurs semaines, la Normandie réclame le même privilège au réseau social, rapporte 76actu.  Le conseil régional a confirmé le projet dans un tweet le 27 janvier dernier. En réponse à un internaute, la Région Normandie a annoncé que la création d’un emoji spécial était « dans les tuyaux » avec Twitter.', 'https://img.20mn.fr/JTMd0C5CTf-3LdnSg5QOhQ/960x614_drapeau-normandie-illustration.jpg', '2020-02-14 15:10:41', NULL, 24),
(9, 'Municipales : A Dijon, une liste écologiste inscrit « SEXE » sur son affiche pour attirer l’attention', 'La stratégie est osée mais payante. Un candidat écologiste aux municipales à Dijon (Côte-d’Or) a inscrit le mot «  SEXE » sur certaines de ses affiches pour attirer l’attention des électeurs. « Maintenant que vous êtes attentifs, occupons-nous du climat », peut-on lire ensuite sur l’affiche en plus petits caractères.  « On est un groupe d’écologistes amateurs », a expliqué Bruno Louis, médecin de 55 ans et tête de la liste « Un printemps écologiste pour Dijon ». « On s’est dit que pour avoir un espace dans les médias, il fallait un peu bousculer le genre. »', 'https://img.20mn.fr/wd9c5hGFTSqKBVhEQWmrwA/960x614_illustration-dijon-cote-or.jpg', '2020-02-14 15:11:50', NULL, 24),
(10, 'Italie : Leur vol est annulé, ils demandent une indemnisation… pour leur chien', 'Jack pourrait devenir le premier animal à recevoir une compensation de la part d’une compagnie aérienne après l’annulation de son vol. Les maîtres de ce chien ont adressé à la Danish Air Transport (DAT) une demande de dédommagement concernant leur petit compagnon, rapporte La Libre.  En cause, un problème technique qui provoque l’annulation du vol Palerme – Lampedusa (Italie) du 14 janvier, que les propriétaires du chien et leur animal devaient prendre. Conformément à la législation européenne, les deux Italiens ont déjà reçu un dédommagement de 250 euros chacun, le montant remboursé pour les trajets inférieurs à 1.500 km.', 'https://img.20mn.fr/IqGP4Vm2TeKgf27nMJCoqg/960x614_chien-jack-russel-illustration.jpg', '2020-02-14 15:12:31', NULL, 24);

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

DROP TABLE IF EXISTS `commentaires`;
CREATE TABLE IF NOT EXISTS `commentaires` (
  `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pseudoAuteur` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `dateAjout` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idArticle` tinyint(3) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idArticle` (`idArticle`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `pseudoAuteur`, `contenu`, `dateAjout`, `idArticle`) VALUES
(1, 'janique', 'très bien eheh!', '2020-02-06 13:40:27', 3),
(2, 'jerry', 'ceci est un commentaire', '2020-02-11 08:16:28', 4),
(26, 'rosebif', 'Entrez vfdgjh', '2020-02-11 15:45:13', 4),
(27, 'rosebif', 'fsfz', '2020-02-11 15:45:52', 4),
(28, 'rosebif', '445454', '2020-02-11 15:46:20', 4),
(29, 'rosebif', 'cool', '2020-02-11 15:54:09', 4),
(30, 'rosebif', 'lili', '2020-02-11 15:54:51', 4),
(31, 'rosebif', 'Entrez votre commentaire', '2020-02-11 15:59:21', 4),
(32, 'test', 'Entrez votre dlfmecommentaire', '2020-02-14 13:28:29', 3),
(33, 'h_core57', 'hello', '2020-02-18 13:15:37', 10),
(34, 'h_core57', 'hello', '2020-02-18 13:17:41', 10),
(35, 'h_core57', 'salut', '2020-02-18 13:23:42', 10);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `prenom` varchar(60) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `passwd` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `prenom`, `nom`, `passwd`) VALUES
(1, 'rosebif', 'rose', 'bif', 'test'),
(2, 'franckreich', 'franck', 'reich', 'test'),
(3, 'sachahutte', 'sacha', 'hutte', 'test'),
(4, 'joseomoine', 'José', 'OMoine', 'test'),
(5, 'larrygolade', 'Larry', 'Golade', 'test'),
(6, 'levytation', 'Levy', 'Tation', 'test'),
(7, 'lourseblanc', 'Lou', 'Rseblanc', 'test'),
(8, 'luciehole', 'Lucie', 'Hole', 'test'),
(9, 'manuelscolaire', 'Manuel', 'Scolaire', 'test'),
(10, 'marchallombre', 'Marchal', 'Lombre', 'test'),
(11, 'maudegorge', 'Maude', 'Gorge', 'test'),
(12, 'melbourne', 'Mel', 'Bourne', 'test'),
(13, 'nicotine', 'Nico', 'Tine', 'test'),
(14, 'crockodile', 'Crock', 'Odile', 'test'),
(15, 'ottomoto', 'Otto', 'Moto', 'test'),
(16, 'paulanploi', 'Paul', 'An Ploi', 'test'),
(17, 'pitagore', 'Pit', 'A. Gore', 'test'),
(18, 'raynette', 'Ray', 'Nette', 'test'),
(19, 'standard', 'Stan', 'Dard', 'test'),
(20, 'sophiesonsek', 'sophie', 'sonsek', 'test'),
(21, 'theocourant', 'Théo', ' Courant', 'test'),
(22, 'tessticule', 'Tess', 'Ticule', 'test'),
(23, 'test', 'test', 'test', 'test'),
(24, 'h_core57', 'vinc', 'lre', 'test');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`idRedacteur`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `commentaires_ibfk_1` FOREIGN KEY (`idArticle`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
