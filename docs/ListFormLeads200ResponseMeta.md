# Zernio::ListFormLeads200ResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **form_id** | **String** |  | [optional] |
| **source** | **String** | persisted: leads stored from the webhook and the recovery pass. live: read from Meta because none are stored for this form yet, or because content is not retained. | [optional] |
| **last_checked_at** | **Time** | For persisted leads, when the recovery pass last finished for the Page (null before the first one). It does not prove every lead is stored. For live reads, when Meta was read. | [optional] |
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

