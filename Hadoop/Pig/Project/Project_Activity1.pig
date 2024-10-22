-- Load the input file
line1 = LOAD 'hdfs:///user/supraja/episodeIV_dialogues.txt' USING PigStorage('\t') AS (name:chararray,line:chararray);
line2 = LOAD 'hdfs:///user/supraja/episodeV_dialogues.txt' USING PigStorage('\t') AS (name:chararray,line:chararray);
line3 = LOAD 'hdfs:///user/supraja/episodeVI_dialogues.txt' USING PigStorage('\t') AS (name:chararray,line:chararray);

lines = UNION line1,line2,line3;

-- Group by character names
grouped_lines = GROUP lines BY name;

-- Count the number of lines spoken by each character
character_line_count = FOREACH grouped_lines GENERATE $0 AS character, COUNT($1) AS line_count;

-- Order the results in descending order
ordered_character_line_count = ORDER character_line_count BY line_count DESC;

-- Store the result
STORE ordered_character_line_count INTO 'hdfs:///user/supraja/Pigproject' USING PigStorage(',');