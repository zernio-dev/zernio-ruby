# Zernio::DeleteAdCampaignRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **account_id** | **String** | Zernio SocialAccount id owning the ad account. Required only to delete an EMPTY campaign (zero ads), which has no local Ad documents to resolve a token from. | [optional] |
| **ad_account_id** | **String** | X only, for an EMPTY campaign that was never synced: the X ad account id the campaign belongs to (lowercase letters and digits). The synced campaign&#39;s ad account wins when there is one. Also accepted on the query string. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DeleteAdCampaignRequest.new(
  platform: null,
  account_id: null,
  ad_account_id: null
)
```

