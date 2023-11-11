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

-- organizations

insert into authors () values ();
insert into organizations (author_id, org_name) values
(LAST_INSERT_ID(), 'The Highwaymen');

insert into authors () values ();
insert into organizations (author_id, org_name) values
(LAST_INSERT_ID(), 'Wu-Tang Clan');

insert into authors () values ();
insert into organizations (author_id, org_name) values
(LAST_INSERT_ID(), 'Cannibal Corpse');

insert into authors () values ();
insert into organizations (author_id, org_name) values
(LAST_INSERT_ID(), 'Philadelphia Orchestra');