-- Script for inserting data into sources and child tables

SET SQL_SAFE_UPDATES = 0;

DELETE FROM journals;
DELETE FROM books;
DELETE FROM websites;
DELETE FROM sources;

ALTER TABLE sources AUTO_INCREMENT = 1;

SET SQL_SAFE_UPDATES = 1;

-- journals 
INSERT INTO sources (title, date_published) VALUES 
('The History of Rail Transport', '2023-01-15');
INSERT INTO journals (source_id, journal_title, volume, issue) VALUES 
(LAST_INSERT_ID(), 'Journal of Transport History', '32', '1');

INSERT INTO sources (title, date_published) values
('The Impact of Trains on Modern Society', '2023-02-20');
INSERT INTO journals (source_id, journal_title, volume, issue) VALUES 
(LAST_INSERT_ID(), 'Societal Change Review', '5', '3');

INSERT INTO sources (title, date_published) values
('Steam Locomotive Restoration', '2023-03-18');
INSERT INTO journals (source_id, journal_title, volume, issue) VALUES 
(LAST_INSERT_ID(), 'Steam Engines Quarterly', '27', '3');

INSERT INTO sources (title, date_published) values
('Performance of Hydrogen-Powered Freight Locomotives', '2023-03-01');
INSERT INTO journals (source_id, journal_title, volume, issue) VALUES 
(LAST_INSERT_ID(), 'International Journal of Railway Engineering', '22', '1');

INSERT INTO sources (title, date_published) values
('Performance of Hydrogen-Powered Freight Locomotives', '2023-03-01');
INSERT INTO journals (source_id, journal_title, volume, issue) VALUES 
(LAST_INSERT_ID(), 'Civil Engineering Review', '8', '3','2020-08-26');


-- boooks
INSERT INTO sources (title, date_published) VALUES 
('Railway Engineering Principles', '2023-10-22');
INSERT INTO books (source_id, isbn, publisher) VALUES 
(LAST_INSERT_ID(), '978-0-141-18423-6', 'Engineering Insights Ltd.');

INSERT INTO sources (title, date_published) VALUES 
('High Speed Rail Developments', '2023-01-17');
INSERT INTO books (source_id, isbn, publisher) VALUES 
(LAST_INSERT_ID(), '978-1-789-54321-0', 'FastTrack Press');

INSERT INTO sources (title, date_published) VALUES 
('The History of Railroads in Australia and New Zealand', '2023-02-20');
INSERT INTO books (source_id, isbn, publisher) VALUES 
(LAST_INSERT_ID(), '978-1-121-12217-1', 'Sydney Publishing House');

INSERT INTO sources (title, date_published) VALUES 
('The Age of Steam: A Railroad History', '2015-10-16');
INSERT INTO books (source_id, isbn, publisher) VALUES 
(LAST_INSERT_ID(), '978-0-12345-678-9', 'RailPress Publishing');

INSERT INTO sources (title, date_published) VALUES 
('Railway Architecture: Stations and Structures', '2020-03-03');
INSERT INTO books (source_id, isbn, publisher) VALUES 
(LAST_INSERT_ID(), '978-2-34567-890-1', 'Architectural Wonders Press');


INSERT INTO sources (title, date_published) VALUES 
('Tracks Across Continents: The Story of Rail Expansion', '2009-05-17');
INSERT INTO books (source_id, isbn, publisher) VALUES 
(LAST_INSERT_ID(), '978-1-23456-789-0', 'History Trains Publishing');


INSERT INTO sources (title, date_published) VALUES 
('Engineering the Rails: A Technical Guide', '2020-09-21');
INSERT INTO books (source_id, isbn, publisher) VALUES 
(LAST_INSERT_ID(), '978-3-45678-901-2', 'TechRail Publications');


-- websites 
INSERT INTO sources (title, date_published) VALUES 
('Building the Gotthard Base Tunnel', '2017-11-02');
INSERT INTO websites (source_id, url, date_accessed) VALUES 
(LAST_INSERT_ID(), 'https://www.railinnovations.com', '2023-08-05');

INSERT INTO sources (title, date_published) VALUES 
('Railway Engineering Breakthroughs', '2023-04-22');
INSERT INTO websites (source_id, url, date_accessed) VALUES 
(LAST_INSERT_ID(), 'www.futuretrains.net',  '2023-07-22');

INSERT INTO sources (title, date_published) VALUES 
('Emission Standards for Modern Locomotives: A Global Challenge', '2023-04-22');
INSERT INTO websites (source_id, url, date_accessed) VALUES 
(LAST_INSERT_ID(), 'www.ecorailways.co', '2023-09-14');

INSERT INTO sources (title, date_published) VALUES 
('The Impact of Railroads on 19th Century Warfare', '2023-04-22');
INSERT INTO websites (source_id, url, date_accessed) VALUES 
(LAST_INSERT_ID(), 'www.historictrains.org',  '2023-11-07');

INSERT INTO sources (title, date_published) VALUES 
('Navigating the Future: The Rise of Automated Train Control Systems', '2023-04-22');
INSERT INTO websites (source_id, url, date_accessed) VALUES 
(LAST_INSERT_ID(), 'www.railenthusiast.com', '2023-07-22');

INSERT INTO sources (title, date_published) VALUES 
('Railway Networks and Urban Development: A Symbiotic Relationship', '2023-04-22');
INSERT INTO websites (source_id, url, date_accessed) VALUES 
(LAST_INSERT_ID(), 'www.themodernrailway.net', '2023-07-22');



