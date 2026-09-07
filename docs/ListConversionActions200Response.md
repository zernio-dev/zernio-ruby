# Zernio::ListConversionActions200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | The Google Ads customer id the actions were read from. | [optional] |
| **actions** | [**Array&lt;ConversionAction&gt;**](ConversionAction.md) |  | [optional] |
| **cached_at** | **Time** | When this list was fetched from Google. Null when it was never served from cache. | [optional] |
| **stale** | **Boolean** | True when Google&#39;s daily API quota was exhausted and this is the last successful fetch, not a live read. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListConversionActions200Response.new(
  customer_id: null,
  actions: null,
  cached_at: null,
  stale: null
)
```

