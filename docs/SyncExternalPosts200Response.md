# Zernio::SyncExternalPosts200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **synced** | [**SyncExternalPosts200ResponseSynced**](SyncExternalPosts200ResponseSynced.md) |  | [optional] |
| **found** | **Boolean** | Present only when a locator (&#x60;url&#x60;/&#x60;postId&#x60;) was provided — whether the post was found. | [optional] |
| **post** | [**ExternalPostSummary**](ExternalPostSummary.md) |  | [optional] |
| **posts** | [**Array&lt;ExternalPostSummary&gt;**](ExternalPostSummary.md) | The account&#39;s recent external posts. Present only when no locator was provided. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SyncExternalPosts200Response.new(
  synced: null,
  found: null,
  post: null,
  posts: null
)
```

