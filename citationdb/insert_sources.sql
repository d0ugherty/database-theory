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

-- websites 
INSERT INTO sources (title, date_published) VALUES 
('Building the Gotthard Base Tunnel', '2017-11-02');
INSERT INTO websites (source_id, url, date_accessed) VALUES 
(LAST_INSERT_ID(), 'https://www.railinnovations.com', CURRENT_DATE());

INSERT INTO sources (title, date_published) VALUES 
('Railway Engineering Breakthroughs', '2023-04-22');
INSERT INTO websites (source_id, url, date_accessed) VALUES 
(LAST_INSERT_ID(), 'https://www.futuretrains.com', CURRENT_DATE());


