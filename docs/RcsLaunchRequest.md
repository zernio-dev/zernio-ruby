# Zernio::RcsLaunchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_overview** | **String** |  |  |
| **agent_overview** | **String** |  |  |
| **interactions** | [**Array&lt;RcsLaunchRequestInteractionsInner&gt;**](RcsLaunchRequestInteractionsInner.md) |  |  |
| **message_examples** | **Array&lt;String&gt;** |  |  |
| **consent** | [**RcsLaunchRequestConsent**](RcsLaunchRequestConsent.md) |  |  |
| **test_video_url** | **String** | Public video of a test phone sending START, STOP and HELP plus one example conversation. |  |
| **additional_information** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RcsLaunchRequest.new(
  company_overview: null,
  agent_overview: null,
  interactions: null,
  message_examples: null,
  consent: null,
  test_video_url: null,
  additional_information: null
)
```

