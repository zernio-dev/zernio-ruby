# Zernio::GetAdAccountHierarchy200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **roots** | [**Array&lt;GetAdAccountHierarchy200ResponseRootsInner&gt;**](GetAdAccountHierarchy200ResponseRootsInner.md) |  | [optional] |
| **unavailable** | [**Array&lt;GetAdAccountHierarchy200ResponseUnavailableInner&gt;**](GetAdAccountHierarchy200ResponseUnavailableInner.md) |  | [optional] |
| **truncated** | **Boolean** |  | [optional] |
| **cached_at** | **Time** | When this data was fetched from Google. Null on a live read. | [optional] |
| **stale** | **Boolean** | True when Google&#39;s quota was exhausted and this is the last successful fetch. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdAccountHierarchy200Response.new(
  account_id: null,
  roots: null,
  unavailable: null,
  truncated: null,
  cached_at: null,
  stale: null
)
```

