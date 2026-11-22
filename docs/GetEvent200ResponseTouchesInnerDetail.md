# Zernio::GetEvent200ResponseTouchesInnerDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **referrer** | **String** | The referring site, such as &#x60;google.com&#x60;. | [optional] |
| **page** | **String** | The landing page&#39;s path. | [optional] |
| **utm_source** | **String** |  | [optional] |
| **utm_medium** | **String** |  | [optional] |
| **utm_campaign** | **String** |  | [optional] |
| **event_name** | **String** | The earlier event, for a &#x60;lead_form&#x60; or &#x60;event&#x60; touch. | [optional] |
| **answer** | **String** | The buyer&#39;s answer, for a &#x60;survey&#x60; touch. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetEvent200ResponseTouchesInnerDetail.new(
  referrer: null,
  page: null,
  utm_source: null,
  utm_medium: null,
  utm_campaign: null,
  event_name: null,
  answer: null
)
```

