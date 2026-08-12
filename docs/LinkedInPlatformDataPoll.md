# Zernio::LinkedInPlatformDataPoll

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **question** | **String** | Poll question (max 140 characters) |  |
| **options** | **Array&lt;String&gt;** | Poll options (2-4 choices, max 30 characters each) |  |
| **duration** | **String** | How long the poll accepts votes. Defaults to SEVEN_DAYS. | [optional][default to &#39;SEVEN_DAYS&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LinkedInPlatformDataPoll.new(
  question: null,
  options: null,
  duration: null
)
```

