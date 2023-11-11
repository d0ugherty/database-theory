USE doughe38;

SET SQL_SAFE_UPDATES = 0;
set foreign_key_checks = 0;
truncate table papers;
truncate table paper_sources;

set foreign_key_checks = 1;
SET SQL_SAFE_UPDATES = 1;

ALTER TABLE papers AUTO_INCREMENT =1;

INSERT INTO papers (title, full_name, date_written) VALUES
('Evaluating Ballast Performance for Enhanced Railroad Track Stability', 'RZA', '2023-11-01');

SELECT LAST_INSERT_ID();
INSERT INTO paper_sources (paper_id, source_id) VALUES
(LAST_INSERT_ID(), 6),
(LAST_INSERT_ID(), 12),
(LAST_INSERT_ID(), 14);

INSERT INTO papers(title, full_name, date_written) VALUES
( 'The Future of Maglev Trains: Prospects and Challenges', 'GZA', '2023-11-14');

SELECT LAST_INSERT_ID();
INSERT INTO paper_sources (paper_id, source_id) VALUES
(LAST_INSERT_ID(), 7),
(LAST_INSERT_ID(), 14),
(LAST_INSERT_ID(), 15);

INSERT INTO papers(title, full_name, date_written) VALUES
( 'Impact of High-Speed Rail on Regional Economic Development', 'Ghostface Killah', '2022-05-26');

SELECT LAST_INSERT_ID();
INSERT INTO paper_sources (paper_id, source_id) VALUES
(LAST_INSERT_ID(), 1),
(LAST_INSERT_ID(), 2),
(LAST_INSERT_ID(), 8),
(LAST_INSERT_ID(), 11),
(LAST_INSERT_ID(), 18);

INSERT INTO papers(title, full_name, date_written) VALUES
( 'Rail Corrosion: Mitigation Techniques and Material Innovations', 'O.D.B.', '2023-02-28');

SELECT LAST_INSERT_ID();
INSERT INTO paper_sources (paper_id, source_id) VALUES
(LAST_INSERT_ID(), 6),
(LAST_INSERT_ID(), 12);


INSERT INTO papers(title, full_name, date_written) VALUES
( 'The Role of Artificial Intelligence in Train Scheduling and Dispatch', 'Inspectah Deck', '2023-11-01');

SELECT LAST_INSERT_ID();
INSERT INTO paper_sources (paper_id, source_id) VALUES
(LAST_INSERT_ID(), 14),
(LAST_INSERT_ID(), 17);

INSERT INTO papers(title, full_name, date_written) VALUES
( 'Railroads and the Civil War: Logistics, Strategy, and Impact', 'Raekwon', '2023-01-02');

SELECT LAST_INSERT_ID();
INSERT INTO paper_sources (paper_id, source_id) VALUES
(LAST_INSERT_ID(), 1),
(LAST_INSERT_ID(), 3),
(LAST_INSERT_ID(), 9),
(LAST_INSERT_ID(), 16);

INSERT INTO papers(title, full_name, date_written) VALUES
( 'From Coal to Diesel: The Evolution of Locomotive Engines', 'U-God', '2023-11-27');

SELECT LAST_INSERT_ID();
INSERT INTO paper_sources (paper_id, source_id) VALUES
(LAST_INSERT_ID(), 1),
(LAST_INSERT_ID(), 3),
(LAST_INSERT_ID(), 4),
(LAST_INSERT_ID(), 15);

INSERT INTO papers(title, full_name, date_written) VALUES
( 'Rails to Integration: How Trains Helped Break Down Racial Barriers', 'Method Man', '2023-08-08');

SELECT LAST_INSERT_ID();
INSERT INTO paper_sources (paper_id, source_id) VALUES
(LAST_INSERT_ID(), 2),
(LAST_INSERT_ID(), 10),
(LAST_INSERT_ID(), 18);

INSERT INTO papers(title, full_name, date_written) VALUES
( 'The Ghan and The Indian Pacific: Railways Connecting the Australian Extremes', 'Masta Killa', '2022-10-16');

SELECT LAST_INSERT_ID();
INSERT INTO paper_sources (paper_id, source_id) VALUES
(LAST_INSERT_ID(), 1),
(LAST_INSERT_ID(), 2),
(LAST_INSERT_ID(), 8),
(LAST_INSERT_ID(), 11);

INSERT INTO papers(title, full_name, date_written) VALUES
( 'The Gotthard Base Tunnel: Engineering Marvel and Milestone in Alpine Transit', 'Cappadonna', '2022-09-25');

SELECT LAST_INSERT_ID();
INSERT INTO paper_sources (paper_id, source_id) VALUES
(LAST_INSERT_ID(), 12),
(LAST_INSERT_ID(), 13),
(LAST_INSERT_ID(), 14);

