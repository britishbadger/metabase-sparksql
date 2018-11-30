FROM metabase/metabase

ADD https://s3.amazonaws.com/sparksql-deps/metabase-sparksql-deps-1.2.1.spark2-standalone.jar /app/plugins/metabase-sparksql-deps-1.2.1.spark2-standalone.jar



COPY run_metabase.sh /app/run_metabase.sh