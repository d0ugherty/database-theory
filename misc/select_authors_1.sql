use doughe38;

SELECT
    a.author_id,
    o.org_name,
    w.first_name,
    w.last_name
FROM
    authors a

left join organizations o on a.author_id = o.author_id
left join writers w on a.author_id = w.author_id;