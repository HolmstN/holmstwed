Braintree::Configuration.environment = :sandbox
Braintree::Configuration.merchant_id = ENV["merchant_id"]
Braintree::Configuration.public_key = ENV["bt_public_key"]
Braintree::Configuration.private_key = ENV["bt_private_key"]
