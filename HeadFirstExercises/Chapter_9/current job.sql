SELECT * FROM links.job_current;

INSERT INTO `job_current` (start_date) VALUES(
    FROM_UNIXTIME(
        UNIX_TIMESTAMP('2010-04-30 14:53:27') + FLOOR(0 + (RAND() * 63072000))
    )
)