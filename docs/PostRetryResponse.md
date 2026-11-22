# Zernio::PostRetryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **error** | **String** | Present on a 207 only: summary of why the retry did not fully succeed. | [optional] |
| **platform_results** | [**Array&lt;PostRetryPlatformResult&gt;**](PostRetryPlatformResult.md) | One entry per platform of the post, in &#x60;post.platforms[]&#x60; order. | [optional] |
| **post** | [**Post**](Post.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PostRetryResponse.new(
  message: null,
  error: null,
  platform_results: null,
  post: null
)
```

