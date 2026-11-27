# Zernio::AttachCampaignAssetsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **account_id** | **String** | Zernio Google Ads connection id. |  |
| **ad_account_id** | **String** | Platform ad account ID (Google customer ID, digits only). Required when the connection has multiple customers. | [optional] |
| **customer_id** | **String** | Alias of adAccountId, kept for existing callers | [optional] |
| **sitelinks** | [**Array&lt;GoogleSitelink&gt;**](GoogleSitelink.md) |  | [optional] |
| **callouts** | **Array&lt;String&gt;** |  | [optional] |
| **structured_snippets** | [**Array&lt;GoogleStructuredSnippet&gt;**](GoogleStructuredSnippet.md) |  | [optional] |
| **images** | **Array&lt;String&gt;** | Public image URLs, uploaded to Google as image assets. Landscape 1.91:1 (min 600x314) or square 1:1 (min 300x300), up to 5 MB each. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AttachCampaignAssetsRequest.new(
  stage: null,
  account_id: null,
  ad_account_id: null,
  customer_id: null,
  sitelinks: null,
  callouts: null,
  structured_snippets: null,
  images: null
)
```

