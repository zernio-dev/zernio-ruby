# Zernio::GetVoiceCallEstimate200ResponseTrunk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Trunk the limits were read from. Null when none was resolved and the defaults apply. | [optional] |
| **limits_source** | **String** |  | [optional] |
| **max_destination_rate_usd** | **Float** | Per-minute cap, compared with the carrier&#39;s rate for the route (half the billed rate). Default 0.30, null when the trunk has no cap. | [optional] |
| **destination_whitelisted** | **Boolean** | Whether destinationCountry is on the trunk&#39;s whitelist. The default whitelist is every country Zernio sells numbers in. | [optional] |
| **rate_check** | **String** | &#x60;partial&#x60; means some of the destination&#39;s networks are above the cap and calls to them are refused. | [optional] |
| **outbound_enabled** | **Boolean** | False while outbound is paused for an unfunded balance. Null with default limits. | [optional] |
| **would_block** | **Boolean** |  | [optional] |
| **block_reasons** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetVoiceCallEstimate200ResponseTrunk.new(
  id: null,
  limits_source: null,
  max_destination_rate_usd: null,
  destination_whitelisted: null,
  rate_check: null,
  outbound_enabled: null,
  would_block: null,
  block_reasons: null
)
```

