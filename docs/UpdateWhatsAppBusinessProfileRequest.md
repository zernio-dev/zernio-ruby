# Zernio::UpdateWhatsAppBusinessProfileRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **about** | **String** | Short business description (max 139 characters) | [optional] |
| **address** | **String** | Business address | [optional] |
| **description** | **String** | Full business description (max 512 characters) | [optional] |
| **email** | **String** | Business email | [optional] |
| **websites** | **Array&lt;String&gt;** | Business websites (max 2) | [optional] |
| **vertical** | **String** | Business category (e.g., RETAIL, ENTERTAINMENT, etc.) | [optional] |
| **profile_picture_handle** | **String** | Handle from resumable upload for profile picture | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateWhatsAppBusinessProfileRequest.new(
  account_id: null,
  about: null,
  address: null,
  description: null,
  email: null,
  websites: null,
  vertical: null,
  profile_picture_handle: null
)
```

