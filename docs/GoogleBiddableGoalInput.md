# Zernio::GoogleBiddableGoalInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** | Google ConversionActionCategory, e.g. PURCHASE, SIGNUP, SUBMIT_LEAD_FORM |  |
| **origin** | **String** | Google ConversionOrigin, e.g. WEBSITE, APP, CALL_FROM_ADS, STORE, GOOGLE_HOSTED |  |
| **biddable** | **Boolean** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleBiddableGoalInput.new(
  category: null,
  origin: null,
  biddable: null
)
```

