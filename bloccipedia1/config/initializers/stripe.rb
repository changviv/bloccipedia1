# Store the environment variables on the Rails.configuration object
 Rails.configuration.stripe = {
   publishable_key: 'pk_test_ogUopkCx8w7u3I0XWuamnezl',
   secret_key:  'sk_test_rkKnOgD862wpESTEL0JeIKNj'
 }

 # Set our app-stored secret key with Stripe
 Stripe.api_key = Rails.configuration.stripe[:secret_key]
