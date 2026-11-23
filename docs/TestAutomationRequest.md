# Zernio::TestAutomationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **Hash&lt;String, Object&gt;** | The sample event, shaped by the automation&#39;s kind. | [optional] |
| **subject_id** | **String** | A sequence&#39;s contact, a scheduled automation&#39;s post or an ad rule&#39;s object. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TestAutomationRequest.new(
  event: null,
  subject_id: null
)
```

