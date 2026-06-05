# Zernio::GetInboxTopAccounts200ResponseAccountsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **display_name** | **String** | (disconnected) when the SocialAccount no longer exists | [optional] |
| **username** | **String** |  | [optional] |
| **received** | **Integer** |  | [optional] |
| **sent** | **Integer** |  | [optional] |
| **total** | **Integer** |  | [optional] |
| **conversations** | **Integer** |  | [optional] |
| **median_response_seconds** | **Integer** |  | [optional] |
| **replied_count** | **Integer** | Distinguishes &#39;instant replies&#39; from &#39;no replies at all&#39; so a zero medianResponseSeconds with repliedCount&#x3D;0 renders as &#39;—&#39; instead of &#39;0s&#39; | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxTopAccounts200ResponseAccountsInner.new(
  account_id: null,
  platform: null,
  display_name: null,
  username: null,
  received: null,
  sent: null,
  total: null,
  conversations: null,
  median_response_seconds: null,
  replied_count: null
)
```

