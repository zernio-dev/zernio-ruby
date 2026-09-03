# Zernio::AnalyticsDeltaResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;AnalyticsDeltaEntry&gt;**](AnalyticsDeltaEntry.md) | Changed snapshots, oldest first, in the order the feed received them. Empty on the bootstrap call (no &#x60;cursor&#x60; supplied) and whenever nothing has changed since your cursor.  |  |
| **next_cursor** | **String** | Cursor to send on the next call. ALWAYS present, including on an empty page, so you always have something to advance with, and it never moves backwards. Opaque: pass it back verbatim, and do not parse, construct or compare cursors.  |  |
| **has_more** | **Boolean** | True when more changes are already waiting past &#x60;nextCursor&#x60;, so call again immediately. False means you are caught up: keep &#x60;nextCursor&#x60; and poll again later. This feed never ends, so &#x60;hasMore: false&#x60; does NOT mean &#x60;nextCursor&#x60; is null.  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AnalyticsDeltaResponse.new(
  data: null,
  next_cursor: v1.WyIyMDI2LTA5LTAxIDE3OjEyOjA0IiwiNjVmMWMwYTllMmI1YWYwMDEyYWIzNGNkIl0,
  has_more: null
)
```

