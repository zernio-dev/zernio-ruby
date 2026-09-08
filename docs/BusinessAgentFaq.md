# Zernio::BusinessAgentFaq

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **question** | **String** | Phrase it the way a customer would ask it; one topic per entry. |  |
| **answer** | **String** | Self-contained; the agent retrieves entries independently. |  |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |
| **id** | **String** |  |  |
| **created_at** | **Integer** | Unix seconds. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessAgentFaq.new(
  question: null,
  answer: null,
  metadata: null,
  id: null,
  created_at: null
)
```

