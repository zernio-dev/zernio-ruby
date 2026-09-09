# Zernio::ListAdGroupAssets200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_group_id** | **String** |  | [optional] |
| **sitelinks** | [**Array&lt;ListAdGroupAssets200ResponseSitelinksInner&gt;**](ListAdGroupAssets200ResponseSitelinksInner.md) |  | [optional] |
| **callouts** | [**Array&lt;ListAdGroupAssets200ResponseCalloutsInner&gt;**](ListAdGroupAssets200ResponseCalloutsInner.md) |  | [optional] |
| **structured_snippets** | [**Array&lt;ListAdGroupAssets200ResponseStructuredSnippetsInner&gt;**](ListAdGroupAssets200ResponseStructuredSnippetsInner.md) |  | [optional] |
| **cached_at** | **Time** | Time of the cached Google read. Null when no cache was used. | [optional] |
| **stale** | **Boolean** | True when exhausted quota required returning the last successful read. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAdGroupAssets200Response.new(
  ad_group_id: null,
  sitelinks: null,
  callouts: null,
  structured_snippets: null,
  cached_at: null,
  stale: null
)
```

