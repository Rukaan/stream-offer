CREATE TABLE internet_traffic_enrichment (
  msisdn STRING,
  `timestamp` TIMESTAMP_LTZ(3),
  downlink_bytes BIGINT,
  uplink_bytes BIGINT,
  domain STRING,
  ip STRING,
  age INT,
  gender STRING,
  WATERMARK FOR `timestamp` AS `timestamp` - INTERVAL '5' SECOND,
  PRIMARY KEY (msisdn, `timestamp`) NOT ENFORCED
)
WITH (
  'changelog.mode' = 'upsert'
);

INSERT INTO internet_traffic_enrichment
SELECT
  t.msisdn,
  t.`timestamp`,
  t.downlink_bytes,
  t.uplink_bytes,
  t.domain,
  t.ip,
  u.age,
  u.gender
FROM internet_traffic_rekeyed AS t
LEFT JOIN user_profile AS u
ON t.msisdn = u.msisdn;