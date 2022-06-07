-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2022 at 01:11 PM
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
-- Database: `onlinelibraryportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BookID` int(10) NOT NULL,
  `Title` varchar(300) DEFAULT NULL,
  `PubDate` year(4) DEFAULT NULL,
  `Publisher` varchar(100) DEFAULT NULL,
  `Language` varchar(5) DEFAULT NULL,
  `PageCount` int(10) DEFAULT NULL,
  `ISBN` varchar(15) DEFAULT NULL,
  `Overview` text DEFAULT NULL,
  `Rating` float DEFAULT NULL,
  `DateAdded` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BookID`, `Title`, `PubDate`, `Publisher`, `Language`, `PageCount`, `ISBN`, `Overview`, `Rating`, `DateAdded`) VALUES
(1, 'My Beloved World', 2013, 'Alfred A. Knopf', 'eng', 432, '9781080286058', 'Born in 1954, Sotomayor grew up in an impoverished, close-knit Puerto Rican community in the South Bronx. Her mother was often absent, working long hours as a nurse; her father was an alcoholic. When she was diagnosed with diabetes at the age of seven, Sotomayor learned to give herself daily insulin shots, taking on the responsibility that both her parents found difficult.  Sotomayor escaped the tensions at home at her grandmother’s among a loving extended family and discovered the pleasures and rewards of education at the strict Catholic schools she attended.  A top-notch student, she went to Princeton, and on to Yale Law School.  As a young lawyer, she worked at the New York City District Attorney’s office and moved on to private practice at a prestigious law firm; at the age of 38, she was appointed to the Federal District Court. \r\n\r\nFrom intimate snapshots of her childhood to nuanced reflections on affirmative action, the legal profession, and the strengths and shortcomings of American society today, My Beloved World shines with the intelligence, enthusiasm, good humor, and compassion Sotomayor has brought to every step of her extraordinary journey.', 4.03, '2022-04-01 21:55:02'),
(2, 'Straight Man', 1997, 'Knopf Doubleday Publishing Group', 'eng', 416, '9780375701900', 'William Henry Devereaux, Jr., known to his friends as Hank, is a fast-talking, self-deprecating man, the classic wise guy.  Now approaching fifty, Hank finds himself heading full-speed into a midlife crisis: he despises his job as English professor at an undistinguished middle-American university, and his status as a \"novelist\" who has not written any fiction for twenty years.  He fears he may have prostate cancer, he suspects his wife of having an affair, and he avoids even thinking about the fact that his father, the elder statesman of American literary criticism with whom he has much unresolved business, will soon be reentering his orbit.  Over the course of a single convoluted week, the hapless Hank goes through a painful series of adventures, some hilarious and some harrowing, which eventually take him to the brink of sanity.  As he did in Nobody’s Fool, Russo proves himself a master of depicting the fraught, unvoiced currents that run between parents and children, husbands and wives.  In his intelligence, humor, and ability to merge sorrow and farce into a seamless fabric, Richard Russo stands out as a writer of surpassing insight and humanity.', 4.02, '2022-04-02 21:55:02'),
(3, 'Christine', 1983, 'Gallery Books ', 'fre', 656, '9781501144189', 'Christine is a horror novel by American writer Stephen King, published in 1983. It tells the story of a car (a 1958 Plymouth Fury) apparently possessed by malevolent supernatural forces.', 3.72, '2022-04-03 21:55:02'),
(4, 'Innocent Traitor', 2006, 'Penguin Random House', 'eng', 320, '9780091796679', 'A fiction about a woman of Tudor England, Lady Jane Grey, a girl of royal blood who was used by greedy and unscrupulous men to satisfy their own ambitions. Having been the victim of abuse in childhood, she was sold into an unhappy marriage and forced to accept a crown she did not want, then tragically paid the price of her so-called treason.', 3.94, '2022-05-30 15:57:46'),
(5, 'The Marvels', 2015, 'Scholastic Press', 'eng', 672, '9780545448680', 'A breathtaking new voyage from Caldecott Medalist Brian Selznick.Two stand-alone stories--the first in nearly 400 pages of continuous pictures, the second in prose--create a beguiling narrative puzzle.The journey begins at sea in 1766, with a boy named Billy Marvel. After surviving a shipwreck, he finds work in a London theatre. There, his family flourishes for generations as brilliant actors until 1900, when young Leontes Marvel is banished from the stage.Nearly a century later, runaway Joseph Jervis seeks refuge with an uncle in London. Albert Nightingale\'s strange, beautiful house, with its mysterious portraits and ghostly presences, captivates Joseph and leads him on a search for clues about the house, his family, and the past.A gripping adventure and an intriguing invitation to decipher how the two stories connect, The Marvels is a loving tribute to the power of story from an artist at the vanguard of creative innovation.', 3.93, '2022-05-30 16:20:19'),
(6, 'The Lost Years of Merlin', 1996, 'Philomel', 'eng', 326, '9780399230189', 'When Merlin, suffering from a case of severe amnesia, discovers his strange powers, he becomes determined to discover his identity and flees to Fincayra where he fulfills his destiny, saving Fincayra from certain destruction and claiming his birthright and true name.', 3.97, '2022-05-30 16:25:32'),
(7, 'Black Swan Green', 2006, 'Random House', 'eng', 294, '9780340822791', 'Black Swan Green tracks a single year in what is, for thirteen-year-old Jason Taylor, the sleepiest village in muddiest Worcestershire in a dying Cold War England, 1982. But the thirteen chapters, each a short story in its own right, create an exquisitely observed world that is anything but sleepy. A world of Kissingeresque realpolitik enacted in boys’ games on a frozen lake; of “nightcreeping” through the summer backyards of strangers; of the tabloid-fueled thrills of the Falklands War and its human toll; of the cruel, luscious Dawn Madden and her power-hungry boyfriend, Ross Wilcox; of a certain Madame Eva van Outryve de Crommelynck, an elderly bohemian emigré who is both more and less than she appears; of Jason’s search to replace his dead grandfather’s irreplaceable smashed watch before the crime is discovered; of first cigarettes, first kisses, first Duran Duran LPs, and first deaths; of Margaret Thatcher’s recession; of Gypsies camping in the woods and the hysteria they inspire; and, even closer to home, of a slow-motion divorce in four seasons.', 3.97, '2022-05-30 16:30:45'),
(8, 'The Thief Lord', 2000, 'Scholastic', 'eng', 345, '9780439404372', 'An exciting, magical adventure set among the crumbling canals and ancient ruins of Venice, Italy.\r\n\r\nProsper and Bo are orphans on the run from their cruel aunt and uncle. The brothers decide to hide out in Venice, where they meet a mysterious character who calls himself the \"Thief Lord.\" Brilliant and charismatic, the Thief Lord leads a ring of street children who dabble in petty crimes. Prosper and Bo relish being part of this colorful new family. But the Thief Lord has secrets of his own. And soon the boys are thrust into circumstances that will lead them, and readers, to a fantastic, spellbinding conclusion.', 3.95, '2022-05-30 16:36:09'),
(9, 'Without Fail', 2013, 'Berkley', 'eng', 416, '9780425264423', 'Skilled, cautious, and anonymous, Jack Reacher is perfect for the job: to assassinate the vice president of the United States. Theoretically, of course. A female Secret Service agent wants Reacher to find the holes in her system, and fast—because a covert group already has the vice president in their sights. They’ve planned well. There’s just one thing they didn’t plan on: Reacher.', 4.16, '2022-05-30 16:41:35'),
(10, 'He\'s Just Not That Into You: The No-Excuses Truth to Understanding Guys', 2006, 'Gallery Books', 'eng', 304, '9781416947400', 'He\'s Just Not That Into You based on a popular episode of Sex and the City educates otherwise smart women on how to tell when a guy just doesn\'t like them enough, so they can stop wasting time making excuses for a dead-end relationship. This book knows you\'re a beautiful, smart, funny woman who deserves better.', 3.65, '2022-05-30 16:54:49'),
(11, '1984', 1961, 'Signet Classic', 'eng', 328, '9780451524935', '“The Party told you to reject the evidence of your eyes and ears. It was their final, most essential command.”\r\n\r\nWinston Smith toes the Party line, rewriting history to satisfy the demands of the Ministry of Truth. With each lie he writes, Winston grows to hate the Party that seeks power for its own sake and persecutes those who dare to commit thoughtcrimes. But as he starts to think for himself, Winston can’t escape the fact that Big Brother is always watching...\r\n\r\nA startling and haunting novel, 1984 creates an imaginary world that is completely convincing from start to finish. No one can deny the novel’s hold on the imaginations of whole generations, or the power of its admonitions—a power that seems to grow, not lessen, with the passage of time.', 4.7, '2022-06-07 11:18:58'),
(12, 'And Then There Were None', 2011, 'William Morrow', 'eng', 300, '9780062073488', 'Ten people, each with something to hide and something to fear, are invited to an isolated mansion on Indian Island by a host who, surprisingly, fails to appear. On the island they are cut off from everything but each other and the inescapable shadows of their own past lives. One by one, the guests share the darkest secrets of their wicked pasts. And one by one, they die…\r\n\r\nWhich among them is the killer and will any of them survive?', 4.5, '2022-06-07 11:38:08'),
(13, 'The A. B. C. Murders: A Hercule Poirot Mystery', 2011, 'William Morrow Paperbacks', 'eng', 272, '9780062073587', 'There’s a serial killer on the loose, working his way through the alphabet and the whole country is in a state of panic.\r\n\r\nA is for Mrs. Ascher in Andover, B is for Betty Barnard in Bexhill, C is for Sir Carmichael Clarke in Churston. With each murder, the killer is getting more confident—but leaving a trail of deliberate clues to taunt the proud Hercule Poirot might just prove to be the first, and fatal, mistake.', 4.6, '2022-06-07 11:47:29'),
(14, 'Amelia Bedelia', 2013, 'Greenwillow Books', 'eng', 40, '9780062209696', 'When Mrs. Rogers leaves Amelia Bedelia alone in the house on her first day of work, anything can happen. And it does!\r\n\r\nWith a list of what is to be done before her, Amelia Bedelia sets about her duties. And no one could possibly accuse her of not following directions—for that is precisely what she does. But when Amelia Bedelia draws the drapes or dresses a chicken, the results are hilariously different than might be expected!\r\n\r\nPeggy Parish knows what strikes children as side-splittingly funny and Fritz Siebel has drawn Amelia Bedelia and her literal-minded actions to perfection. A hearty welcome to Amelia Bedelia—and long may she reign!\r\n\r\nThis commemorative fiftieth anniversary edition features the jacket, artwork, and story from the original 1963 edition of Amelia Bedelia. Also included are seven additional pages of archival photographs, sketches, and anecdotes and recollections about the inception and creation of America\'s beloved literal-minded housekeeper, Amelia Bedelia!', 4.2, '2022-06-07 11:51:40'),
(15, 'The Complete Adventures of Curious George: 70th Anniversary Edition', 2010, 'HMH Books for Young Readers', 'eng', 432, '9780547391007', '\"This is George. He lived in Africa. he was a good little monkey, and always very curious.\" With these words, H.A. and Margret Rey introduced the world to Curious George, and the world has loved him ever since. The tales of this cheerful and resilent little heror have kept generations of readers enthralled and entertained. This lavish edition includes an introduction by Leonard S. Marcus, Publisher\'s Perspective by Anita Silvey, retrospective essay by Dee Jones with photographic album of Margaret and H. A. Rey, and the seven original tales of Curious George: Curious George, Curious George Gets a Medal, Curious George Flies a Kite, Curious George Rides a Bike, Curious George Goes to the Hospital, Curious George Takes a Job, and Curious George Learns the Alphabet.', 4.2, '2022-06-07 11:56:15'),
(16, 'Alice\'s Adventures in Wonderland & Through the Looking-Glass (Bantam Classics)', 1984, 'Bantam Classics', 'eng', 272, '9780553213454', 'In 1862 Charles Lutwidge Dodgson, a shy Oxford mathematician with a stammer, created a story about a little girl tumbling down a rabbit hole. Thus began the immortal adventures of Alice, perhaps the most popular heroine in English literature. Countless scholars have tried to define the charm of the \"Alice books--with those wonderfully eccentric characters the Queen of Hearts, Tweedledum and Tweedledee, the Cheshire Cat, Mock Turtle, the Mad Hatter et al.--by proclaiming that they really comprise a satire on language, a political allegory, a parody of Victorian children\'s literature, even a reflection of contemporary ecclesiastical history. Perhaps, as Dodgson might have said, \"Alice is no more than a dream, a fairy tale about a trials and tribulations of growing up--or down, or all tumed round--as seen through the expert eyes of a child.', 4.1, '2022-06-07 12:30:45'),
(17, 'Adventures of Huckleberry Finn (Dover Thrift Editions: Classic Novels)', 1994, 'Dover Publications', 'eng', 224, '9780486280615', 'Referring to Adventures of Huckleberry Finn, H. L. Mencken noted that his discovery of this classic American novel was \"the most stupendous event of my whole life\"; Ernest Hemingway declared that \"all modern American literature stems from this one book,\" while T. S. Eliot called Huck \"one of the permanent symbolic figures of fiction, not unworthy to take a place with Ulysses, Faust, Don Quixote, Don Juan, Hamlet.\"\r\nThe novel\'s preeminence derives from its wonderfully imaginative re-creation of boyhood adventures along the mighty Mississippi River, its inspired characterization, the author\'s remarkable ear for dialogue, and the book\'s understated development of serious underlying themes: \"natural\" man versus \"civilized\" society, the evils of slavery, the innate value and dignity of human beings, the stultifying effects of convention, and other topics. But most of all,Adventures of Huckleberry Finn is a wonderful story?filled with high adventure and unforgettable characters (including the great river itself)?that no one who has read it will ever forget.\r\nUnabridged Dover (1994) republication of the text of the first American edition, published by Charles L. Webster and Company, New York, 1885. New introductory Note.', 3.8, '2022-06-07 12:36:44'),
(18, 'Fahrenheit 451', 2012, 'Simon & Schuster', 'eng', 249, '9781451673319', 'Guy Montag is a fireman. His job is to destroy the most illegal of commodities, the printed book, along with the houses in which they are hidden. Montag never questions the destruction and ruin his actions produce, returning each day to his bland life and wife, Mildred, who spends all day with her television “family.” But when he meets an eccentric young neighbor, Clarisse, who introduces him to a past where people didn’t live in fear and to a present where one sees the world through the ideas in books instead of the mindless chatter of television, Montag begins to question everything he has ever known.', 4, '2022-06-07 12:40:38'),
(19, 'Animal Farm: 75th Anniversary Edition', 2004, 'Signet', 'eng', 140, '9780451526342', '“All animals are equal, but some animals are more equal than others.”\r\n\r\nA farm is taken over by its overworked, mistreated animals. With flaming idealism and stirring slogans, they set out to create a paradise of progress, justice, and equality. Thus the stage is set for one of the most telling satiric fables ever penned—a razor-edged fairy tale for grown-ups that records the evolution from revolution against tyranny to a totalitarianism just as terrible.\r\n \r\nWhen Animal Farm was first published, Stalinist Russia was seen as its target. Today it is devastatingly clear that wherever and whenever freedom is attacked, under whatever banner, the cutting clarity and savage comedy of George Orwell’s masterpiece have a meaning and message still ferociously fresh.', 4.3, '2022-06-07 12:44:27'),
(21, 'The Book Thief', 2007, 'Knopf Books for Young Readers', 'eng', 608, '9780375842207', 'It is 1939. Nazi Germany. The country is holding its breath. Death has never been busier, and will become busier still.\r\n\r\nLiesel Meminger is a foster girl living outside of Munich, who scratches out a meager existence for herself by stealing when she encounters something she can’t resist–books. With the help of her accordion-playing foster father, she learns to read and shares her stolen books with her neighbors during bombing raids as well as with the Jewish man hidden in her basement. \r\n\r\nIn superbly crafted writing that burns with intensity, award-winning author Markus Zusak, author of I Am the Messenger, has given us one of the most enduring stories of our time.', 4.4, '2022-06-07 12:49:52'),
(22, 'Lord of the Flies', 2003, 'Penguin Books', 'eng', 224, '9780399501487', 'At the dawn of the next world war, a plane crashes on an uncharted island, stranding a group of schoolboys. At first, with no adult supervision, their freedom is something to celebrate. This far from civilization they can do anything they want. Anything. But as order collapses, as strange howls echo in the night, as terror begins its reign, the hope of adventure seems as far removed from reality as the hope of being rescued.', 3.7, '2022-06-07 12:52:30'),
(23, 'Harry Potter and the Sorcerer\'s Stone', 1998, 'Scholastic', 'eng', 309, '9780439708180', 'Harry Potter has no idea how famous he is. That\'s because he\'s being raised by his miserable aunt and uncle who are terrified Harry will learn that he\'s really a wizard, just as his parents were. But everything changes when Harry is summoned to attend an infamous school for wizards, and he begins to discover some clues about his illustrious birthright. From the surprising way he is greeted by a lovable giant, to the unique curriculum and colorful faculty at his unusual school, Harry finds himself drawn deep inside a mystical world he never knew existed and closer to his own noble destiny.', 4.5, '2022-06-07 13:07:57');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `BorrowID` int(10) NOT NULL,
  `UserID` int(10) NOT NULL,
  `StaffID` int(10) NOT NULL,
  `BookID` int(10) NOT NULL,
  `DateOfBorrow` date DEFAULT NULL,
  `DateReturned` date DEFAULT NULL,
  `DueDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`BorrowID`, `UserID`, `StaffID`, `BookID`, `DateOfBorrow`, `DateReturned`, `DueDate`) VALUES
(1, 1, 1, 1, '2022-05-10', '2022-05-20', '2022-05-20'),
(2, 2, 2, 2, '2022-05-11', '2022-05-13', '2022-05-21'),
(3, 3, 3, 3, '2022-05-12', '2022-05-20', '2022-05-22'),
(4, 4, 1, 3, '2022-05-13', '2022-06-07', '2022-05-23'),
(5, 5, 1, 1, '2022-05-23', NULL, '2022-06-02'),
(6, 6, 1, 4, '2022-06-07', NULL, '2022-06-17'),
(7, 1, 1, 15, '2022-06-07', NULL, '2022-06-17'),
(8, 2, 1, 5, '2022-06-07', NULL, '2022-06-17'),
(9, 8, 1, 3, '2022-06-07', '2022-06-07', '2022-06-17'),
(10, 8, 1, 6, '2022-06-07', NULL, '2022-06-17'),
(11, 3, 1, 9, '2022-06-07', '2022-06-07', '2022-06-17'),
(12, 7, 1, 14, '2022-06-07', '2022-06-07', '2022-06-17'),
(13, 7, 1, 2, '2022-06-07', NULL, '2022-06-17'),
(14, 7, 1, 7, '2022-06-07', NULL, '2022-06-17'),
(15, 5, 1, 3, '2022-06-07', '2022-06-07', '2022-06-17'),
(16, 6, 1, 11, '2022-06-07', '2022-06-07', '2022-06-17'),
(17, 1, 1, 12, '2022-06-07', '2022-06-07', '2022-06-17'),
(18, 2, 1, 13, '2022-06-07', NULL, '2022-06-17'),
(19, 5, 1, 14, '2022-06-07', NULL, '2022-06-17'),
(20, 1, 1, 10, '2022-06-07', NULL, '2022-06-17'),
(21, 2, 1, 17, '2022-06-07', NULL, '2022-06-17'),
(22, 3, 1, 19, '2022-06-07', NULL, '2022-06-17'),
(23, 3, 1, 22, '2022-06-07', NULL, '2022-06-17'),
(25, 4, 1, 3, '2022-06-07', '2022-06-07', '2022-06-17'),
(26, 4, 1, 18, '2022-06-07', NULL, '2022-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_db`
--

CREATE TABLE `feedback_db` (
  `feedback_ID` int(15) NOT NULL,
  `feedback_type` varchar(15) DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `firstname` varchar(15) DEFAULT NULL,
  `lastname` varchar(15) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `freq_ask_questions`
--

CREATE TABLE `freq_ask_questions` (
  `QuestionID` int(1) NOT NULL,
  `Question` text NOT NULL,
  `Answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `freq_ask_questions`
--

INSERT INTO `freq_ask_questions` (`QuestionID`, `Question`, `Answer`) VALUES
(1, 'What exactly can the librarian help me with?', 'Librarians will help you to find materials on our shelves. It also helps to find information online in the databases and can advise you about the relevance of the material that you may need from the library.\r\n\r\n'),
(2, 'How are the books organized in the library?', 'Books are organized by a number code of the book, which tells the location of the book on the shelf. The book is arranged alphabetically with corresponding subjects.\r\n\r\n'),
(3, 'Are all books available in electronic versions?', 'Not all books have a print copy of the purchase. Please see the librarian regarding the book information.'),
(4, 'What are the library hours?', 'The library was only open from 8:00 AM to 9:00 PM on weekdays while 10:00 PM to 5:00 during weekends '),
(5, 'Why I am getting no data regarding the user information?', 'The user that you want to look for was not registered in the library database. Please see the in-charge librarian for more detailed information.'),
(6, 'Where do I check books out?', 'Books may be checked out, however, not all books can be. Please see the in-charge librarian for more details even if the book was already checked out.'),
(7, 'How does the library notify me when I have an overdue book?', 'When an item is overdue, you will be notified with a paper notice in your email. Keep in mind that most items can be renewed. However,  all items often cannot be renewed and must be returned on time');

-- --------------------------------------------------------

--
-- Table structure for table `rl_book_author`
--

CREATE TABLE `rl_book_author` (
  `BookID` int(10) NOT NULL,
  `Author` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rl_book_author`
--

INSERT INTO `rl_book_author` (`BookID`, `Author`) VALUES
(1, 'Sonia Sotomayor'),
(2, 'Richard Russo'),
(3, 'Marie Milpois'),
(3, 'Stephen King'),
(4, 'Alison Weir'),
(5, 'Brian Selznick'),
(6, 'T.A. Barron'),
(7, 'David Mitchell'),
(8, 'Cornelia Funke'),
(9, 'Dick Hill'),
(9, 'Lee Child'),
(10, 'Greg Behrendt'),
(10, 'Liz Tuccillo'),
(11, 'George Orwell'),
(12, 'Agatha Christie'),
(13, 'Agatha Christie'),
(14, 'Fritz Siebel'),
(14, 'Peggy Parish'),
(15, 'Hans Augusto Rey'),
(16, 'Lewis Carroll'),
(17, 'Mark Twain'),
(18, 'Ray Bradbury'),
(19, 'George Orwell'),
(21, 'Markus Zusak'),
(22, 'William Golding'),
(23, 'J.K. Rowling');

-- --------------------------------------------------------

--
-- Table structure for table `rl_book_genre`
--

CREATE TABLE `rl_book_genre` (
  `BookID` int(10) NOT NULL,
  `Genre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rl_book_genre`
--

INSERT INTO `rl_book_genre` (`BookID`, `Genre`) VALUES
(1, 'Biography'),
(1, 'Memoir'),
(2, 'Fiction'),
(3, 'Fiction'),
(3, 'Horror'),
(4, 'Historical Novel'),
(5, 'Adventure Fiction'),
(5, 'Historical Fiction'),
(6, 'Fantasy'),
(7, 'Semi-autobiographical'),
(8, 'Children\'s Literature'),
(8, 'Fantasy'),
(8, 'Fiction'),
(8, 'Novel'),
(9, 'Detective'),
(9, 'Fiction'),
(9, 'Mystery'),
(9, 'Novel'),
(9, 'Suspense'),
(9, 'Thriller'),
(10, 'Self-improvement'),
(11, 'Dystopian Fiction'),
(11, 'Political Fiction'),
(11, 'Science Fiction'),
(12, 'Horror'),
(12, 'Crime'),
(12, 'Mystery'),
(12, 'Psychological Thriller'),
(13, 'Crime'),
(13, 'Mystery'),
(14, 'Children\'s Literature'),
(14, 'Humor'),
(15, 'Children\'s Literature'),
(15, 'Humor'),
(16, 'Children\'s Literature'),
(16, 'Fantasy'),
(17, 'Adventure Fiction'),
(17, 'Children\'s Literature'),
(17, 'Humor'),
(17, 'Satire'),
(18, 'Dystopian Fiction'),
(18, 'Political Fiction'),
(18, 'Science Fiction'),
(19, 'Dystopian Fiction'),
(19, 'Fable'),
(19, 'Novella'),
(19, 'Political Fiction'),
(19, 'Satire'),
(21, 'Historical Fiction'),
(21, 'Young Adult Fiction'),
(22, 'Psychological Fiction'),
(22, 'Young Adult Fiction'),
(23, 'Adventure Fiction'),
(23, 'Children\'s Literature'),
(23, 'Fantasy');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffID` int(10) NOT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `MiddleName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffID`, `FirstName`, `MiddleName`, `LastName`, `Password`) VALUES
(1, 'Anna', 'Familar', 'Campion', 'acampion'),
(2, 'Bianca', 'Guerra', 'Ledesma', '52390'),
(3, 'Chico', 'Hilario', 'Mackay', 'password123');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(10) NOT NULL,
  `FirstName` varchar(100) DEFAULT NULL,
  `MiddleName` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Address` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `FirstName`, `MiddleName`, `LastName`, `Address`) VALUES
(1, 'Japh', 'S.', 'Atimosa ', 'Obrero, Davao City'),
(2, 'Trishia ', 'S.', 'DelaCruz ', 'Panacan, Davao City'),
(3, 'Irene', 'P.', 'Gonzales ', 'Matina, Davao City '),
(4, 'Rod', 'N.', 'Dimagiba', 'San Pedro, Davao City '),
(5, 'Miguel', 'C.', 'Fuentes', 'Maa, Davao City '),
(6, 'Joyce', 'S.', 'Torres', 'Calinan, Davao City'),
(7, 'Marie', 'T.', 'Sebastian', 'Obrero, Davao City'),
(8, 'Mike', 'E.', 'Vargas', 'Fatima, Davao City');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BookID`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`BorrowID`),
  ADD KEY `fk_borrow_BookID` (`BookID`),
  ADD KEY `fk_borrow_StaffID` (`StaffID`),
  ADD KEY `fk_borrow_UserID` (`UserID`);

--
-- Indexes for table `feedback_db`
--
ALTER TABLE `feedback_db`
  ADD PRIMARY KEY (`feedback_ID`);

--
-- Indexes for table `freq_ask_questions`
--
ALTER TABLE `freq_ask_questions`
  ADD PRIMARY KEY (`QuestionID`);

--
-- Indexes for table `rl_book_author`
--
ALTER TABLE `rl_book_author`
  ADD PRIMARY KEY (`BookID`,`Author`);

--
-- Indexes for table `rl_book_genre`
--
ALTER TABLE `rl_book_genre`
  ADD PRIMARY KEY (`BookID`,`Genre`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `BookID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `BorrowID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `feedback_db`
--
ALTER TABLE `feedback_db`
  MODIFY `feedback_ID` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `freq_ask_questions`
--
ALTER TABLE `freq_ask_questions`
  MODIFY `QuestionID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `StaffID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrow`
--
ALTER TABLE `borrow`
  ADD CONSTRAINT `fk_borrow_BookID` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`),
  ADD CONSTRAINT `fk_borrow_StaffID` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`),
  ADD CONSTRAINT `fk_borrow_UserID` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Constraints for table `rl_book_author`
--
ALTER TABLE `rl_book_author`
  ADD CONSTRAINT `fk_rl_book_author_BookID` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`);

--
-- Constraints for table `rl_book_genre`
--
ALTER TABLE `rl_book_genre`
  ADD CONSTRAINT `fk_rl_book_genre_BookID` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
