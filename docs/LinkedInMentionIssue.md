# Zernio::LinkedInMentionIssue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **input** | **String** | The mention exactly as written in the request, for example &#x60;@[https://www.linkedin.com/in/jane-doe]&#x60;. |  |
| **code** | **String** | Why it failed. |  |
| **message** | **String** | Human-readable reason. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LinkedInMentionIssue.new(
  input: null,
  code: null,
  message: null
)
```

