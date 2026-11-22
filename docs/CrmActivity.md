# Zernio::CrmActivity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **object_type** | **String** | HubSpot &#x60;note&#x60; or &#x60;communication&#x60; (WhatsApp, SMS); Salesforce &#x60;task&#x60;; HighLevel &#x60;note&#x60;. |  |
| **contact_id** | **String** |  |  |
| **channel** | **String** |  |  |
| **direction** | **String** |  |  |
| **subject** | **String** |  |  |
| **body** | **String** |  |  |
| **occurred_at** | **Time** |  |  |
| **url** | **String** | The Salesforce Task, or the HubSpot or HighLevel contact whose record shows it. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CrmActivity.new(
  id: null,
  object_type: null,
  contact_id: null,
  channel: null,
  direction: null,
  subject: null,
  body: null,
  occurred_at: null,
  url: null
)
```

