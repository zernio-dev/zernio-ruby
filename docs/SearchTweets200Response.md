# Zernio::SearchTweets200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **tweets** | [**Array&lt;SearchTweets200ResponseTweetsInner&gt;**](SearchTweets200ResponseTweetsInner.md) |  | [optional] |
| **pagination** | [**SearchTweets200ResponsePagination**](SearchTweets200ResponsePagination.md) |  | [optional] |
| **meta** | [**SearchTweets200ResponseMeta**](SearchTweets200ResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SearchTweets200Response.new(
  status: success,
  tweets: null,
  pagination: null,
  meta: null
)
```

