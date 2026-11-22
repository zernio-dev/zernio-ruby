# Zernio::AutomationTemplateInstallRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inputs** | **Hash&lt;String, Object&gt;** | A value for each input, by its &#x60;key&#x60;. Required inputs without a default must be sent. | [optional] |
| **targets** | [**Array&lt;AutomationTemplateInstallRequestTargetsInner&gt;**](AutomationTemplateInstallRequestTargetsInner.md) | Install several times in one call, for example on many ad accounts. Each target is its own install, all or nothing, and its &#x60;inputs&#x60; win over the shared &#x60;inputs&#x60;. A failed target leaves the others in place. | [optional] |
| **status** | **String** | The status of every automation created. | [optional][default to &#39;paused&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationTemplateInstallRequest.new(
  inputs: {adAccount&#x3D;{accountId&#x3D;6731a0c2e4b0f1a2b3c4d5e6, adAccountId&#x3D;act_1234567890}},
  targets: null,
  status: null
)
```

