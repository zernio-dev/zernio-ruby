# Zernio::GoogleAdsHierarchyClient

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Native Google Ads customer id, digits only. | [optional] |
| **name** | **String** | Null for a pending invitation. | [optional] |
| **currency** | **String** |  | [optional] |
| **time_zone** | **String** |  | [optional] |
| **manager** | **Boolean** | True for a sub-manager account. | [optional] |
| **test_account** | **Boolean** |  | [optional] |
| **hidden** | **Boolean** | Hidden in the manager&#39;s Google Ads UI. | [optional] |
| **level** | **Integer** | Distance from the root (1 &#x3D; direct client of the root). | [optional] |
| **status** | **String** | Google customer status: ENABLED, CANCELED, SUSPENDED or CLOSED. Null for a pending invitation. | [optional] |
| **parent_customer_id** | **String** | Direct manager of this account. Null only when more than 50 managers under the root were skipped. | [optional] |
| **manager_link_id** | **String** | Id of the link to the parent, used by PATCH /v1/ads/accounts/manager-links. | [optional] |
| **link_status** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleAdsHierarchyClient.new(
  customer_id: null,
  name: null,
  currency: null,
  time_zone: null,
  manager: null,
  test_account: null,
  hidden: null,
  level: null,
  status: null,
  parent_customer_id: null,
  manager_link_id: null,
  link_status: null
)
```

