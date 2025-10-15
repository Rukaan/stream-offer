CREATE TABLE internet_traffic_rekeyed (
  msisdn STRING,
  `timestamp` TIMESTAMP_LTZ(3),
  downlink_bytes BIGINT,
  uplink_bytes BIGINT,
  domain STRING,
  ip STRING,
  WATERMARK FOR `timestamp` AS `timestamp` - INTERVAL '5' SECOND,
  PRIMARY KEY (msisdn, `timestamp`) NOT ENFORCED
)
DISTRIBUTED BY (msisdn, `timestamp`) INTO 1 BUCKETS
WITH (
  'changelog.mode' = 'upsert'
);

INSERT INTO internet_traffic_rekeyed
SELECT
  msisdn,
  TO_TIMESTAMP_LTZ(`timestamp`, 3) AS `timestamp`,
  downlink_bytes,
  uplink_bytes,
  domain,
  ip
FROM `internet_traffic`;