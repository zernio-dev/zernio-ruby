# Zernio::CreateEmailDraftRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **to** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) | Optional on a draft; needed before it is sent. | [optional] |
| **cc** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  | [optional] |
| **bcc** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  | [optional] |
| **reply_to** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  | [optional] |
| **from_name** | **String** |  | [optional] |
| **from** | **String** | Send from another address of the mailbox, as on &#x60;POST /v1/email/messages&#x60;. Checked when the draft is saved. | [optional] |
| **append_signature** | **Boolean** | Puts the signature of the sending address in the draft body, where the user sees it: its Zernio default first, else its Gmail signature. | [optional] |
| **signature_id** | **String** | Puts this Zernio signature in the draft body instead. Wins over &#x60;appendSignature&#x60;. | [optional] |
| **subject** | **String** | On a reply draft, empty keeps the thread subject. | [optional] |
| **text** | **String** |  | [optional] |
| **html** | **String** |  | [optional] |
| **attachments** | [**Array&lt;EmailAttachmentInput&gt;**](EmailAttachmentInput.md) |  | [optional] |
| **headers** | **Hash&lt;String, String&gt;** | Same headers as on &#x60;POST /v1/email/messages&#x60;: &#x60;X-&#x60; names plus &#x60;List-Unsubscribe&#x60;, &#x60;List-Unsubscribe-Post&#x60;, &#x60;List-Id&#x60;, &#x60;Precedence&#x60; and &#x60;Auto-Submitted&#x60;. Outlook drafts leave out all but &#x60;X-&#x60; headers. | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Kept with the draft and returned on the sent message and its email.* webhooks. | [optional] |
| **in_reply_to** | **String** | Makes a reply draft in that message&#39;s thread, addressed and threaded like a reply. Not with &#x60;forwardOf&#x60;. | [optional] |
| **reply_all** | **Boolean** | With &#x60;inReplyTo&#x60;: address every recipient of the original. Leave out &#x60;to&#x60;, &#x60;cc&#x60; and &#x60;bcc&#x60;. | [optional] |
| **forward_of** | **String** | Makes a forward draft of that message, with its attachments. Recipients can come later. Not with &#x60;inReplyTo&#x60;. | [optional] |
| **include_attachments** | **Boolean** | With &#x60;forwardOf&#x60;: false keeps only the inline images of the original. | [optional][default to true] |
| **exclude_attachment_ids** | **Array&lt;String&gt;** | With &#x60;forwardOf&#x60;: attachment ids (from a read of the original) to leave out. | [optional] |
| **track_opens** | **Boolean** | Puts the open pixel in the draft html now; fires &#x60;email.opened&#x60; once it is sent. Needs &#x60;html&#x60;. | [optional] |
| **track_links** | **Boolean** | Rewrites the draft&#39;s links now; fires &#x60;email.link_clicked&#x60; once it is sent. Needs &#x60;html&#x60;. | [optional] |
| **track_replies** | **Boolean** | Fires &#x60;email.thread_replied&#x60; once it is sent. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateEmailDraftRequest.new(
  account_id: null,
  to: null,
  cc: null,
  bcc: null,
  reply_to: null,
  from_name: null,
  from: null,
  append_signature: null,
  signature_id: null,
  subject: null,
  text: null,
  html: null,
  attachments: null,
  headers: null,
  metadata: null,
  in_reply_to: null,
  reply_all: null,
  forward_of: null,
  include_attachments: null,
  exclude_attachment_ids: null,
  track_opens: null,
  track_links: null,
  track_replies: null
)
```

