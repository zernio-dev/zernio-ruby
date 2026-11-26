# Zernio::AutomationGraphEdgesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **source** | **String** |  |  |
| **target** | **String** |  |  |
| **source_handle** | **String** | Null when followed whatever the step&#39;s outcome; &#x60;matched&#x60; after a condition. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationGraphEdgesInner.new(
  id: null,
  source: null,
  target: null,
  source_handle: null
)
```

