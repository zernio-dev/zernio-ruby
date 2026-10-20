# Zernio::ListFormLeads200ResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **form_id** | **String** |  | [optional] |
| **source** | **String** | persisted: leads stored from the webhook and the reconcile pass. live: read from Meta because none are stored for this form yet. | [optional] |
| **last_checked_at** | **Time** | When Zernio last read this form&#39;s leads from Meta. For persisted leads, the last reconcile pass for the Page (null before the first one). For live reads, when the cached Graph read was made. | [optional] |
| **last_updated** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListFormLeads200ResponseMeta.new(
  platform: facebook,
  account_id: null,
  form_id: null,
  source: null,
  last_checked_at: null,
  last_updated: null
)
```

