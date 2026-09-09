# Zernio::AttachCampaignAssetsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio Google Ads connection id. |  |
| **customer_id** | **String** | Google customer id without dashes. Required when the connection has multiple customers. | [optional] |
| **sitelinks** | [**Array&lt;GoogleSitelink&gt;**](GoogleSitelink.md) |  | [optional] |
| **callouts** | **Array&lt;String&gt;** |  | [optional] |
| **structured_snippets** | [**Array&lt;GoogleStructuredSnippet&gt;**](GoogleStructuredSnippet.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AttachCampaignAssetsRequest.new(
  account_id: null,
  customer_id: null,
  sitelinks: null,
  callouts: null,
  structured_snippets: null
)
```

