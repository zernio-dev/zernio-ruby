# Zernio::BusinessAgentFaqInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **question** | **String** | Phrase it the way a customer would ask it; one topic per entry. |  |
| **answer** | **String** | Self-contained; the agent retrieves entries independently. |  |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessAgentFaqInput.new(
  question: null,
  answer: null,
  metadata: null
)
```

