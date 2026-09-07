# Zernio::CreateTrackingTagRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** | Meta ad account id, e.g. &#x60;act_123456789&#x60;. Required by this endpoint but ignored for OpenAI Ads. |  |
| **name** | **String** |  |  |
| **default_event_type** | **String** | OpenAI Ads only (ignored by Meta). When set, also provisions a standard conversion event setting wired to the new pixel, so &#x60;goal: conversions&#x60; ad creates on &#x60;POST /v1/ads/create&#x60; have an event to reference immediately. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateTrackingTagRequest.new(
  ad_account_id: null,
  name: null,
  default_event_type: null
)
```

