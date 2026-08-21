# Zernio::ListWhatsAppAccountEvents200ResponseEventsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **type** | **String** | Event kind, e.g. template_approved, template_rejected, account_restricted, account_disconnected | [optional] |
| **severity** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **detail** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListWhatsAppAccountEvents200ResponseEventsInner.new(
  id: null,
  type: null,
  severity: null,
  title: null,
  detail: null,
  created_at: null
)
```

