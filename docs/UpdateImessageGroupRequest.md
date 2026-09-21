# Zernio::UpdateImessageGroupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **photo_url** | **String** | Public HTTPS image URL; empty string removes the photo | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateImessageGroupRequest.new(
  account_id: null,
  name: null,
  photo_url: null
)
```

