# Zernio::SelectLinkedInOrganizationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **temp_token** | **String** |  |  |
| **user_profile** | **Object** |  |  |
| **account_type** | **String** | Send this (with selectedOrganization for an organization) or selections, not both. | [optional] |
| **selections** | [**Array&lt;SelectLinkedInOrganizationRequestSelectionsInner&gt;**](SelectLinkedInOrganizationRequestSelectionsInner.md) | Several accounts to connect from one sign-in (yourself and/or organizations), each as its own account. With two or more entries the response lists &#x60;accounts&#x60; and &#x60;failed&#x60; instead of &#x60;account&#x60;, and the request is refused with 400 on a reconnect or an ads connect. A single entry behaves exactly like accountType. | [optional] |
| **selected_organization** | [**SelectLinkedInOrganizationRequestSelectedOrganization**](SelectLinkedInOrganizationRequestSelectedOrganization.md) |  | [optional] |
| **redirect_url** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SelectLinkedInOrganizationRequest.new(
  profile_id: null,
  temp_token: null,
  user_profile: null,
  account_type: null,
  selections: null,
  selected_organization: null,
  redirect_url: null
)
```

