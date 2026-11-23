# Zernio::AutomationEventActionStepOneOf3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **url** | **String** |  |  |
| **method** | **String** |  | [optional][default to &#39;POST&#39;] |
| **headers** | **Hash&lt;String, String&gt;** |  | [optional] |
| **body** | **String** | May read &#x60;{{event.&lt;fact&gt;}}&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationEventActionStepOneOf3.new(
  id: null,
  type: null,
  url: null,
  method: null,
  headers: null,
  body: null
)
```

