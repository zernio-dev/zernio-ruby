# Zernio::AutomationGraphNodesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **type** | **String** | A step type such as &#x60;notify.send&#x60;, &#x60;messages.send&#x60;, &#x60;delay&#x60; or &#x60;condition&#x60;. |  |
| **config** | **Hash&lt;String, Object&gt;** |  |  |
| **position** | [**AutomationGraphNodesInnerPosition**](AutomationGraphNodesInnerPosition.md) |  | [optional] |
| **label** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationGraphNodesInner.new(
  id: null,
  type: null,
  config: null,
  position: null,
  label: null
)
```

