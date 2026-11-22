# Zernio::CrmContactInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** |  | [optional] |
| **last_name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **company** | **String** |  | [optional] |
| **owner_id** | **String** | An id from &#x60;GET /v1/crm/{accountId}/owners&#x60;. | [optional] |
| **properties** | [**Hash&lt;String, CrmNativePropertiesValue&gt;**](CrmNativePropertiesValue.md) | Native fields by internal name (HubSpot &#x60;lifecyclestage&#x60;, Salesforce &#x60;LeadSource&#x60; or &#x60;Industry__c&#x60;). On HighLevel, a record field (&#x60;source&#x60;, an opportunity &#x60;status&#x60;) or else a custom field id or key. A unified field of the same request wins over its native twin. &#x60;null&#x60; clears a field. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CrmContactInput.new(
  first_name: null,
  last_name: null,
  email: null,
  phone: null,
  company: null,
  owner_id: null,
  properties: null
)
```

