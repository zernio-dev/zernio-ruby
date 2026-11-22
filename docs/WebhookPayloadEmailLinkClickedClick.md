# Zernio::WebhookPayloadEmailLinkClickedClick

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The original link target the recipient was redirected to. | [optional] |
| **link_index** | **Integer** | Position of the link in the html, from 0. | [optional] |
| **clicked_at** | **Time** |  | [optional] |
| **count** | **Integer** | Clicks on any link of the message so far. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadEmailLinkClickedClick.new(
  url: null,
  link_index: null,
  clicked_at: null,
  count: null
)
```

