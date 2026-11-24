# Zernio::AnalyticsListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **overview** | [**AnalyticsOverview**](AnalyticsOverview.md) |  | [optional] |
| **posts** | [**Array&lt;AnalyticsListResponsePostsInner&gt;**](AnalyticsListResponsePostsInner.md) |  | [optional] |
| **pagination** | [**Pagination**](Pagination.md) |  | [optional] |
| **accounts** | [**Array&lt;SocialAccount&gt;**](SocialAccount.md) | Connected accounts (followerCount and followersLastUpdated only included if user has analytics add-on) | [optional] |
| **has_analytics_access** | **Boolean** | Whether user has analytics add-on access | [optional] |
| **analytics_off** | [**Array&lt;AnalyticsOffAccount&gt;**](AnalyticsOffAccount.md) | The X accounts this list covers (after its platform, profile and account filters) whose analytics sync does not run: their numbers stay as of the last read. Also sent with &#x60;view&#x3D;summary&#x60;. Absent when there are none. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AnalyticsListResponse.new(
  overview: null,
  posts: null,
  pagination: null,
  accounts: null,
  has_analytics_access: null,
  analytics_off: null
)
```

