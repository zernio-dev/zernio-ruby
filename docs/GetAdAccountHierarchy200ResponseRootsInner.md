# Zernio::GetAdAccountHierarchy200ResponseRootsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | Native Google Ads customer id, digits only. | [optional] |
| **name** | **String** |  | [optional] |
| **currency** | **String** | ISO 4217 code. | [optional] |
| **time_zone** | **String** | IANA time zone, e.g. Europe/Madrid. | [optional] |
| **manager** | **Boolean** | True for a manager (MCC) account. | [optional] |
| **test_account** | **Boolean** |  | [optional] |
| **status** | **String** | Google customer status: ENABLED, CANCELED, SUSPENDED or CLOSED. | [optional] |
| **manager_links** | [**Array&lt;GetAdAccountHierarchy200ResponseRootsInnerManagerLinksInner&gt;**](GetAdAccountHierarchy200ResponseRootsInnerManagerLinksInner.md) | Managers linked to this account, ACTIVE or PENDING. | [optional] |
| **clients** | [**Array&lt;GoogleAdsHierarchyClient&gt;**](GoogleAdsHierarchyClient.md) | Every account under this root at any depth, in Google&#39;s order, followed by pending invitations. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdAccountHierarchy200ResponseRootsInner.new(
  customer_id: null,
  name: null,
  currency: null,
  time_zone: null,
  manager: null,
  test_account: null,
  status: null,
  manager_links: null,
  clients: null
)
```

