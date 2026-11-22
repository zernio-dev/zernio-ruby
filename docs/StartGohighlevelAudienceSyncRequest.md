# Zernio::StartGohighlevelAudienceSyncRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag** | **String** | The HighLevel tag, matched case-insensitively. |  |
| **targets** | [**Array&lt;StartGohighlevelAudienceSyncRequestTargetsInner&gt;**](StartGohighlevelAudienceSyncRequestTargetsInner.md) | The ad accounts to keep the audience on, each one of &#x60;targetChoices&#x60;. |  |
| **audience_name** | **String** | The audience name on the ad accounts. Default &#x60;CRM tag: &lt;tag&gt;&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StartGohighlevelAudienceSyncRequest.new(
  tag: null,
  targets: null,
  audience_name: null
)
```

