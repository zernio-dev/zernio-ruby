# Zernio::AttachCampaignAssetsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio Google Ads SocialAccount id — resolves the customer id + refresh token. |  |
| **sitelinks** | [**Array&lt;AttachCampaignAssetsRequestSitelinksInner&gt;**](AttachCampaignAssetsRequestSitelinksInner.md) | See POST /v1/ads/create sitelinks — same shape. | [optional] |
| **callouts** | **Array&lt;String&gt;** |  | [optional] |
| **structured_snippets** | [**Array&lt;AttachCampaignAssetsRequestStructuredSnippetsInner&gt;**](AttachCampaignAssetsRequestStructuredSnippetsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AttachCampaignAssetsRequest.new(
  account_id: null,
  sitelinks: null,
  callouts: null,
  structured_snippets: null
)
```

