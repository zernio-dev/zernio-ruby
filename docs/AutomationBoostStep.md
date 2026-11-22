# Zernio::AutomationBoostStep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **ad_account_id** | **String** | The Meta ad account that pays, from &#x60;GET /v1/ads/accounts&#x60;. |  |
| **budget** | **Float** | The whole spend of one boost, in the ad account currency. |  |
| **days** | **Integer** | How long each boost runs. |  |
| **goal** | **String** |  | [optional][default to &#39;engagement&#39;] |
| **countries** | **Array&lt;String&gt;** | ISO 3166 alpha-2 codes. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationBoostStep.new(
  id: null,
  type: null,
  ad_account_id: null,
  budget: null,
  days: null,
  goal: null,
  countries: [US, CA]
)
```

