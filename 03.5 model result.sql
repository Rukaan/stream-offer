SELECT msisdn, recommendation
FROM internet_traffic_enrichment_agg_usage_per_domain_complete,
LATERAL TABLE(ML_PREDICT('UserStreamOfferAgentModel', CONCAT(
  'Age: ', CAST(age AS STRING),
  'gender: ', CAST(gender AS STRING),
  'Domain: ', CAST(domain AS STRING),
  ', Bytes: ', CAST(total_downlink_bytes AS STRING)
)));  


{
  "package_name": "Social Media Package",
  "segment": "Social Scroller",
  "quota_usage_per_month": 0.025,
  "offering_message": "Stay connected with friends! Our Social Media Package is perfect for your WhatsApp needs, with plenty of data for chatting and sharing."
}


{
  "package_name": "Video Plus 15GB",
  "segment": "Video Streamer",
  "quota_usage_per_month": 15,
  "offering_message": "Enjoy seamless video streaming with our Video Plus 15GB package. Perfect for your YouTube needs with ample data for all your online activities."
}