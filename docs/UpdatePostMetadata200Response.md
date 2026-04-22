# Zernio::UpdatePostMetadata200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **message** | **String** |  | [optional] |
| **video_id** | **String** | Only present in direct video ID mode | [optional] |
| **updated_fields** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdatePostMetadata200Response.new(
  success: null,
  message: null,
  video_id: null,
  updated_fields: null
)
```

