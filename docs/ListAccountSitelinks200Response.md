# Zernio::ListAccountSitelinks200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **sitelinks** | [**Array&lt;ListAccountSitelinks200ResponseSitelinksInner&gt;**](ListAccountSitelinks200ResponseSitelinksInner.md) |  | [optional] |
| **cached_at** | **Time** | Time of the cached Google read. Null when no cache was used. | [optional] |
| **stale** | **Boolean** | True when exhausted quota required returning the last successful read. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAccountSitelinks200Response.new(
  customer_id: null,
  sitelinks: null,
  cached_at: null,
  stale: null
)
```

