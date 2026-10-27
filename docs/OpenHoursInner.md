# Zernio::OpenHoursInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **days** | **Array&lt;Integer&gt;** | 0 &#x3D; Sunday. |  |
| **timezone** | **String** |  |  |
| **start** | **String** |  |  |
| **_end** | **String** |  |  |
| **exdates** | **Array&lt;Date&gt;** | Dates to exclude. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::OpenHoursInner.new(
  days: null,
  timezone: null,
  start: 09:00,
  _end: 17:00,
  exdates: null
)
```

