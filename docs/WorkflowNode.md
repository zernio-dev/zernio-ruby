# Zernio::WorkflowNode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable node id referenced by edges |  |
| **type** | **String** |  |  |
| **config** | **Hash&lt;String, Object&gt;** | Type-specific settings. trigger: { keywords:[string], matchType: any|contains|exact|regex, onlyFirstMessage:boolean }. send_message: { messageType: text|template|media|interactive, text, template:{name,language,variableMapping}, media:{mediaType,url,caption}, interactive } (template/interactive are WhatsApp-only). wait_for_reply: { timeoutMinutes:int, saveAs:string }. condition: { rules:[{ id, variable, operator: equals|not_equals|contains|not_contains|starts_with|ends_with|exists|not_exists|matches, value }] }. set_variable: { assignments:[{ name, value }] }. delay: { delayMinutes:int }. webhook: { url, method, headers, bodyTemplate, saveAs }. handoff: { note, assignTo }. String fields support {{variable}} interpolation.  | [optional] |
| **position** | [**WorkflowNodePosition**](WorkflowNodePosition.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WorkflowNode.new(
  id: null,
  type: null,
  config: null,
  position: null
)
```

