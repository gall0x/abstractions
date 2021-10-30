DROP FUNCTION data2methodid(BYTEA);
CREATE OR REPLACE FUNCTION data2methodid(data BYTEA) RETURNS CHAR(8) AS $$
BEGIN
RETURN LEFT(ENCODE("data", 'hex'), 8);
END; $$
LANGUAGE PLPGSQL;