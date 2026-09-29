# Zernio::CommerceStore

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id of the store. |  |
| **platform** | **String** |  |  |
| **name** | **String** |  |  |
| **domain** | **String** | The platform domain of the store, e.g. my-store.myshopify.com. |  |
| **url** | **String** | Public storefront URL. |  |
| **currency** | **String** | ISO 4217 code the store sells in. |  |
| **country** | **String** | ISO 3166-1 alpha-2 country of the store. |  |
| **capabilities** | [**Array&lt;CommerceCapability&gt;**](CommerceCapability.md) |  |  |
| **missing_capabilities** | [**Array&lt;CommerceCapability&gt;**](CommerceCapability.md) | Capabilities the platform supports that this store has not granted yet. |  |
| **grant_permissions_url** | **String** | Shopify: a page in the Shopify admin where the store owner approves the permissions missingCapabilities need, on the existing install (no reinstall; they can revoke them later). Null when nothing is missing or the store cannot grant them this way (a store connected with its own custom-app token). |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceStore.new(
  account_id: null,
  platform: null,
  name: null,
  domain: null,
  url: null,
  currency: null,
  country: null,
  capabilities: null,
  missing_capabilities: null,
  grant_permissions_url: null
)
```

