# Zernio::VoiceCallLineRates

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **origination** | **String** | Caller-ID band the carrier rates this call with. &#x60;unknown_caller&#x60; (no caller ID) shows the dearest band. | [optional] |
| **per_minute_usd** | **Float** | The rate most of this line type&#39;s networks share. | [optional] |
| **min_per_minute_usd** | **Float** |  | [optional] |
| **max_per_minute_usd** | **Float** |  | [optional] |
| **networks** | [**Array&lt;VoiceCallLineRatesNetworksInner&gt;**](VoiceCallLineRatesNetworksInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::VoiceCallLineRates.new(
  origination: null,
  per_minute_usd: null,
  min_per_minute_usd: null,
  max_per_minute_usd: null,
  networks: null
)
```

