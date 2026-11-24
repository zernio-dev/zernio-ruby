# Zernio::StagedAdChangeDiffInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** |  |  |
| **before** | **Object** |  |  |
| **after** | **Object** |  |  |
| **before_available** | **Boolean** | False when the live read of the object does not return this field, so &#x60;before&#x60; is unknown. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StagedAdChangeDiffInner.new(
  field: status,
  before: null,
  after: null,
  before_available: null
)
```

