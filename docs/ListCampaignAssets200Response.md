# Zernio::ListCampaignAssets200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** |  | [optional] |
| **sitelinks** | [**Array&lt;ListCampaignAssets200ResponseSitelinksInner&gt;**](ListCampaignAssets200ResponseSitelinksInner.md) |  | [optional] |
| **callouts** | [**Array&lt;ListCampaignAssets200ResponseCalloutsInner&gt;**](ListCampaignAssets200ResponseCalloutsInner.md) |  | [optional] |
| **structured_snippets** | [**Array&lt;ListCampaignAssets200ResponseStructuredSnippetsInner&gt;**](ListCampaignAssets200ResponseStructuredSnippetsInner.md) |  | [optional] |
| **cached_at** | **Time** | Time of the cached Google read. Null when no cache was used. | [optional] |
| **stale** | **Boolean** | True when exhausted quota required returning the last successful read. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListCampaignAssets200Response.new(
  campaign_id: null,
  sitelinks: null,
  callouts: null,
  structured_snippets: null,
  cached_at: null,
  stale: null
)
```

