# Zernio::GetAutomationCatalog200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schema** | **Object** | JSON Schema of the body of &#x60;POST /v1/automations&#x60;. |  |
| **triggers** | [**Array&lt;GetAutomationCatalog200ResponseTriggersInner&gt;**](GetAutomationCatalog200ResponseTriggersInner.md) |  |  |
| **subjects** | [**Array&lt;GetAutomationCatalog200ResponseSubjectsInner&gt;**](GetAutomationCatalog200ResponseSubjectsInner.md) | Ad rule subjects. |  |
| **filters** | **Object** | The fields and operators &#x60;subjects.filters&#x60; takes, and which fields each subject accepts. |  |
| **groups** | **Object** | What &#x60;subjects.groups&#x60; takes. |  |
| **alert** | **Object** | The most checks &#x60;alert.confirmChecks&#x60; can ask for. |  |
| **conditions** | **Object** | Condition operators, windows, &#x60;compareTo&#x60; options and size limits. |  |
| **limits** | **Array&lt;String&gt;** |  |  |
| **approval** | **Object** | Where &#x60;approval.request&#x60; goes, how many approvers and how long it can wait. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAutomationCatalog200Response.new(
  schema: null,
  triggers: null,
  subjects: null,
  filters: null,
  groups: null,
  alert: null,
  conditions: null,
  limits: null,
  approval: null
)
```

