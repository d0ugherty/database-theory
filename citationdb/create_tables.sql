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
	paper_id int NOT NULL auto_increment,
	title varchar(255),
    full_name varchar(255),
    date_written datetime,
    source_id int,
    author_id int,
    PRIMARY KEY (paper_id),
    CONSTRAINT FK_sources_paper FOREIGN KEY (source_id)
    REFERENCES sources(source_id),
    CONSTRAINT fk_paper_author FOREIGN KEY (author_id)
    REFERENCES authors(author_id)
    );
    