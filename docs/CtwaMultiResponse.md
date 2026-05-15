# Zernio::CtwaMultiResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_type** | **String** |  |  |
| **ads** | **Array&lt;Object&gt;** | The persisted Ad documents (one per creative), all sharing the same &#x60;platformCampaignId&#x60; and &#x60;platformAdSetId&#x60;.  |  |
| **platform_campaign_id** | **String** |  |  |
| **platform_ad_set_id** | **String** |  |  |
| **message** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CtwaMultiResponse.new(
  ad_type: null,
  ads: null,
  platform_campaign_id: null,
  platform_ad_set_id: null,
  message: null
)
```

