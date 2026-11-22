# Zernio::WebhookPayloadEmailUpdatedChanges

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unread** | **Boolean** |  | [optional] |
| **starred** | **Boolean** |  | [optional] |
| **folder** | **String** |  | [optional] |
| **labels_added** | **Array&lt;String&gt;** |  | [optional] |
| **labels_removed** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadEmailUpdatedChanges.new(
  unread: null,
  starred: null,
  folder: null,
  labels_added: null,
  labels_removed: null
)
```

