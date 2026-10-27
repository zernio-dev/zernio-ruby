# Zernio::CreateStandaloneAd201ResponseOneOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad** | [**Ad**](Ad.md) |  | [optional] |
| **applied_defaults** | [**AdAppliedDefaults**](AdAppliedDefaults.md) |  | [optional] |
| **message** | **String** |  | [optional] |
| **warnings** | **Array&lt;String&gt;** | Meta only, present only when needed. An &#x60;activation_failed:&#x60; entry means Meta refused the final switch to ACTIVE: the entry names what was kept PAUSED (the ad, and its ad set or campaign when Meta refused those) and what was switched ACTIVE, and quotes Meta&#39;s error and the status calls that switch the PAUSED ones on later. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAd201ResponseOneOf.new(
  ad: null,
  applied_defaults: null,
  message: null,
  warnings: null
)
```

