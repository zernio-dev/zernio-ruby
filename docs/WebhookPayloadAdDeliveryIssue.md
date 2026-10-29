# Zernio::WebhookPayloadAdDeliveryIssue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID: the dedupe key, also sent as the X-Zernio-Event-Id header and identical on every retry and redelivery. |  |
| **profiles** | [**Array&lt;WebhookProfilesInner&gt;**](WebhookProfilesInner.md) | The profiles this event belongs to, each with the externalId you set on it (null when none is set). Use it to route the event to your tenant without storing Zernio profile ids.  Present on every event tied to a profile, absent on events that belong to none. Events spanning several profiles (a post published to accounts of different profiles) list each once.  | [optional] |
| **test** | **Boolean** | Always true when present: only a sample sent by POST /v1/webhooks/test with an event carries it. Real deliveries never do. | [optional] |
| **event** | **String** |  |  |
| **account** | [**WebhookAdsAccount**](WebhookAdsAccount.md) |  |  |
| **ad_object** | [**WebhookPayloadAdReviewAdObject**](WebhookPayloadAdReviewAdObject.md) |  |  |
| **issue** | [**WebhookPayloadAdDeliveryIssueIssue**](WebhookPayloadAdDeliveryIssueIssue.md) |  |  |
| **timestamp** | **Time** | UTC time at which Zernio generated this event. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAdDeliveryIssue.new(
  id: null,
  profiles: null,
  test: null,
  event: null,
  account: null,
  ad_object: null,
  issue: null,
  timestamp: null
)
```

