use doughe38;

set foreign_key_checks = 0;
set sql_safe_updates = 0;

drop table paper_sources;
-- drop table sources_authors;
drop table sources;
drop table journals;
drop table authors;
drop table organizations;
drop table papers;
drop table websites;
drop table writers;
drop table books;
set foreign_key_checks = 1;
set sql_safe_updates = 1;

CREATE TABLE doughe38.sources (
    source_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(255),
    date_published DATETIME,
    PRIMARY KEY (source_id)
);

CREATE TABLE doughe38.journals (
	source_id int NOT NULL,
    journal_title varchar(255),
    volume varchar(10),
    issue varchar(10),
	CONSTRAINT FK_journals_sources FOREIGN KEY (source_id)
    REFERENCES sources(source_id),
	PRIMARY KEY (source_id)
    );

CREATE TABLE doughe38.books (
	source_id int NOT NULL,
    isbn varchar(25),
    publisher varchar(100),
    CONSTRAINT fk_books_sources FOREIGN KEY (source_id)
    REFERENCES sources(source_id),
    PRIMARY KEY (source_id)
    );

CREATE TABLE doughe38.websites (
	source_id int NOT NULL,
    url varchar (255),
    date_accessed datetime,
    CONSTRAINT fk_websites_sources FOREIGN KEY (source_id)
    REFERENCES sources(source_id),
    PRIMARY KEY (source_id)
);

CREATE TABLE doughe38.authors (
	author_id int NOT NULL auto_increment,
    PRIMARY KEY (author_id)
    );

CREATE TABLE doughe38.writers (
	author_id int NOT NULL,
	first_name varchar(255),
	last_name varchar(255),
    CONSTRAINT fk_writers_authors FOREIGN KEY (author_id)
    REFERENCES authors(author_id),
    PRIMARY KEY (author_id)
    );
    
CREATE TABLE  doughe38.organizations (
	author_id int NOT NULL,
	org_name varchar(255),
    CONSTRAINT fk_orgs_authors FOREIGN KEY (author_id)
    REFERENCES authors(author_id),
    PRIMARY KEY (author_id)
    );

CREATE TABLE doughe38.papers (
    paper_id int NOT NULL AUTO_INCREMENT,
    title varchar(255),
    full_name varchar(255),
    date_written datetime,
    author_id int,
    PRIMARY KEY (paper_id),
    CONSTRAINT fk_paper_author FOREIGN KEY (author_id)
    REFERENCES authors(author_id)
);


    CREATE TABLE doughe38.paper_sources (
    paper_id int,
    source_id int,
    PRIMARY KEY (paper_id, source_id),
    CONSTRAINT fk_paper FOREIGN KEY (paper_id)
    REFERENCES papers(paper_id),
    CONSTRAINT fk_source FOREIGN KEY (source_id)
    REFERENCES sources(source_id)
);


CREATE TABLE doughe38.sources_authors (
    source_id INT,
    author_id INT,
    PRIMARY KEY (source_id, author_id),
    CONSTRAINT fk_source_authors_source FOREIGN KEY (source_id)
        REFERENCES sources(source_id),
    CONSTRAINT fk_source_authors_author FOREIGN KEY (author_id)
        REFERENCES authors(author_id)
);
