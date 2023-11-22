use doughe38;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM writers;
DELETE FROM organizations;

DELETE FROM authors;

ALTER TABLE authors AUTO_INCREMENT = 1;

SET SQL_SAFE_UPDATES = 1;

-- writers

INSERT INTO authors () VALUES ();
INSERT INTO writers (author_id, first_name, last_name) values
(LAST_INSERT_ID(), 'Merle', 'Haggard');

INSERT INTO authors () VALUES ();
INSERT INTO writers (author_id, first_name, last_name) values
(LAST_INSERT_ID(), 'Kris', 'Kristofferson');

INSERT INTO authors () VALUES ();
INSERT INTO writers (author_id, first_name, last_name) values
(LAST_INSERT_ID(), 'Willie', 'Nelson');

INSERT INTO authors () VALUES ();
INSERT INTO writers (author_id, first_name, last_name) values
(LAST_INSERT_ID(), 'Johnny', 'Cash');

INSERT INTO authors () VALUES ();
INSERT INTO writers (author_id, first_name, last_name) values
(LAST_INSERT_ID(), 'Walker', 'Texas Ranger');

INSERT INTO authors () VALUES ();
INSERT INTO writers (author_id, first_name, last_name) values
(LAST_INSERT_ID(), 'Captain', 'Planet');

INSERT INTO authors () VALUES ();
INSERT INTO writers (author_id, first_name, last_name) values
(LAST_INSERT_ID(), 'Holland', 'Oates');

INSERT INTO authors () VALUES ();
INSERT INTO writers (author_id, first_name, last_name) values
(LAST_INSERT_ID(), 'Silky', 'Johnson');

INSERT INTO authors () VALUES ();
INSERT INTO writers (author_id, first_name, last_name) values
(LAST_INSERT_ID(), 'Linus', 'Torvalds');

-- organizations

insert into authors () values ();
insert into organizations (author_id, org_name) values
(LAST_INSERT_ID(), 'The Highwaymen');

insert into authors () values ();
insert into organizations (author_id, org_name) values
(LAST_INSERT_ID(), "Barrett's Privateers");

insert into authors () values ();
insert into organizations (author_id, org_name) values
(LAST_INSERT_ID(), 'Wu-Tang Clan');

insert into authors () values ();
insert into organizations (author_id, org_name) values
(LAST_INSERT_ID(), 'Cannibal Corpse');

insert into authors () values ();
insert into organizations (author_id, org_name) values
(LAST_INSERT_ID(), 'Philadelphia Orchestra');

insert into authors () values ();
insert into organizations (author_id, org_name) values
(LAST_INSERT_ID(), 'The Planeteers');

insert into authors () values ();
insert into organizations (author_id, org_name) values
(LAST_INSERT_ID(), 'Chess Club Billionaires');

insert into authors () values ();
insert into organizations (author_id, org_name) values
(LAST_INSERT_ID(), 'Lonely Riders Club');

insert into authors () values ();
insert into organizations (author_id, org_name) values
(LAST_INSERT_ID(), 'Late Assignment Gang');