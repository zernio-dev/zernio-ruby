# Zernio::Pool

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **pool_cents** | **Integer** |  |  |
| **min_views_to_qualify** | **Integer** |  |  |
| **organic_views_only** | **Boolean** | Only organic views count; views from ads do not. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::Pool.new(
  type: null,
  pool_cents: null,
  min_views_to_qualify: null,
  organic_views_only: null
)
```

