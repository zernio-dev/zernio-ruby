# Zernio::WebhookPayloadEmailUpdatedEmail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** |  | [optional] |
| **thread_id** | **String** |  | [optional] |
| **folder** | **String** | &#x60;inbox&#x60;, &#x60;sent&#x60;, &#x60;archive&#x60;, &#x60;trash&#x60;, &#x60;spam&#x60;, &#x60;drafts&#x60;, or the provider folder id for any other folder. | [optional] |
| **unread** | **Boolean** |  | [optional] |
| **starred** | **Boolean** | Gmail star or Outlook flag. | [optional] |
| **labels** | **Array&lt;String&gt;** | Gmail user label ids or Outlook category names. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadEmailUpdatedEmail.new(
  message_id: null,
  thread_id: null,
  folder: null,
  unread: null,
  starred: null,
  labels: null
)
```

