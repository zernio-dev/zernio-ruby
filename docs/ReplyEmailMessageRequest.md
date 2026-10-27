# Zernio::ReplyEmailMessageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **to** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  |  |
| **cc** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  | [optional] |
| **bcc** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  | [optional] |
| **reply_to** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  | [optional] |
| **from_name** | **String** |  | [optional] |
| **subject** | **String** | Optional on replies; the provider keeps the thread subject. |  |
| **text** | **String** | Plain-text body. One of &#x60;text&#x60; or &#x60;html&#x60; is required. | [optional] |
| **html** | **String** |  | [optional] |
| **attachments** | [**Array&lt;SendEmailRequestAttachmentsInner&gt;**](SendEmailRequestAttachmentsInner.md) | 25 MB in total; 3 MB per attachment on Microsoft. | [optional] |
| **headers** | **Hash&lt;String, String&gt;** | Custom &#x60;X-&#x60; headers only. &#x60;List-Unsubscribe&#x60; is dropped on Microsoft and reported in &#x60;metadata.droppedHeaders&#x60;. | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |
| **scheduled_for** | **Time** | Reserved; currently rejected. | [optional] |
| **hold_as_draft** | **Boolean** | Reserved; currently rejected. | [optional] |
| **track_opens** | **Boolean** | Not available; must be false. | [optional] |
| **track_links** | **Boolean** | Not available; must be false. | [optional] |
| **mode** | **String** |  | [optional][default to &#39;reply&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ReplyEmailMessageRequest.new(
  account_id: null,
  to: null,
  cc: null,
  bcc: null,
  reply_to: null,
  from_name: null,
  subject: null,
  text: null,
  html: null,
  attachments: null,
  headers: null,
  metadata: null,
  scheduled_for: null,
  hold_as_draft: null,
  track_opens: null,
  track_links: null,
  mode: null
)
```

