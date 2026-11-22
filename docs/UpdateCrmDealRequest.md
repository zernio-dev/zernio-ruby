# Zernio::UpdateCrmDealRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **stage** | **String** | HubSpot stage id, Salesforce &#x60;StageName&#x60; or HighLevel pipeline stage id. | [optional] |
| **amount** | **Float** |  | [optional] |
| **currency** | **String** | ISO 4217 code. Multi-currency HubSpot portals and Salesforce orgs only. | [optional] |
| **close_date** | **Date** |  | [optional] |
| **owner_id** | **String** | An id from &#x60;GET /v1/crm/{accountId}/owners&#x60;. | [optional] |
| **properties** | [**Hash&lt;String, CrmNativePropertiesValue&gt;**](CrmNativePropertiesValue.md) | Native fields by internal name (HubSpot &#x60;lifecyclestage&#x60;, Salesforce &#x60;LeadSource&#x60; or &#x60;Industry__c&#x60;). On HighLevel, a record field (&#x60;source&#x60;, an opportunity &#x60;status&#x60;) or else a custom field id or key. A unified field of the same request wins over its native twin. &#x60;null&#x60; clears a field. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateCrmDealRequest.new(
  name: null,
  stage: null,
  amount: null,
  currency: null,
  close_date: null,
  owner_id: null,
  properties: null
)
```

