# Zernio::PostRetryPlatformResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | Platform slug, matching &#x60;post.platforms[].platform&#x60;. |  |
| **account_id** | **String** | Account id of this platform. |  |
| **retried** | **Boolean** | Whether this request retried the platform. False for a platform that had already published, or one left out of &#x60;platforms&#x60;. |  |
| **status** | **String** | Status after the retry: pending, processing, published, failed, cancelled, uploading. |  |
| **error** | **String** | Failure message for this platform, or null when it did not fail. |  |
| **error_category** | **String** | Stable failure category (for example &#x60;auth_expired&#x60;, &#x60;account_issue&#x60;, &#x60;user_content&#x60;, &#x60;platform_error&#x60;), or null. |  |
| **error_source** | **String** | Who caused the failure (&#x60;user&#x60;, &#x60;platform&#x60; or &#x60;system&#x60;), or null. |  |
| **platform_error_code** | **Integer** | Error code returned by the platform, when it sent one. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PostRetryPlatformResult.new(
  platform: null,
  account_id: null,
  retried: null,
  status: failed,
  error: null,
  error_category: user_content,
  error_source: user,
  platform_error_code: null
)
```

