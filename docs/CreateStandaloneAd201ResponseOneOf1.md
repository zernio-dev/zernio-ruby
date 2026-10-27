# Zernio::CreateStandaloneAd201ResponseOneOf1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ads** | [**Array&lt;Ad&gt;**](Ad.md) |  | [optional] |
| **platform_campaign_id** | **String** |  | [optional] |
| **platform_ad_set_id** | **String** |  | [optional] |
| **applied_defaults** | [**AdAppliedDefaults**](AdAppliedDefaults.md) |  | [optional] |
| **message** | **String** |  | [optional] |
| **warnings** | **Array&lt;String&gt;** | Meta only, present only when needed. An &#x60;activation_failed:&#x60; entry means Meta refused the final switch to ACTIVE for the ads it names (or for their ad set or campaign): the entry names what was kept PAUSED and what was switched ACTIVE, and quotes Meta&#39;s error and the status calls that switch the PAUSED ones on later. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAd201ResponseOneOf1.new(
  ads: null,
  platform_campaign_id: null,
  platform_ad_set_id: null,
  applied_defaults: null,
  message: null,
  warnings: null
)
```

