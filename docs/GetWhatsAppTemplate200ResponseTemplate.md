# Zernio::GetWhatsAppTemplate200ResponseTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Meta template id. Unique per language variant; usable on /v1/whatsapp/templates/id/{templateId}. | [optional] |
| **name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **category** | **String** |  | [optional] |
| **language** | **String** | The variant actually returned. | [optional] |
| **components** | **Array&lt;Object&gt;** |  | [optional] |
| **rejected_reason** | **String** | Only when status is REJECTED. | [optional] |
| **quality_score** | **Object** | Post-approval quality (GREEN/YELLOW/RED), when Meta reports one. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetWhatsAppTemplate200ResponseTemplate.new(
  id: null,
  name: null,
  status: null,
  category: null,
  language: null,
  components: null,
  rejected_reason: null,
  quality_score: null
)
```

