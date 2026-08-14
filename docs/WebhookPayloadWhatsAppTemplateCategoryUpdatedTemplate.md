# Zernio::WebhookPayloadWhatsAppTemplateCategoryUpdatedTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **String** | Meta&#39;s &#x60;message_template_id&#x60;, returned as a string. |  |
| **name** | **String** | Meta&#39;s &#x60;message_template_name&#x60;. |  |
| **language** | **String** | Meta&#39;s &#x60;message_template_language&#x60; (e.g. &#x60;en_US&#x60;). |  |
| **change_type** | **String** | &#x60;scheduled&#x60; is Meta&#39;s 24h advance notice of an upcoming reclassification; &#x60;applied&#x60; is the change taking effect.  |  |
| **category** | **String** | The category right now, regardless of changeType. |  |
| **previous_category** | **String** | Present only when changeType is &#x60;applied&#x60;. The category before this change. | [optional] |
| **scheduled_category** | **String** | Present only when changeType is &#x60;scheduled&#x60;. The category that will take effect at &#x60;effectiveAt&#x60;. | [optional] |
| **effective_at** | **Time** | Present only when changeType is &#x60;scheduled&#x60;. ISO-8601 timestamp when the scheduled category takes effect. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadWhatsAppTemplateCategoryUpdatedTemplate.new(
  template_id: null,
  name: null,
  language: null,
  change_type: null,
  category: null,
  previous_category: null,
  scheduled_category: null,
  effective_at: null
)
```

