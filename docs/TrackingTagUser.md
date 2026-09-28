# Zernio::TrackingTagUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Business-scoped user id (as listed by GET /v1/ads/businesses/users). |  |
| **name** | **String** |  | [optional] |
| **tasks** | **Array&lt;String&gt;** | Platform permission names (Meta: &#x60;AA_ANALYZE&#x60;, &#x60;ADVERTISE&#x60;, &#x60;ANALYZE&#x60;, &#x60;EDIT&#x60;, &#x60;UPLOAD&#x60;). |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TrackingTagUser.new(
  id: null,
  name: null,
  tasks: null
)
```

