# Zernio::EventConsent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_storage** | **String** | Ad cookies and click ids (&#x60;ad_storage&#x60;). | [optional] |
| **ad_user_data** | **String** | Sending personal data to ad platforms (&#x60;ad_user_data&#x60;). | [optional] |
| **ad_personalization** | **String** | Personalized advertising and remarketing (&#x60;ad_personalization&#x60;). | [optional] |
| **analytics_storage** | **String** | Analytics cookies (&#x60;analytics_storage&#x60;): Google Analytics only. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EventConsent.new(
  ad_storage: null,
  ad_user_data: null,
  ad_personalization: null,
  analytics_storage: null
)
```

