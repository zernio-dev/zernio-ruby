# Zernio::AutomationTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A team template&#39;s id (24 hex characters), or the id of one of Zernio&#39;s templates such as &#x60;stop_losers&#x60;. |  |
| **name** | **String** |  |  |
| **description** | **String** |  |  |
| **publisher** | [**AutomationTemplatePublisher**](AutomationTemplatePublisher.md) |  |  |
| **visibility** | **String** | &#x60;team&#x60;: your team only. &#x60;link&#x60;: anyone with the share link can read and install it. &#x60;public&#x60;: one of Zernio&#39;s templates. |  |
| **version** | **Integer** | Goes up each time the content changes. Renaming or sharing keeps it. |  |
| **areas** | **Array&lt;String&gt;** | What its automations work on. |  |
| **inputs** | [**Array&lt;AutomationTemplateInput&gt;**](AutomationTemplateInput.md) |  |  |
| **automations** | [**Array&lt;AutomationTemplateAutomation&gt;**](AutomationTemplateAutomation.md) |  |  |
| **installs** | **Integer** | Installs across every team. Always 0 on Zernio&#39;s templates. |  |
| **installed_in_team** | **Integer** | Your team&#39;s automations made from it. Absent on shared and Zernio templates. | [optional] |
| **share** | [**AutomationTemplateShare**](AutomationTemplateShare.md) |  |  |
| **created_by** | **String** | The user who saved it. Only on your team&#39;s templates. | [optional] |
| **created_at** | **Time** | Absent on Zernio&#39;s templates. | [optional] |
| **updated_at** | **Time** | Absent on Zernio&#39;s templates. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationTemplate.new(
  id: null,
  name: null,
  description: null,
  publisher: null,
  visibility: null,
  version: null,
  areas: null,
  inputs: null,
  automations: null,
  installs: null,
  installed_in_team: null,
  share: null,
  created_by: null,
  created_at: null,
  updated_at: null
)
```

