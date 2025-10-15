CREATE TABLE internet_traffic_enrichment_agg_usage_per_domain_complete (
  msisdn STRING,
  domain STRING,
  age INT,
  gender STRING,
  total_downlink_bytes BIGINT,
  PRIMARY KEY (msisdn, domain) NOT ENFORCED
)
WITH (
  'changelog.mode' = 'upsert'
);
INSERT INTO internet_traffic_enrichment_agg_usage_per_domain_complete
SELECT
  msisdn,
  domain,
  age,
  gender,
  SUM(downlink_bytes) AS total_downlink_bytes
FROM internet_traffic_enrichment
GROUP BY msisdn, domain, age, gender;