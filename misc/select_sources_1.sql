USE doughe38;

SELECT
	s.source_id,
    s.title,
    s.date_published,
    j.journal_title,
    j.volume,
    j.issue,
    b.isbn,
    b.publisher,
    w.url,
    w.date_accessed
FROM
	sources s
-- Left join to return records from the sources table and
-- all matched records from the child tables
LEFT JOIN journals j ON s.source_id = j.source_id
LEFT JOIN books b ON s.source_id = b.source_id
LEFT JOIN websites w ON s.source_id = w.source_id;
