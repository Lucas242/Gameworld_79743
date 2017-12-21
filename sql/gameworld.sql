-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 21 dec 2017 om 10:31
-- Serverversie: 5.7.19
-- PHP-versie: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gameworld`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

CREATE TABLE `category` (
  `Id` int(11) NOT NULL,
  `CategoryName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `category`
--

INSERT INTO `category` (`Id`, `CategoryName`) VALUES
(1, 'Xbox'),
(2, 'Playstation'),
(3, 'Steam');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `games`
--

CREATE TABLE `games` (
  `gameId` int(3) NOT NULL,
  `gameTitle` varchar(100) NOT NULL,
  `gameDescription` text NOT NULL,
  `gamePrice` decimal(5,2) NOT NULL,
  `gameImage` varchar(100) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `CategoryName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `games`
--

INSERT INTO `games` (`gameId`, `gameTitle`, `gameDescription`, `gamePrice`, `gameImage`, `CategoryId`, `CategoryName`) VALUES
(1, 'ARK', 'As a man or woman stranded naked, freezing and starving on the shores of a mysterious island called ARK, you must hunt, harvest resources, craft items, grow crops, research technologies, and build shelters to withstand the elements. Use your cunning and resources to kill or tame the leviathan dinosaurs and other primeval creatures roaming the land, and team up with or prey on hundreds of other players to survive, dominate... and escape!', '60.00', 'ark.jpg', 1, 'Xbox'),
(2, 'Fifa 18', 'The Call of Duty franchise is a global phenomenon, selling millions of copies each year and captivating players for months at a time thanks to an addictive, highly honed multiplayer mode. With Modern Warfare 3 racking up 6.5 million sales in the first twenty-four hours of release, this year’s installment, Black Ops 2, has a lot to live up to, but we reckon it’s the biggest and best Call of Duty to date.', '60.00', 'fifa18.jpg', 1, 'Xbox'),
(3, 'Minecraft', 'Minecraft is a game where you dig (mine) and build (craft) different kinds of 3D blocks within a large world of varying terrains and habitats to explore.\r\nIn this world the sun rises and sets as you go about your work, gathering materials and making tools. There is rain and the occasional lightning storm, and animals that you can tame, farm or use for food. Depending on which mode you’re playing in, you might also need to fight for your survival against hunger, danger and bad guys.', '25.00', 'minecraft.jpg', 1, 'Xbox'),
(4, 'BlackOps 1', 'A lie is a lie. Just because they write it down and call it history doesn\'t make it the truth. We live in a world where seeing is not believing, where only a few know what really happened. We live in a world where everything you know is wrong.', '40.00', 'blackops1.jpg', 1, 'Xbox'),
(5, 'BlackOps 2', 'The Call of Duty franchise is a global phenomenon, selling millions of copies each year and captivating players for months at a time thanks to an addictive, highly honed multiplayer mode. With Modern Warfare 3 racking up 6.5 million sales in the first twenty-four hours of release, this year’s installment, Black Ops 2, has a lot to live up to, but we reckon it’s the biggest and best Call of Duty to date.', '60.00', 'blackops2.jpg', 1, 'Xbox'),
(6, 'BlackOps 3', 'Treyarch, developer of the two most-played games in Call of Duty® history, returns with Call of Duty®: Black Ops III. For the first time with three-years of development, the revered, award-winning studio has created its first title for next-gen hardware in the critically acclaimed Black Ops series. Welcome to Call of Duty: Black Ops 3, a dark, twisted future where a new breed of Black Ops soldier emerges and the lines are blurred between our own humanity and the technology we created to stay ahead, in a world where cutting-edge military robotics define warfare.', '60.00', 'blackops3.jpg', 1, 'Xbox'),
(7, 'Fifa 17', 'FIFA 17 is a sports video game in the FIFA series developed and published by Electronic Arts, which released in September 2016. This is the first FIFA game in the series to use the Frostbite game engine.[3] Marco Reus serves as the cover athlete on the game.', '20.00', 'fifa17.png', 2, 'Playstation'),
(8, 'Grand Theft Auto V', 'When a young street hustler, a retired bank robber and a terrifying psychopath find themselves entangled with some of the most frightening and deranged elements of the criminal underworld, the U.S. government and the entertainment industry, they must pull off a series of dangerous heists to survive in a ruthless city in which they can trust nobody, least of all each other.', '60.00', 'gta5.jpg', 2, 'Playstation'),
(9, 'Rocket League', 'A futuristic Sports-Action game, Rocket League®, equips players with booster-rigged vehicles that can be crashed into balls for incredible goals or epic saves across multiple, highly-detailed arenas. Using an advanced physics system to simulate realistic interactions, Rocket League® relies on mass and momentum to give players a complete sense of intuitive control in this unbelievable, high-octane re-imagining of association football.', '20.00', 'rocketleague.jpg', 2, 'Playstation'),
(10, 'PlayerUnknown Battlegrounds', 'PUBG, BATTLEGROUNDS is a competitive survival shooter. Players are dropped into a wide, open area, and they must fight to the death - all while the battlefield shrinks, adding pressure to all in its grip. Use a variety of interesting weapons and vehicles amid the BATTLEGROUNDS.', '30.00', 'pubg.jpg', 2, 'Playstation'),
(11, 'Farming Simulator 2017', 'Take on the role of a modern farmer in Farming Simulator 17! Immerse yourself in a huge open world loaded with new content: new vehicles, animals, crops, gameplay mechanics and a detailed North American environment! ', '20.00', 'farming.jpg', 2, 'Playstation'),
(12, 'Assassin\'s Creed Origins', 'Assassin\'s Creed Origins is an action-adventure video game developed by Ubisoft Montreal and published by Ubisoft. It is the tenth major installment in the Assassin\'s Creed series and the successor to 2015\'s Assassin\'s Creed Syndicate. It was released worldwide for Microsoft Windows, PlayStation 4, and Xbox One on October 27, 2017.', '60.00', 'Assassin\'sCreedOrigins.jpg', 2, 'Playstation'),
(13, 'Call of Duty: WWII', 'Call of Duty returns to its roots with Call of Duty: WWII--a breathtaking experience that redefines World War II for a new gaming generation. Land in Normandy on D-Day and battle across Europe through iconic locations in history’s most monumental war. Experience classic Call of Duty combat, the bonds of camaraderie, and the unforgiving nature of war against a global power throwing the world into tyranny.', '60.00', 'CallofDutyWWII.jpg', 3, 'Steam'),
(14, 'Overwatch', 'In a time of global crisis, an international task force of heroes banded together to restore peace to a war-torn world: OVERWATCH. It ended the crisis and helped to maintain peace in the decades that followed, inspiring an era of exploration, innovation, and discovery. But after many years, Overwatch\'s influence waned, and it was eventually disbanded.', '36.50', 'overwatch.jpg', 3, 'Steam'),
(15, 'Battlefield 1', 'Battlefield’s formula for large-scale, objective-driven warfare is as intense and theatrical as ever against the haunting, archaic backdrop of World War I. Battlefield 1’s single-player campaign is a short but pleasantly surprising anthology of small, human stories that does a good job spotlighting some of the key technology of the era.', '60.00', 'battlefield1.jpg', 3, 'Steam'),
(16, 'Need For Speed Payback', 'Electronic Arts’ arcade-style racing franchise Need For Speed has been around since 1994, but recent outings have earned it a reputation as the videogame equivalent of a Dan Brown book. That’s because it sells fantastically well, but nobody can fathom why. How refreshing it would be to assert that the latest iteration, Payback, marks a triumphant return to form for the series. But alas, having played it, that would be an impossibility.', '60.00', 'needforspeed.jpg', 3, 'Steam'),
(17, 'Destiny 2', 'Humanity’s last safe city has fallen to an overwhelming invasion force, led by Ghaul, the imposing commander of the brutal Red Legion. He has stripped the city’s Guardians of their power, and forced the survivors to flee. You will venture to mysterious, unexplored worlds of our solar system to discover an arsenal of weapons and devastating new combat abilities. To defeat the Red Legion and confront Ghaul, you must reunite humanity’s scattered heroes, stand together, and fight back to reclaim our home.', '40.00', 'destiny.jpg', 3, 'Steam'),
(18, 'The Sims 4', 'The Sims 4 is the fourth major title in life simulation video game series The Sims, developed by Maxis and The Sims Studio and published by Electronic Arts. The Sims 4 was originally announced on May 6, 2013, and was released in North America on September 2, 2014 for Microsoft Windows.[1] A Mac compatible version of the game was made available for digital download on February 17, 2015.[2] The Sims 4 is the first PC game to top all-format charts in two years.[3] The game has received mixed reviews since its release, with the majority of criticism directed towards its lack of content.[4] Since its launch, it became the best selling PC game of 2014 and 2015. As of October 2016, The Sims 4 has sold over 5 million copies worldwide.[5] Versions of the game for the PlayStation 4 and Xbox One consoles were released on November 17, 2017.', '20.00', 'sims.jpg', 3, 'Steam');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Id`);

--
-- Indexen voor tabel `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`gameId`),
  ADD KEY `gameId` (`gameId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `category`
--
ALTER TABLE `category`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `games`
--
ALTER TABLE `games`
  MODIFY `gameId` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
