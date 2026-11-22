# Zernio::WebhookPayloadEmailBouncedBounce

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recipient** | **String** | The address that refused the mail. | [optional] |
| **type** | **String** | &#x60;hard&#x60;: 5.x.x, the address does not take mail. &#x60;soft&#x60;: 4.x.x, a temporary refusal the sending server gave up on. &#x60;undetermined&#x60;: the report gave no status. | [optional] |
| **category** | **String** |  | [optional] |
| **status** | **String** | RFC 3463 enhanced status, such as 5.1.1. | [optional] |
| **smtp_code** | **Integer** | The SMTP reply code, such as 550. Always a number. | [optional] |
| **diagnostic** | **String** | The receiving server&#39;s answer. | [optional] |
| **recommended_action** | **String** | &#x60;remove&#x60; only for an address that does not take mail. Sender-side refusals (authentication, blocklists, spam filters) are &#x60;fix_configuration&#x60; or &#x60;review&#x60;, never &#x60;remove&#x60;. | [optional] |
| **reporting_mta** | **String** |  | [optional] |
| **detection** | **String** | &#x60;dsn&#x60;: a standard delivery report with the bounced Message-ID. &#x60;ndr&#x60;: a non-standard report read from its headers and text. | [optional] |
| **bounce_message_id** | **String** | Provider id of the bounce report in the mailbox. | [optional] |
| **bounced_at** | **Time** | When the report arrived in the mailbox. | [optional] |
| **detected_at** | **Time** | When Zernio read it. Reports can arrive minutes to days after the send. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadEmailBouncedBounce.new(
  recipient: null,
  type: null,
  category: null,
  status: null,
  smtp_code: null,
  diagnostic: null,
  recommended_action: null,
  reporting_mta: null,
  detection: null,
  bounce_message_id: null,
  bounced_at: null,
  detected_at: null
)
```

