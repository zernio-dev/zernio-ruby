# Zernio::MetaRecoveredWritesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **id** | **String** | The Meta object id this response uses. |  |
| **adopted** | **Boolean** | Always true when present. Zernio found this object by name under its parent and reused it instead of creating it again. | [optional] |
| **reposted_after** | **String** | Zernio sent the create again after Meta answered a 5xx and the read-back found no such object. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaRecoveredWritesInner.new(
  type: null,
  id: null,
  adopted: null,
  reposted_after: null
)
```

