# Zernio::ConnectAds200ResponseOneOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **already_connected** | **Boolean** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **scoped_ad_account_ids** | **Array&lt;String&gt;** | Echo of the persisted ad-account scope when the caller passed &#x60;adAccountId&#x60; / &#x60;adAccountIds&#x60;. Omitted when no scope is set.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectAds200ResponseOneOf.new(
  already_connected: true,
  account_id: null,
  platform: null,
  username: null,
  display_name: null,
  scoped_ad_account_ids: [&quot;act_1330190928038136&quot;]
)
```

