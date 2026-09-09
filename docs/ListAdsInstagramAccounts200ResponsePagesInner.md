# Zernio::ListAdsInstagramAccounts200ResponsePagesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_id** | **String** | Facebook Page ID. |  |
| **name** | **String** | Facebook Page name. |  |
| **instagram_business_account** | [**MetaInstagramIdentityRef**](MetaInstagramIdentityRef.md) |  | [optional] |
| **connected_instagram_account** | [**MetaInstagramIdentityRef**](MetaInstagramIdentityRef.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAdsInstagramAccounts200ResponsePagesInner.new(
  page_id: null,
  name: null,
  instagram_business_account: null,
  connected_instagram_account: null
)
```

