# Zernio::ListInboxReviews200ResponseDataInnerReply

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Reply id. On Google Business Profile it is the review id. | [optional] |
| **text** | **String** | Reply text. | [optional] |
| **created** | **Time** | When the reply was written (on Google Business Profile, last updated). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListInboxReviews200ResponseDataInnerReply.new(
  id: null,
  text: null,
  created: null
)
```

