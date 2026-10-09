# Zernio::ApiChangelogOperationRef

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **method** | **String** |  |  |
| **path** | **String** |  |  |
| **operation_id** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** | OpenAPI tags of the operation. | [optional] |
| **x_platforms** | **Array&lt;String&gt;** | The operation&#39;s &#x60;x-platforms&#x60; list, verbatim. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ApiChangelogOperationRef.new(
  method: POST,
  path: /v1/ads/create,
  operation_id: createAd,
  tags: [Ad Campaigns],
  x_platforms: [google]
)
```

