# Zernio::StagedAdChangeDiffInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field** | **String** | The dotted path of the value in the request body. |  |
| **before** | **Object** |  |  |
| **after** | **Object** |  |  |
| **before_available** | **Boolean** | False when the live read of the object does not return this field, so &#x60;before&#x60; is unknown. The field is still staged. |  |
| **added** | **Array&lt;Object&gt;** | Only on a list of plain values (strings or numbers) with &#x60;beforeAvailable&#x60; true: the values in &#x60;after&#x60; that are not in &#x60;before&#x60;. Order is ignored. | [optional] |
| **removed** | **Array&lt;Object&gt;** | Only on a list of plain values (strings or numbers) with &#x60;beforeAvailable&#x60; true: the values in &#x60;before&#x60; that are not in &#x60;after&#x60;. Order is ignored. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StagedAdChangeDiffInner.new(
  field: budget.amount,
  before: null,
  after: null,
  before_available: null,
  added: null,
  removed: null
)
```

