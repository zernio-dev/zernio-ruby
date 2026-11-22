# Zernio::CreateCrmActivityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** | The text to log. |  |
| **subject** | **String** | Salesforce Task subject (default &#x60;&lt;Channel&gt; activity (&lt;direction&gt;)&#x60;); on HubSpot, the bold first line; on HighLevel, the note&#39;s first line. | [optional] |
| **channel** | **String** |  | [optional][default to &#39;other&#39;] |
| **direction** | **String** |  | [optional] |
| **occurred_at** | **Time** | When it happened. Defaults to now. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCrmActivityRequest.new(
  body: null,
  subject: null,
  channel: null,
  direction: null,
  occurred_at: null
)
```

