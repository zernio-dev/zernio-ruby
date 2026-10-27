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
| **metadata** | **Hash&lt;String, String&gt;** |  | [optional] |

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
  metadata: null
)
```

