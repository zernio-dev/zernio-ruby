# Zernio::GoogleManualCpc

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max_cpc** | **Float** | Max CPC of the ad groups, in the account&#39;s currency units: set on the ad group created with the campaign, and on every ad group of the campaign when an update switches it to Manual CPC. Google gives an ad group without one a 0.01 bid. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleManualCpc.new(
  max_cpc: null
)
```

