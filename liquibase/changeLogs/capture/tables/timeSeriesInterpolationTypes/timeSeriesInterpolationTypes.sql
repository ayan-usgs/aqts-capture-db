create table if not exists ${AQTS_SCHEMA_NAME}.time_series_interpolation_types
(time_series_interpolation_types_id      bigint generated by default as identity (start with 1)
,time_series_unique_id                   character varying (32)
,start_time                              timestamp with time zone
,end_time                                timestamp with time zone
,interpolation_type                      text
,primary key (time_series_interpolation_types_id)
,constraint time_series_interpolation_types_ak unique (time_series_unique_id, start_time)
);
