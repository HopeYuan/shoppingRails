Rails.configuration.stripe = {
  :publishable_key => 'pk_test_KiilPJfmpbBSBLFf2aKFylsS', 
  :secret_key => 'sk_test_H5NaXL2E3Nqc4N48Oue5mUVE'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]