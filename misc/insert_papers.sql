SET SQL_SAFE_UPDATES = 0;

DELETE FROM papers;

SET SQL_SAFE_UPDATES = 1;

ALTER TABLE papers AUTO_INCREMENT =1;

INSERT INTO papers(title, full_name, date_written, source_id) VALUES
( 'Evaluating Ballast Performance for Enhanced Railroad Track Stability', 'RZA', '2020-11-01', 4);

INSERT INTO papers(title, full_name, date_written, source_id) VALUES
( 'The Future of Maglev Trains: Prospects and Challenges', 'GZA', '2021-04-14', 5);

INSERT INTO papers(title, full_name, date_written, source_id) VALUES
( 'Impact of High-Speed Rail on Regional Economic Development', 'Ghostface Killah', '2022-05-26', 2);

INSERT INTO papers(title, full_name, date_written, source_id) VALUES
( 'Rail Corrosion: Mitigation Techniques and Material Innovations', 'O.D.B.', '2023-02-28', 4);

INSERT INTO papers(title, full_name, date_written, source_id) VALUES
( 'The Role of Artificial Intelligence in Train Scheduling and Dispatch', 'Inspectah Deck', '2023-11-01', 8);

INSERT INTO papers(title, full_name, date_written, source_id) VALUES
( 'Railroads and the Civil War: Logistics, Strategy, and Impact', 'Raekwon', '2021-01-02', 1);

INSERT INTO papers(title, full_name, date_written, source_id) VALUES
( 'From Coal to Diesel: The Evolution of Locomotive Engines', 'U-God', '2019-11-27', 3);

INSERT INTO papers(title, full_name, date_written, source_id) VALUES
( 'Rails to Integration: How Trains Helped Break Down Racial Barriers', 'Method Man', '2022-08-08', 2);

INSERT INTO papers(title, full_name, date_written, source_id) VALUES
( 'The Ghan and The Indian Pacific: Railways Connecting the Australian Extremes', 'Masta Killa', '2022-10-16', 6);

INSERT INTO papers(title, full_name, date_written, source_id) VALUES
( 'The Gotthard Base Tunnel: Engineering Marvel and Milestone in Alpine Transit', 'Cappadonna', '2022-09-25', 7);
