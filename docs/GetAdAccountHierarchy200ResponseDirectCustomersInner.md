# Zernio::GetAdAccountHierarchy200ResponseDirectCustomersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **manager** | **Boolean** |  | [optional] |
| **pending_invitations** | [**Array&lt;GetAdAccountHierarchy200ResponseDirectCustomersInnerPendingInvitationsInner&gt;**](GetAdAccountHierarchy200ResponseDirectCustomersInnerPendingInvitationsInner.md) | Manager invitations this account has not answered yet. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdAccountHierarchy200ResponseDirectCustomersInner.new(
  customer_id: null,
  manager: null,
  pending_invitations: null
)
```

