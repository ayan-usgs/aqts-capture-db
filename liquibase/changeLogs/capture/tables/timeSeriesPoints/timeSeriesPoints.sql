create table if not exists ${AQTS_SCHEMA_NAME}.time_series_points
(time_series_points_id                   bigint generated by default as identity (start with 1)
,time_series_unique_id                   character varying (32)
,time_step                               timestamp with time zone
,numeric_value                           decimal
,display_value                           text
,notes                                   jsonb
,summary                                 text
,num_points                              integer
,time_range_start                        timestamp with time zone
,time_range_end                          timestamp with time zone
,response_time                           timestamp with time zone
,response_version                        integer
,location_identifier                     text
,primary key (time_series_points_id)
,constraint time_series_points_ak unique (time_series_unique_id, time_step)
);