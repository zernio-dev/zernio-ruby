# Zernio::SelectInstagramAccountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Profile ID from your connection flow |  |
| **page_id** | **String** | The Facebook Page ID selected by the user, from GET /v1/connect/instagram/select-account. Send this or pageIds, not both. | [optional] |
| **page_ids** | **Array&lt;String&gt;** | Several Page IDs whose linked Instagram accounts to connect from one sign-in, each as its own account. With two or more distinct IDs the response lists &#x60;accounts&#x60; and &#x60;failed&#x60; instead of &#x60;account&#x60;, and the request is refused with 400 on a reconnect or an ads connect. A single distinct ID behaves exactly like pageId. | [optional] |
| **temp_token** | **String** | Long-lived Facebook user access token from the OAuth callback redirect |  |
| **redirect_url** | **String** | Optional custom redirect URL to return to after selection | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SelectInstagramAccountRequest.new(
  profile_id: null,
  page_id: null,
  page_ids: null,
  temp_token: null,
  redirect_url: null
)
```

