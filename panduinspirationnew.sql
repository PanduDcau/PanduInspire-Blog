-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2022 at 09:17 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `panduinspiration`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`Id`, `User_Id`, `Name`, `Created_at`) VALUES
(1, 1, 'Entertainment', '2020-07-28 08:26:36'),
(2, 2, 'Environment', '2020-07-28 14:52:57'),
(3, 1, 'Animation', '2020-07-28 08:26:36'),
(4, 2, 'Technology', '2020-07-30 15:00:21'),
(5, 2, 'Science', '2020-07-30 19:46:01'),
(7, 2, 'Mystery', '2020-07-31 08:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `Id` int(11) NOT NULL,
  `Post_Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Body` text NOT NULL,
  `Created_At` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`Id`, `Post_Id`, `Name`, `Email`, `Body`, `Created_At`) VALUES
(2, 1, 'PanduBro', 'wpandulp@gmail.com', 'Well Done!!', '2020-07-29 07:28:55'),
(6, 3, 'Predator', 'Predator@gmail.com', 'Nice Word of Advice Brother', '2020-07-29 07:46:03'),
(7, 2, 'Predator', 'Predator@gmail.com', 'Good Advices!!', '2020-07-29 15:14:44'),
(9, 8, 'Arrow', 'Arrow@gmail.com', 'Nice section in VR Trends.Glad To Here more !!', '2020-07-30 20:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `Id` int(11) NOT NULL,
  `Category_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Tags` varchar(255) NOT NULL,
  `Body` text NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Author` varchar(255) NOT NULL,
  `Slug` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`Id`, `Category_Id`, `User_Id`, `Title`, `Tags`, `Body`, `Created_at`, `Author`, `Slug`) VALUES
(1, 3, 1, 'Young Justice Season 3 (Outsiders) Recap', 'Entertainment, Comic , Action , Animation ', '<!-- wp:image {\"id\":196,\"sizeSlug\":\"large\"} -->\r\n<p><img alt=\"\" src=\"https://panduinspirehome.files.wordpress.com/2019/08/young.jpg?w=1024\" /></p>\r\n\r\n<p><em><strong>Young Jusice New Animated Tv Series Season 3</strong></em></p>\r\n<!-- /wp:image --><!-- wp:paragraph {\"dropCap\":true,\"fontSize\":\"small\"} -->\r\n\r\n<p>Perhaps the biggest news out of the&nbsp;<em>Young Justice</em>&nbsp;panel is that season three has returned its episode count back to 26.</p>\r\n<!-- /wp:paragraph --><!-- wp:paragraph {\"fontSize\":\"small\"} -->\r\n\r\n<p>Season three&rsquo;s increased episode count is a huge win for the show. One of the main constraints for season two,&nbsp;<a href=\"http://youngjustice.wikia.com/wiki/Invasion\"><em>Invasion</em></a>, was that the show was only given 20 episodes, which forced Weisman and Vietti to tell a tighter story than season one, which had 26. The higher episode count for season three means that the show will have more freedom to flesh out its characters.</p>\r\n<!-- /wp:paragraph --><!-- wp:paragraph {\"fontSize\":\"small\"} -->\r\n\r\n<p>The increased episode count isn&rsquo;t the only thing giving Weisman and Vietti more freedom. Because&nbsp;<em>Young Justice</em>&nbsp;is moving from its ill-fated run on Cartoon Network to DC Entertainment&rsquo;s upcoming digital service, it means that the Cartoon Network&rsquo;s strict broadcast practices will no longer restrict the show&rsquo;s direction and content. Vietti shared that the writers have a little more flex room to pursue more &ldquo;adult themes and adult storylines,&rdquo; which fits the show&rsquo;s evolution.</p>\r\n<!-- /wp:paragraph --><!-- wp:paragraph {\"fontSize\":\"small\"} -->\r\n\r\n<p>Before sharing some cursory details about&nbsp;<em>Outsiders</em>, the showrunners took a moment to recognize all of the cosplayers in the audience. And there were many in attendance, from characters throughout seasons one and two.</p>\r\n<!-- /wp:paragraph --><!-- wp:paragraph {\"fontSize\":\"small\"} -->\r\n\r\n<p>One of&nbsp;<em>Young Justice</em>&lsquo;s themes has been the passage of time and the evolution of its characters, with the most visible example being the five-year time gap between the first two seasons. Vietti joked that since that time skip was such a huge success, they &ldquo;decided&rdquo; to do the same thing in real life &mdash; referencing the fact that by the time&nbsp;<em>Outsiders</em>&nbsp;returns in 2018, five years will have passed since the last season,&nbsp;<em>Invasion</em>, ended in 2013.</p>\r\n<!-- /wp:paragraph -->', '2020-07-26 15:10:03', 'Pandula Pallewatta', 'Young-Justice-Season'),
(2, 2, 1, 'Deforestation and forest degradation', 'Environment , Law , Nature, Energy', '<!-- wp:heading {\"ampFitText\":true} -->\r\n<h2>Why We have to be serious in this disastrous situation?</h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:heading {\"level\":3,\"ampFitText\":true} --></p>\r\n\r\n<h3>Vitality of this crisis to be concerned ?</h3>\r\n<!-- /wp:heading --><!-- wp:paragraph {\"dropCap\":true,\"ampFitText\":true} -->\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Deforestation and forest degradation are the biggest threats to forests worldwide. Deforestation occurs when forests are converted to non-forest uses, such as agriculture and road construction. Forest degradation occurs when forest ecosystems lose their capacity to provide important goods and services to people and nature.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:image {\"id\":404,\"sizeSlug\":\"large\",\"className\":\"is-style-rounded\",\"ampLightbox\":true} --></p>\r\n\r\n<p><img alt=\"\" src=\"https://panduinspirehome.files.wordpress.com/2020/05/defor2.jpg?w=1024\" /></p>\r\n\r\n<p>Buldozers clear the &quot;Sagu Trees&quot; to make way for palm oil plantations. Sagu palm trees are an important food source for some Papuan tribes who live in the forest. Oil palm plantations have resulted in numerous negative impacts on the environment, on indigenous peoples, on people&#39;s livelihoods, on the national economy, and have resulted in the concentration of land in the hands of few companies Photography by Ardiles Rante for Greenpeace</p>\r\n\r\n<p><!-- /wp:image --><!-- wp:paragraph {\"ampFitText\":true} --></p>\r\n\r\n<p>Over half of the tropical fauna and flora worldwide is being ripped, torn apart since 1960s because of the revolution of machinery.As a result of that in every second, more than one hectare of tropical forests is been drastically degraded.</p>\r\n\r\n<p><!-- /wp:paragraph --></p>\r\n', '2020-07-26 14:59:25', 'Pandula Pallewatta', 'Deforestation-and-fo'),
(3, 7, 2, 'Arrow: Stephen Amell Says Oliver\'s Ending is What He Wanted for the Character', 'Entertainment , Action , Adventure , Mystery', '<p><!-- wp:image {\"id\":116,\"width\":732,\"height\":488,\"sizeSlug\":\"large\"} --></p>\r\n\r\n<p><img alt=\"\" src=\"https://panduinspirehome.files.wordpress.com/2019/08/arrow.jpg?w=1024\" style=\"height:488px; width:732px\" /></p>\r\n\r\n<p><!-- /wp:image --><!-- wp:paragraph {\"dropCap\":true,\"fontSize\":\"small\"} --></p>\r\n\r\n<p>For the past seven seasons fans have watched&nbsp;<a href=\"https://comicbook.com/category/stephen-amell-actor\">Stephen Amell</a>&#39;s Oliver Queen go on a journey that took him from a hood-wearing vigilante taking out those who failed Starling City to that of a full-blown hero who had not only succeeded at saving the city but who had emerged from the shadows to do so on&nbsp;<em>Arrow</em>. When the show returns this fall for its eighth and final season which contains only 10 episodes to be streamed, though, fans already know that the last chapter&nbsp;<a href=\"https://comicbook.com/2019/05/14/arrow-spoilers-season-7-finale-oliver-queen-crisis-on-infinite-earths/\" target=\"_blank\">will see the end of the journey for Oliver</a>. The Season 7 finale already revealed the hero dies in the end, but according to series star Amell, there are still some surprises that await -- and Oliver&#39;s ultimate ending is the one that <em><strong>he personally wants.</strong></em></p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph {\"fontSize\":\"small\"} --></p>\r\n\r\n<p>In an interview with&nbsp;<a href=\"https://www.tvguide.com/news/arrow-season-8-stephen-amell-david-ramsey-character-endings/\" target=\"_blank\">TV Guide</a>, Amell explained that Oliver&#39;s ending on&nbsp;<em>Arrow</em>&nbsp;is what he wants, so much so that it&#39;s something he himself pitched.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph {\"fontSize\":\"small\"} --></p>\r\n\r\n<p>&quot;It&#39;s what I want,&quot; Amell said. &quot;I pitched it for a very long time. It&#39;s what I want, but concurrently, that doesn&#39;t mean that there aren&#39;t surprises along the way. I was floored when I got the pitch for the crossover. I don&#39;t see it coming -- nobody sees it coming. It&#39;s going to be so rad.&quot;</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph {\"fontSize\":\"small\"} --></p>\r\n\r\n<p>The Season 7 finale Oliver Queen and Felicity Smoak (Emily Bett Rickards) going into hiding after defeating the Ninth Circle. Quite a bit of time passed, and their daughter Mia was born, only for their new bit of domesticity to be&nbsp;<a href=\"https://comicbook.com/2019/08/04/crisis-on-infinite-earths-spoilers-arrowverse-crossover-2019-smallville/\" target=\"_blank\">shattered by the arrival of The Monitor (LaMonica Garrett)</a>.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph {\"fontSize\":\"small\"} --></p>\r\n\r\n<p>As The Monitor explained, he was coming to collect on Oliver&#39;s deal that he made during &quot;Elseworlds&quot;, where he bargained for the lives of Barry Allen and Kara Danvers. The Monitor revealed that in order to keep the universe at balance, Oliver would die in the coming &quot;Crisis&quot; -- but that he needed to help try to help prevent more bloodshed in the event.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph {\"fontSize\":\"small\"} --></p>\r\n\r\n<p>With &quot;Crisis&quot; being the biggest event for the Arrowverse yet, it positions Oliver to go out as a huge hero -- and give&nbsp;<a href=\"https://comicbook.com/2019/07/20/arrow-hardest-hit-crisis-on-infinite-earths-marc-guggenheim-the-/\" target=\"_blank\"><em>Arrow</em>&nbsp;the most consequences of the rest of the Arrowverse shows</a>.</p>\r\n\r\n<p><!-- /wp:paragraph --></p>\r\n', '2020-07-28 13:56:18', 'Pandula Pallewatta', 'Arrow-Stephen-Amell-'),
(4, 2, 1, 'The World Is Headed for a Food Security Crisis. Here\'s How We Can Avert It', 'Food , Economy , Habitations', '<p><!-- wp:heading --></p>\r\n\r\n<h2><strong>What is global food security and why should we be concerned about it?</strong></h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:paragraph {\"dropCap\":true,\"ampFitText\":true} --></p>\r\n\r\n<p>Food security is a really serious issue facing all of humanity. In essence, it&rsquo;s about how we feed a growing population at a time of climate change, which is unpredictable and not fully understood. Globally, we are reliant on a very slender thread of genetic diversity. According to the U.N.&rsquo;s Food and Agriculture Organization (FAO), more than 50% of all human calories come from just three plants: rice, maize, and wheat.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph --></p>\r\n\r\n<p><strong>Read more:</strong>&nbsp;<a href=\"https://time.com/8515/what-the-world-eats-hungry-planet/\"><em>Hungry Planet: What The World Eats</em></a></p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:image {\"id\":382,\"sizeSlug\":\"large\",\"className\":\"is-style-default\",\"ampLightbox\":true,\"ampNoLoading\":true} --></p>\r\n\r\n<p><img alt=\"\" src=\"https://panduinspirehome.files.wordpress.com/2020/04/food10.jpg?w=1024\" /></p>\r\n\r\n<p>Why Meat consumption is give you bad Consequences ?</p>\r\n\r\n<p><!-- /wp:image --></p>\r\n', '2020-07-28 14:48:04', 'Pandula Pallewatta', 'The-World-Is-Headed-'),
(7, 4, 1, 'Apple Tv+Said To Support Limited Offline Viewing, Restricted Multi-Device Streaming', 'Entertainment , Movies , Adventure', '<p><!-- wp:image {\"id\":143,\"sizeSlug\":\"large\"} --></p>\r\n\r\n<p><img alt=\"\" src=\"https://panduinspirehome.files.wordpress.com/2019/08/appletv.jpeg?w=1024\" /></p>\r\n\r\n<p><strong>Apple Tv Now In 4K</strong></p>\r\n\r\n<p><!-- /wp:image --><!-- wp:paragraph {\"dropCap\":true,\"fontSize\":\"small\"} --></p>\r\n\r\n<p>Apple TV+, the ad-free service that is aimed to offer original shows, movies, and documentaries to Apple customers, may provide limited offline viewing. Some code strings spotted in macOS Catalina have suggested that the Cupertino giant might not allow Apple TV+ users to download the available videos multiple times. This sounds similar to how Netflix restricts multiple downloads on its platform. The upcoming macOS version has also suggested that the Apple TV+ service could restrict multi-device streaming.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph {\"fontSize\":\"small\"} --></p>\r\n\r\n<p>MacRumors reports that the code strings found in macOS Catalina suggested that Apple TV+ would imply limitations on the total number of downloads, downloads per show or movie, or the total number of times a show or movie can be downloaded.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph {\"fontSize\":\"small\"} --></p>\r\n\r\n<p>Apple didn&#39;t define offline viewing part while announcing the paid service at an event back in March, though it confirmed that it would allow users to download content offline.</p>\r\n\r\n<p><!-- /wp:paragraph --></p>\r\n', '2020-07-30 18:55:47', 'Pandula Pallewatta', 'Apple-TvSaid-To-Supp'),
(8, 1, 2, 'THE FUTURE OF FILM - TRENDS AND CHANGE TO WATCH IN NEAR FUTURE', 'Adventure , Entertainment , Economy', '<ul>\r\n	<li><img alt=\"\" src=\"https://panduinspirehome.files.wordpress.com/2020/04/birds-of-prey.jpg?w=724\" />\r\n	<p> </p>\r\n	</li>\r\n</ul>\r\n\r\n<p>New Movies Which are Developed In Latest Technology</p>\r\n\r\n<p>Today, our online habits are transforming the way we consume video content, whether in blockbuster productions or the advertising industry.</p>\r\n\r\n<p>Five long years ago, David Lynch lamented the future of filmmaking and voiced his concerns for the big screen, <a href=\"https://www.digitalspy.com/movies/a491726/david-lynch-watching-movies-on-a-smartphone-is-pathetic/\">announcing</a>:</p>\r\n\r\n<blockquote>\r\n<p><em>\"Television is way more interesting than cinema now. It seems like the art-house has gone to cable.\"</em></p>\r\n</blockquote>\r\n\r\n<p> Online streaming platforms such as Netflix are leading a transformation in film entertainment, while social channels like Instagram are fast evolving to offer more video content than ever.</p>\r\n\r\n<p><!-- wp:heading --></p>\r\n\r\n<h2><strong>1. The world loves localised content</strong> </h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:core-embed/youtube {\"url\":\"https://youtu.be/5-JbLpglymw\",\"type\":\"rich\",\"providerNameSlug\":\"\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} --></p>\r\n\r\n<p>Filmmaking Trends in Future.</p>\r\n\r\n<p><!-- /wp:core-embed/youtube --><!-- wp:paragraph {\"dropCap\":true,\"ampFitText\":true} --></p>\r\n\r\n<p>Looking for something new to watch? You’re in luck. Over the next five years, it’s estimated Netflix and Amazon will spend <a href=\"https://www.bmmagazine.co.uk/opinion/investors-should-look-to-the-uks-media-sector/\">an annual total of more than $20 billion</a> on original content, while Apple and Facebook are also taking steps to invest in their own projects.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph {\"ampFitText\":true} --></p>\r\n\r\n<p>With this, we’re seeing a shift from national broadcasting traditions to extensive distribution across global networks – and our charming British accents are doing us a world of good. UK TV production companies generated record revenues of £2.7 billion in 2017, with much of this attributed to overseas sales of high-end dramas such as Victoria and Sherlock.</p>\r\n\r\n<h2><!-- wp:paragraph {\"dropCap\":true,\"ampFitText\":true} --><strong>2. Audiences engage with emotional filmmaking trends</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><img alt=\"\" src=\"https://panduinspirehome.files.wordpress.com/2020/04/vr3-1.jpg?w=1024\" /></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Filmmaking – whether it’s working to direct something wondrous through a lens or produce someone else’s masterpiece – is a truly emotional process.</strong></p>\r\n\r\n<p><strong><!-- /wp:paragraph --><!-- wp:paragraph {\"ampFitText\":true} --></strong></p>\r\n\r\n<p><strong>As you’ll have likely seen during the latest season of Christmas adverts, creating emotive content is increasingly seen as one of the best (and most profitable) ways to endear brands to consumers. When it comes to the future of filmmaking for commercial purposes, expect to see brands team up with documentary makers to transform their storytelling potential.</strong></p>\r\n\r\n<p><strong><!-- /wp:paragraph --><!-- wp:paragraph {\"ampFitText\":true} --></strong></p>\r\n\r\n<p><strong>Filmmaking trends are increasingly leaning towards engaging concepts – just consider Bandersnatch, the fascinating new interactive film by Netflix, which allows viewers to choose between multiple endings. Increasingly, viewers want to feel a part of the action.</strong></p>\r\n\r\n<p><strong><!-- /wp:paragraph --><!-- wp:paragraph {\"ampFitText\":true} --></strong></p>\r\n\r\n<p><strong>As a result, many producers are looking into making more engaging and intimate video content, many going beyond the confines of professional film studios to do so. By working with a documentary maker rather than scripted advertising, its possible to get to the true heart of the matter – and to make the content you actually want to watch.</strong></p>\r\n\r\n<h2><strong><!-- wp:paragraph {\"dropCap\":true,\"ampFitText\":true} -->3. <strong>The future of filmmaking goes virtual</strong></strong></h2>\r\n\r\n<p><strong>Virtual reality (VR) is still very much an emerging filmmaking trend, but in 2019 it is expected to grow exponentially. According to Statista, the global economic impact of virtual and augmented reality is predicted to reach <a href=\"https://www.statista.com/statistics/615968/global-virtual-and-augmented-reality-economic-impact/\">$29.5 billion by 2020</a>.</strong></p>\r\n\r\n<p><strong><!-- /wp:paragraph --><!-- wp:paragraph {\"ampFitText\":true} --></strong></p>\r\n\r\n<p><strong>Projected within the safe confines of a headset, these virtual environments offer limitless potential, and practically any industry can create content to connect with consumers. The technology can entertain, instruct and educate audiences in a whole new way.</strong></p>\r\n\r\n<p><strong><!-- /wp:paragraph --><!-- wp:paragraph {\"ampFitText\":true} --></strong></p>\r\n\r\n<p><strong>British reputed film maker BAFTA-winning Martin Percy isn’t shy about using new kit, and has been especially proficient with VR filming, as seen in his campaigns which range in subject from safaris to fire safety. Thanks to the latest production technologies, Martin is able to make the imaginary a reality, all within a safe environment.</strong></p>\r\n\r\n<p><strong><!-- /wp:paragraph --><!-- wp:quote {\"ampFitText\":true} --></strong></p>\r\n\r\n<blockquote>\r\n<p><strong><em>“With VR, we’re not trying to make a film which people are watching on a VR headset</em>,” he explains.<em> “We’re trying to give people a sense that they are, in some magical way, actually present in some fascinating or exciting location.\"</em></strong></p>\r\n</blockquote>\r\n\r\n<p><strong><!-- /wp:quote --><!-- wp:quote {\"ampFitText\":true} --></strong></p>\r\n\r\n<blockquote>\r\n<p><strong>This VR 360 virtual reality concept serves to safely immerse viewers in an otherwise life-threatening situation using visual and auditory cues, and to promote the security of ADT safety products.</strong></p>\r\n</blockquote>\r\n\r\n<p><strong><!-- /wp:quote --><!-- wp:paragraph {\"textColor\":\"primary\"} --></strong></p>\r\n\r\n<p><strong>Adapted from \"The Gate Films\"</strong></p>\r\n\r\n<p><strong><!-- /wp:paragraph --></strong></p>\r\n\r\n<p><strong><!-- /wp:paragraph --></strong></p>\r\n\r\n<p><strong><!-- /wp:paragraph --></strong></p>\r\n', '2020-07-30 19:38:43', 'Sadavi Munasinghe', 'THE-FUTURE-OF-FILM-T'),
(9, 4, 1, 'Machine learning in Finance: Why, What & How ?', 'Computer Science , Technology , Finance , Economy', '<p><!-- wp:image {\"id\":241,\"width\":729,\"height\":409,\"sizeSlug\":\"large\"} --></p>\r\n\r\n<p><img alt=\"\" src=\"https://panduinspirehome.files.wordpress.com/2019/08/machine1.jpg?w=1024\" style=\"height:409px; width:729px\" /></p>\r\n\r\n<p>Future Of The Financial Sector</p>\r\n\r\n<p><!-- /wp:image --><!-- wp:paragraph {\"dropCap\":true,\"fontSize\":\"small\"} --></p>\r\n\r\n<p>Unlike so many hyped technologies and overrated buzzwords, machine learning is not going away &mdash; probably ever. The ability of computer programs to learn on their own and improve over time creates new opportunities for industries across the board.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --></p>\r\n\r\n<h3>Applications for Machine Learning in Finance</h3>\r\n\r\n<p><!-- /wp:heading --><!-- wp:list {\"ordered\":true} --></p>\r\n\r\n<ol>\r\n	<li>Fraud prevention</li>\r\n	<li>Risk management</li>\r\n	<li>Investment predictions</li>\r\n	<li>Customer service</li>\r\n</ol>\r\n\r\n<p><!-- /wp:list --><!-- wp:heading --></p>\r\n\r\n<h2>1. Fraud Prevention</h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:heading {\"level\":3} --></p>\r\n\r\n<h3>Machine Learning Fraud Detection Software</h3>\r\n\r\n<p><!-- /wp:heading --><!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaId\":243,\"mediaType\":\"image\",\"mediaWidth\":49,\"verticalAlignment\":\"center\",\"imageFill\":false,\"focalPoint\":{\"x\":0.720999755859375,\"y\":0.7982142993382045},\"className\":\"alignfull\",\"style\":{\"color\":{\"background\":\"#17233b\"}}} --></p>\r\n\r\n<p><img alt=\"\" src=\"https://panduinspirehome.files.wordpress.com/2019/08/fraud.jpg?w=300\" /></p>\r\n\r\n<p><!-- wp:paragraph {\"dropCap\":true,\"fontSize\":\"small\"} --></p>\r\n\r\n<p>To win the war against financial fraud, financial companies must abandon outdated approaches. Identifying and preventing fraudulent transactions requires sophisticated solutions that can analyze high-volume data. Machine learning offers such a solution. By spotting patterns and using predictive analytics, machine learning algorithms can block fraudulent transactions with a degree of accuracy not even possible with stand-alone AI.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- /wp:media-text --></p>\r\n\r\n<p><!-- wp:heading --></p>\r\n\r\n<h2>2. Risk Management</h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:media-text {\"align\":\"full\",\"mediaId\":246,\"mediaType\":\"image\",\"mediaWidth\":51,\"className\":\"alignfull\",\"style\":{\"color\":{\"background\":\"#2b0742\"}}} --></p>\r\n\r\n<p><img alt=\"\" src=\"https://panduinspirehome.files.wordpress.com/2019/08/risk-management.jpg?w=1024\" /></p>\r\n\r\n<p><!-- wp:paragraph {\"dropCap\":true,\"fontSize\":\"small\"} --></p>\r\n\r\n<p>Traditional software applications predict creditworthiness based on static information from loan applications and financial reports. Machine learning technology&nbsp;can go further&nbsp;and also identify current market trends and even relevant news items that can affect a client&rsquo;s ability to pay.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph {\"fontSize\":\"small\"} --></p>\r\n\r\n<p>Of course, risk management also extends to preventing financial crime and financial crisis prediction.&nbsp;</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- /wp:media-text --><!-- wp:heading --></p>\r\n\r\n<h2>3. Investment Predictions</h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:paragraph {\"dropCap\":true,\"fontSize\":\"small\"} --></p>\r\n\r\n<p>In recent years, hedge funds have increasingly moved away from traditional analysis methods. Instead, they have adopted machine learning algorithms for&nbsp;<a href=\"https://www.jpmorgan.com/global/cib/research/investment-decisions-using-machine-learning-ai\" target=\"_blank\">predicting fund trends</a>.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --></p>\r\n\r\n<h3>Machine Learning Gives Advanced Market Insights</h3>\r\n\r\n<p><!-- /wp:heading --><!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaId\":249,\"mediaType\":\"image\",\"verticalAlignment\":\"center\",\"className\":\"alignfull\",\"style\":{\"color\":{\"background\":\"#15181e\"}}} --></p>\r\n\r\n<p><img alt=\"\" src=\"https://panduinspirehome.files.wordpress.com/2019/08/invsetment.jpeg?w=1024\" /></p>\r\n\r\n<p><!-- wp:paragraph {\"dropCap\":true,\"fontSize\":\"small\"} --></p>\r\n\r\n<p>Using machine learning, fund managers can identify market changes earlier than is possible with traditional investment models.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph {\"fontSize\":\"small\"} --></p>\r\n\r\n<p>The potential of machine learning technology to disrupt the investment banking industry is being taken seriously by major institutions. <em><strong>JPMorgan, Bank of America, and Morgan Stanley </strong></em>are developing automated investment advisors, powered by machine learning technology. Wise fintech companies will likewise follow suit.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- /wp:media-text --><!-- wp:heading --></p>\r\n\r\n<h2>4. Customer Service</h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:paragraph {\"dropCap\":true,\"fontSize\":\"small\"} --></p>\r\n\r\n<p>Poor customer service remains one of the chief complaints among financial consumers. Whether they are speaking with a human, or using a virtual assistant, customers want accurate information and fast solutions to their problems.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --></p>\r\n\r\n<h3>Machine Learning Improves Chatbot Customer Experience</h3>\r\n\r\n<p><!-- /wp:heading --><!-- wp:media-text {\"align\":\"full\",\"mediaId\":251,\"mediaType\":\"image\",\"mediaWidth\":51,\"verticalAlignment\":\"center\",\"className\":\"alignfull\",\"backgroundColor\":\"light-gray\"} --></p>\r\n\r\n<p><img alt=\"Show The Importance of Customer Satisfaction\" src=\"https://panduinspirehome.files.wordpress.com/2019/08/customer.jpg?w=724\" /></p>\r\n\r\n<p><!-- wp:paragraph {\"dropCap\":true,\"fontSize\":\"small\"} --></p>\r\n\r\n<p>Although AI chatbots have been around for awhile, customers don&rsquo;t seem impressed. For many, they just don&rsquo;t seem to understand the problem.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph {\"fontSize\":\"small\"} --></p>\r\n\r\n<p>Machine learning puts a&nbsp;new spin&nbsp;on virtual assistants by enabling them to learn, rather than simply following a prescribed set of instructions.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph {\"fontSize\":\"small\"} --></p>\r\n\r\n<p>ML-based chatbots adapts their approach based on the behavior of each customer. The result is a chatbot that acts and feels more human for an improved customer experience.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- /wp:media-text --><!-- wp:paragraph {\"fontSize\":\"small\"} --></p>\r\n\r\n<p>Also there are more advantages and opportunities created in Finance field using AI . Machine learning doing a massive role in order to improve the stereotype strategies that have been using. Keep in mind that world is changing.</p>\r\n\r\n<p><!-- /wp:paragraph --></p>\r\n', '2020-08-01 19:25:59', 'Pandula Pallewatta', 'Machine-learning-in-'),
(10, 5, 2, 'Chandrayaan-2 Captures First Image Of Moon Showing Mare Oriental Basin, Apollo Craters', 'Astronomy , Physics , Planet Observation , Aero-Dynamics', '<p><!-- wp:image {\"id\":173,\"sizeSlug\":\"large\"} --></p>\r\n\r\n<p><img alt=\"\" src=\"https://panduinspirehome.files.wordpress.com/2019/08/chandrayaan_2-e1566575403336.jpg?w=1024\" /></p>\r\n\r\n<p><em>Image Taken From The Chandrayaan</em></p>\r\n\r\n<p><!-- /wp:image --><!-- wp:paragraph {\"dropCap\":true,\"fontSize\":\"small\"} --></p>\r\n\r\n<p>Chandrayaan-2 has captured the first image of the Moon, two days after entering the lunar orbit. The picture was taken by Vikram, the spacecraft&#39;s lander and shows the Mare Orientale basin and Apollo craters. The image was taken at a height of about 2, 650 km from the lunar surface on August 21.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph {\"fontSize\":\"small\"} --></p>\r\n\r\n<p>&quot;Take a look at the first Moon image captured by #Chandrayaan2 #VikramLander taken at a height of about 2650 km from Lunar surface on August 21, 2019. Mare Orientale basin and Apollo craters are identified in the picture,&quot; the Indian Space Research Organisation (ISRO) tweeted on Thursday.</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph {\"fontSize\":\"small\"} --></p>\r\n\r\n<p>ISRO chief K Sivan on Tuesday announced Chandrayaan-2&#39;s successful completion of lunar orbit insertion while stating that the mission would carry out a soft landing on the Moon on September 7.</p>\r\n\r\n<p><!-- /wp:paragraph --></p>\r\n', '2020-08-01 19:30:40', 'Veenath Sandeepa', 'Chandrayaan-2-Captur'),
(11, 1, 1, 'Latin American Music Awards : Ozuna Scores Leading 9 Nominations', 'Latin Music , Grammy Awards , Pop Music , Celebrities', '<p><!-- wp:paragraph {\"dropCap\":true,\"fontSize\":\"small\"} --></p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:paragraph {\"align\":\"left\"} --></p>\r\n\r\n<p><strong>See the full list of nominees below:</strong></p>\r\n\r\n<p><!-- /wp:paragraph --><!-- wp:heading --></p>\r\n\r\n<h2>Artist of the Year</h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaId\":265,\"mediaType\":\"image\",\"mediaWidth\":70,\"imageFill\":false} --></p>\r\n\r\n<p><img alt=\"\" src=\"https://panduinspirehome.files.wordpress.com/2019/09/maxresdefault-1-e1567930629992.jpg?w=1024\" /></p>\r\n\r\n<p><!-- wp:list --></p>\r\n\r\n<ul>\r\n	<li>Ozuna</li>\r\n	<li>Bad Bunny</li>\r\n	<li>Maluma</li>\r\n	<li>Romeo Santos</li>\r\n	<li>J Balvin</li>\r\n	<li>Banda Sinaloense MS de Sergio Lizárraga</li>\r\n	<li>Christian Nodal</li>\r\n	<li>Anuel AA</li>\r\n	<li>Daddy Yankee</li>\r\n	<li>Karol G</li>\r\n</ul>\r\n\r\n<p>Ozuna leads the Latin American Music Award nominations for the second year, with nine nominations. Telemundo announced the 2019 nominations on Wednesday morning (Sept. 4) and for the first time ever shared the announcement in a joint live stream with Billboard.</p>\r\n\r\n<p><!--{C}%3C!%2D%2D%20%2Fwp%3Aparagraph%20%2D%2D%3E--><!--{C}%3C!%2D%2D%20wp%3Aparagraph%20%7B%22fontSize%22%3A%22small%22%7D%20%2D%2D%3E--></p>\r\n\r\n<p>The Latin AMAs pay tribute to today&#39;s top Latin artists and lets fans vote for the final winners. The fifth annual Latin AMAs is set to air live on Thursday, Oct. 17 (8 p.m. ET) from the Dolby Theatre in Hollywood.</p>\r\n\r\n<p><!-- /wp:list --><!-- /wp:media-text --><!-- wp:heading --></p>\r\n\r\n<h2>New Artist of the Year</h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:media-text {\"align\":\"full\",\"mediaId\":268,\"mediaType\":\"image\",\"mediaWidth\":62} --></p>\r\n\r\n<p><img alt=\"\" src=\"https://panduinspirehome.files.wordpress.com/2019/09/music2.jpg?w=1024\" /></p>\r\n\r\n<p><!-- wp:list --></p>\r\n\r\n<ul>\r\n	<li>Sech</li>\r\n	<li>Rosalía</li>\r\n	<li>Darell</li>\r\n	<li>Paulo Londra</li>\r\n	<li>Lunay</li>\r\n	<li>Jhay Cortez</li>\r\n</ul>\r\n\r\n<p><!-- /wp:list --><!-- wp:paragraph --></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><!-- /wp:paragraph --><!-- /wp:media-text --><!-- wp:heading --></p>\r\n\r\n<h2>Song of the Year</h2>\r\n\r\n<p><!-- /wp:heading --></p>\r\n\r\n<ul>\r\n	<li>&quot;MIA,&quot; Bad Bunny &amp; Drake</li>\r\n	<li>&quot;Taki Taki,&quot; DJ Snake Featuring Selena Gomez, Ozuna &amp; Cardi B</li>\r\n	<li>&quot;Con Calma,&quot; Daddy Yankee Featuring Snow</li>\r\n	<li>&quot;Calma,&quot; Pedro Capó &amp; Farruko</li>\r\n	<li>&quot;Ella Quiere Beber,&quot; Anuel AA &amp; Romeo Santos</li>\r\n</ul>\r\n\r\n<h2>Favourite Artist - Female</h2>\r\n\r\n<p><!-- wp:coblocks/gallery-masonry {\"align\":\"full\",\"radius\":16,\"captions\":true,\"gridSize\":\"lrg\",\"className\":\"alignfull\"} --></p>\r\n\r\n<ul>\r\n	<li><img src=\"https://panduinspirehome.files.wordpress.com/2019/09/natti.jpg?w=1024\" />\r\n	<p><a href=\"https://youtu.be/7khUHbQFK9I?t=1\" target=\"_blank\">Natti Natasha</a></p>\r\n	</li>\r\n	<li><img src=\"https://panduinspirehome.files.wordpress.com/2019/09/beckyg.jpg?w=1024\" />\r\n	<p><a href=\"https://youtu.be/ngJwy17OiAM?t=1\" target=\"_blank\">Becky&nbsp;</a>G</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><!-- /wp:coblocks/gallery-masonry --><!-- wp:list --></p>\r\n\r\n<ul>\r\n	<li>Natti Natasha</li>\r\n	<li>Karol G</li>\r\n	<li>Becky G</li>\r\n	<li>Rosalía</li>\r\n	<li>Natalia Lafourcade</li>\r\n</ul>\r\n\r\n<p><!-- wp:heading --></p>\r\n\r\n<h2>Favorite Duo or Group</h2>\r\n\r\n<p><!-- /wp:heading --><!-- wp:group {\"align\":\"full\"} --><!-- wp:media-text {\"align\":\"full\",\"mediaId\":282,\"mediaType\":\"image\",\"mediaWidth\":44,\"imageFill\":false,\"focalPoint\":{\"x\":0.4879998779296875,\"y\":0.013636271158854166},\"className\":\"alignfull\",\"backgroundColor\":\"dark-gray\"} --></p>\r\n\r\n<p><img alt=\"\" src=\"https://panduinspirehome.files.wordpress.com/2019/09/cnco.jpg?w=1024\" /></p>\r\n\r\n<p><!-- wp:list --></p>\r\n\r\n<ul>\r\n	<li>Banda Sinaloense MS de Sergio Lizárraga</li>\r\n	<li>T3r Elemento</li>\r\n	<li>Los Ángeles Azules</li>\r\n	<li>CNCO</li>\r\n	<li>Wisin &amp; Yandel<br />\r\n	<!-- /wp:heading --></li>\r\n</ul>\r\n\r\n<p><!-- /wp:list --><!-- /wp:media-text --><!-- wp:paragraph {\"fontSize\":\"small\"} --></p>\r\n\r\n<p><!-- /wp:paragraph --><!-- /wp:group --><!-- wp:heading --></p>\r\n\r\n<p><!-- /wp:list --></p>\r\n', '2020-08-01 19:37:04', 'Pandula Pallewatta', 'Latin-American-Music');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Zipcode` varchar(100) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Register_Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Name`, `Zipcode`, `Email`, `Username`, `Password`, `Register_Date`) VALUES
(1, 'PanduDcau', '2345w', 'wpandulp@gmail.com', 'PanduRocks', '94f4b082f55cfef5a1377f8d181e9de3', '2020-07-29 19:48:14'),
(2, 'Jay Sean', '23454', 'jay@gmail.com', 'JayB', '3c9e1e642b2b8b83b844d00e02512542', '2020-07-30 13:17:12'),
(3, 'Sean Paul', '23345', 'sean@gmail.com', 'SeanPaul', '70f4b59fc88ae8a463fad076bc6de9bd', '2020-08-02 18:05:51'),
(4, 'Jayz', '4536', 'jayz@gmail.com', 'Jayzxcv', '089e637986d7e13135aa2812a4367c18', '2020-09-30 07:01:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `user_id` (`User_Id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `poster_id` (`Post_Id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `user_comm` (`User_Id`),
  ADD KEY `category_id` (`Category_Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`User_Id`) REFERENCES `users` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `poster_id` FOREIGN KEY (`Post_Id`) REFERENCES `posts` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `category_id` FOREIGN KEY (`Category_Id`) REFERENCES `categories` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_comm` FOREIGN KEY (`User_Id`) REFERENCES `users` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
