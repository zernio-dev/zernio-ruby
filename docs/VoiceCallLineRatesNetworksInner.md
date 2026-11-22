# Zernio::VoiceCallLineRatesNetworksInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Carrier&#39;s network label, for example &#x60;Mobile EE&#x60;. | [optional] |
| **per_minute_usd** | **Float** |  | [optional] |
| **above_rate_cap** | **Boolean** | Trunk calls only. True when the trunk&#39;s cap refuses calls to this network. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::VoiceCallLineRatesNetworksInner.new(
  name: null,
  per_minute_usd: null,
  above_rate_cap: null
)
```

