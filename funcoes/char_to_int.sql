--transforma um char em um smallint (util para converter status)
CREATE OR REPLACE FUNCTION df_char_to_int(chartoconvert CHAR)
RETURNS SMALLINT AS
$BODY$
SELECT
CASE
  WHEN $1 SIMILAR TO '[0-9]' THEN CAST($1 AS SMALLINT)
  WHEN $1 = 'A' THEN 10::SMALLINT
  WHEN $1 = 'B' THEN 11::SMALLINT
  WHEN $1 = 'C' THEN 12::SMALLINT
  WHEN $1 = 'D' THEN 13::SMALLINT
  WHEN $1 = 'E' THEN 14::SMALLINT
  WHEN $1 = 'F' THEN 15::SMALLINT
  WHEN $1 = 'G' THEN 16::SMALLINT
  WHEN $1 = 'H' THEN 17::SMALLINT
  WHEN $1 = 'I' THEN 18::SMALLINT
  WHEN $1 = 'J' THEN 19::SMALLINT
  WHEN $1 = 'K' THEN 20::SMALLINT
  WHEN $1 = 'L' THEN 21::SMALLINT
  WHEN $1 = 'M' THEN 22::SMALLINT
  WHEN $1 = 'N' THEN 23::SMALLINT
  WHEN $1 = 'O' THEN 24::SMALLINT
  WHEN $1 = 'P' THEN 25::SMALLINT
  WHEN $1 = 'Q' THEN 26::SMALLINT
  WHEN $1 = 'R' THEN 27::SMALLINT
  WHEN $1 = 'S' THEN 28::SMALLINT
  WHEN $1 = 'T' THEN 29::SMALLINT
  WHEN $1 = 'U' THEN 30::SMALLINT
  WHEN $1 = 'V' THEN 31::SMALLINT
  WHEN $1 = 'W' THEN 32::SMALLINT
  WHEN $1 = 'X' THEN 33::SMALLINT
  WHEN $1 = 'Y' THEN 34::SMALLINT
  WHEN $1 = 'Z' THEN 35::SMALLINT
  ELSE NULL
END;
$BODY$
LANGUAGE 'sql'
IMMUTABLE STRICT;

--exemplo para transformar char em int (util para migracoes)
SELECT df_char_to_int('E');