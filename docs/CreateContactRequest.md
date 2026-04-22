# Zernio::CreateContactRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **name** | **String** |  |  |
| **email** | **String** |  | [optional] |
| **company** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **is_subscribed** | **Boolean** |  | [optional][default to true] |
| **notes** | **String** |  | [optional] |
| **account_id** | **String** | Optional. Creates a channel if provided with platform + platformIdentifier | [optional] |
| **platform** | **String** |  | [optional] |
| **platform_identifier** | **String** |  | [optional] |
| **display_identifier** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateContactRequest.new(
  profile_id: null,
  name: null,
  email: null,
  company: null,
  tags: null,
  is_subscribed: null,
  notes: null,
  account_id: null,
  platform: null,
  platform_identifier: null,
  display_identifier: null
)
```

