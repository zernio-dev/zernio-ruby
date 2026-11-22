# Zernio::GetVoiceCallEstimate200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **via** | **String** |  | [optional] |
| **destination_country** | **String** | ISO country of &#x60;to&#x60;. Isle of Man, Jersey and Guernsey numbers return IM, JE and GG. | [optional] |
| **line_type** | **String** | Line type of &#x60;to&#x60;. Where it is not &#x60;mobile&#x60; or &#x60;landline&#x60;, &#x60;perMinuteUsd&#x60; takes the dearer of the two. | [optional] |
| **caller_id** | **String** | Caller ID the rates were picked for. Voice API estimates without &#x60;from&#x60; use your first calling number. | [optional] |
| **caller_country** | **String** |  | [optional] |
| **minutes** | **Integer** |  | [optional] |
| **per_minute_usd** | **Float** | Billable cost per minute for &#x60;to&#x60;&#39;s line type and the requested options. | [optional] |
| **billing_increment_seconds** | [**GetVoiceCallEstimate200ResponseBillingIncrementSeconds**](GetVoiceCallEstimate200ResponseBillingIncrementSeconds.md) |  | [optional] |
| **rates** | [**GetVoiceCallEstimate200ResponseRates**](GetVoiceCallEstimate200ResponseRates.md) |  | [optional] |
| **trunk** | [**GetVoiceCallEstimate200ResponseTrunk**](GetVoiceCallEstimate200ResponseTrunk.md) |  | [optional] |
| **breakdown** | [**GetVoiceCallEstimate200ResponseBreakdown**](GetVoiceCallEstimate200ResponseBreakdown.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetVoiceCallEstimate200Response.new(
  via: null,
  destination_country: null,
  line_type: null,
  caller_id: null,
  caller_country: null,
  minutes: null,
  per_minute_usd: null,
  billing_increment_seconds: null,
  rates: null,
  trunk: null,
  breakdown: null
)
```

