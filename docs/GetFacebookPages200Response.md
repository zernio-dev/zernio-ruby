# Zernio::GetFacebookPages200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pages** | [**Array&lt;GetFacebookPages200ResponsePagesInner&gt;**](GetFacebookPages200ResponsePagesInner.md) |  | [optional] |
| **selected_page_id** | **String** |  | [optional] |
| **cached** | **Boolean** | false when this response was just read from Meta (cold cache or a refresh that ran), true when served from the stored list (including a debounced refresh or an empty Meta answer) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetFacebookPages200Response.new(
  pages: null,
  selected_page_id: null,
  cached: null
)
```

