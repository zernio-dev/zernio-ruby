# Zernio::BusinessAgentStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **eligible** | **Boolean** | Whether the number can run the agent; null when the terms are not accepted yet (Meta refuses the check). |  |
| **terms_accepted** | **Boolean** | False when Meta rejects calls because the merchant has not accepted the terms in WhatsApp Manager. |  |
| **onboarded** | **Boolean** | An agent exists on the number (onboard was called). |  |
| **enabled** | **Boolean** | The agent answers live conversations. |  |
| **agent_id** | **String** |  |  |
| **settings** | [**BusinessAgentSettings**](BusinessAgentSettings.md) |  |  |
| **manual_steps** | [**Array&lt;BusinessAgentStatusManualStepsInner&gt;**](BusinessAgentStatusManualStepsInner.md) | Steps Meta keeps outside the API that Zernio can verify are still pending. |  |
| **unverified_steps** | [**Array&lt;BusinessAgentStatusUnverifiedStepsInner&gt;**](BusinessAgentStatusUnverifiedStepsInner.md) | Steps Meta keeps outside the API and exposes no state for, listed once an agent exists. Informational: Zernio cannot tell whether the merchant already did them. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessAgentStatus.new(
  eligible: null,
  terms_accepted: null,
  onboarded: null,
  enabled: null,
  agent_id: null,
  settings: null,
  manual_steps: null,
  unverified_steps: null
)
```

