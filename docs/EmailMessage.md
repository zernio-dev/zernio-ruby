# Zernio::EmailMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The provider&#39;s message id. | [optional] |
| **thread_id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **provider** | **String** |  | [optional] |
| **folders** | **Array&lt;String&gt;** |  | [optional] |
| **from** | [**EmailAddress**](EmailAddress.md) |  | [optional] |
| **sender** | [**EmailAddress**](EmailAddress.md) |  | [optional] |
| **to** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  | [optional] |
| **cc** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  | [optional] |
| **bcc** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  | [optional] |
| **reply_to** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  | [optional] |
| **subject** | **String** |  | [optional] |
| **snippet** | **String** |  | [optional] |
| **text** | **String** |  | [optional] |
| **html** | **String** |  | [optional] |
| **attachments** | [**Array&lt;EmailAttachment&gt;**](EmailAttachment.md) |  | [optional] |
| **headers** | **Hash&lt;String, String&gt;** | Only with &#x60;includeHeaders&#x3D;true&#x60;. | [optional] |
| **raw** | **String** | MIME source, only with &#x60;raw&#x3D;true&#x60;. | [optional] |
| **date** | **Time** |  | [optional] |
| **unread** | **Boolean** |  | [optional] |
| **starred** | **Boolean** |  | [optional] |
| **labels** | **Array&lt;String&gt;** | Gmail: the ids of the user labels on the message (names come from &#x60;GET /v1/email/labels&#x60;). Outlook: its category names. | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |
| **tracking_id** | **String** | Set on a send with &#x60;trackOpens&#x60;, &#x60;trackLinks&#x60; or &#x60;trackReplies&#x60;; the email.* webhooks carry it. | [optional] |
| **clean** | [**EmailClean**](EmailClean.md) |  | [optional] |
| **draft_id** | **String** | On a mail sent from a draft (&#x60;POST /v1/email/drafts/{draftId}/send&#x60;): the draft it was. The sent mail has a new id. | [optional] |
| **forwarded_from** | **String** | On a forward: the message it forwarded. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EmailMessage.new(
  id: null,
  thread_id: null,
  account_id: null,
  provider: null,
  folders: null,
  from: null,
  sender: null,
  to: null,
  cc: null,
  bcc: null,
  reply_to: null,
  subject: null,
  snippet: null,
  text: null,
  html: null,
  attachments: null,
  headers: null,
  raw: null,
  date: null,
  unread: null,
  starred: null,
  labels: null,
  metadata: null,
  tracking_id: null,
  clean: null,
  draft_id: null,
  forwarded_from: null
)
```

