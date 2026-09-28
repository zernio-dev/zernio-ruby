# Zernio::FeedbackReceipt

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Feedback id. Quote it if you follow up with support. | [optional] |
| **status** | **String** |  | [optional] |
| **duplicate** | **Boolean** | True when this matched a submission with the same summary from the last 24 hours. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::FeedbackReceipt.new(
  id: null,
  status: null,
  duplicate: null
)
```

