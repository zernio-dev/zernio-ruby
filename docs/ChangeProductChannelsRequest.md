# Zernio::ChangeProductChannelsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **publish** | **Array&lt;String&gt;** | Channel ids from GET /v1/commerce/channels. | [optional] |
| **unpublish** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ChangeProductChannelsRequest.new(
  account_id: null,
  publish: null,
  unpublish: null
)
```

