# Zernio::ForwardEmailRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **to** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  |  |
| **cc** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  | [optional] |
| **bcc** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  | [optional] |
| **reply_to** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  | [optional] |
| **from_name** | **String** |  | [optional] |
| **from** | **String** | Send from another address of the mailbox, as on &#x60;POST /v1/email/messages&#x60;. | [optional] |
| **append_signature** | **Boolean** | Appends the signature of the sending address to the note, above the forwarded original: its Zernio default first, else its Gmail signature. | [optional] |
| **signature_id** | **String** | Appends this Zernio signature to the note instead. Wins over &#x60;appendSignature&#x60;. | [optional] |
| **subject** | **String** | Defaults to \&quot;Fwd: \&quot; plus the original subject. | [optional] |
| **text** | **String** | Optional note above the forwarded mail. | [optional] |
| **html** | **String** | Optional note above the forwarded mail, as html. | [optional] |
| **attachments** | [**Array&lt;EmailAttachmentInput&gt;**](EmailAttachmentInput.md) | Added to the forwarded attachments. Everything together stays under 25 MB, else 413 &#x60;attachment_too_large&#x60;. | [optional] |
| **include_attachments** | **Boolean** | False keeps only the inline images of the original. | [optional][default to true] |
| **exclude_attachment_ids** | **Array&lt;String&gt;** | Attachment ids (from a read of the original) to leave out. | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |
| **track_opens** | **Boolean** | Adds an open pixel to the note and fires &#x60;email.opened&#x60;. Needs &#x60;html&#x60;. | [optional] |
| **track_links** | **Boolean** | Rewrites the links of the note and fires &#x60;email.link_clicked&#x60;. Needs &#x60;html&#x60;. | [optional] |
| **track_replies** | **Boolean** | Fires &#x60;email.thread_replied&#x60; when someone else writes in the thread. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ForwardEmailRequest.new(
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
  include_attachments: null,
  exclude_attachment_ids: null,
  metadata: null,
  track_opens: null,
  track_links: null,
  track_replies: null
)
```

