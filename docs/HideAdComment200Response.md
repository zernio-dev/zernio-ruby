# Zernio::HideAdComment200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  |  |
| **comment_id** | **String** | ID of the created reply or moderated comment. |  |
| **hidden** | **Boolean** | The requested visibility state. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::HideAdComment200Response.new(
  status: null,
  comment_id: null,
  hidden: null
)
```

