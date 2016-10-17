CREATE KEYSPACE killrvideo
WITH replication = {'class':'SimpleStrategy', 'replication_factor': 2};


USE killrvideo;

CREATE TABLE videos (
  video_id TIMEUUID,
  added_date TIMESTAMP,
  description TEXT,
  title TEXT,
  user_id UUID,
  PRIMARY KEY (video_id)
);

COPY videos FROM 'videos.csv' WITH HEADER=true;

SELECT * FROM videos LIMIT 10;

SELECT COUNT(*) FROM videos;

SELECT * FROM videos WHERE video_id = 6c4cffb9-0dc4-1d59-af24-c960b5fc3652;



CREATE TABLE videos_by_title_year (
        title TEXT,
        added_year INT,
        added_date TIMESTAMP,
        description TEXT,
        user_id UUID,
        video_id TIMEUUID,
        PRIMARY KEY ((title, added_year))
);

COPY videos_by_title_year (title, added_year, added_date, description, user_id, video_id) FROM 'videos_by_title_year.csv' WITH HEADER=true;

SELECT * FROM videos_by_title_year WHERE title = 'Introduction To Apache Cassandra' AND added_year = 2014;
SELECT * FROM videos_by_title_year WHERE title = 'Sleepy Grumpy Cat' AND added_year = 2015;
SELECT * FROM videos_by_title_year WHERE title = 'Grumpy Cat: Slow Motion' AND added_year = 2015;
SELECT * FROM videos_by_title_year WHERE title = 'AzureDev' AND added_year = 2015;

SELECT * FROM videos_by_title_year WHERE title = 'Introduction To Apache Cassandra';

SELECT * FROM videos_by_title_year WHERE added_year = 2015;

This query fails with error: InvalidRequest: code=2200 [Invalid query] message="Partitioning column "added_year" cannot be restricted because the preceding column ("ColumnDefinition{name=title, type=org.apache.cassandra.db.marshal.UTF8Type, kind=PARTITION_KEY, componentIndex=0, indexName=null, indexType=null}") is either not restricted or is restricted by a non-EQ relation"
