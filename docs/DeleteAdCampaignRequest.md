# Zernio::DeleteAdCampaignRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **account_id** | **String** | Zernio SocialAccount id owning the ad account. Required only to delete an EMPTY campaign (zero ads), which has no local Ad documents to resolve a token from. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DeleteAdCampaignRequest.new(
  platform: null,
  account_id: null
)
```

