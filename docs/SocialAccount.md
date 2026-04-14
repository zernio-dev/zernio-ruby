# Late::SocialAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **profile_id** | [**SocialAccountProfileId**](SocialAccountProfileId.md) |  | [optional] |
| **username** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **profile_picture** | **String** | URL to the account&#39;s profile picture on the platform. May be null if the platform does not provide one. | [optional] |
| **profile_url** | **String** | Full profile URL for the connected account on its platform. | [optional] |
| **is_active** | **Boolean** |  | [optional] |
| **followers_count** | **Float** | Follower count (only included if user has analytics add-on) | [optional] |
| **followers_last_updated** | **Time** | Last time follower count was updated (only included if user has analytics add-on) | [optional] |
| **parent_account_id** | **String** | Reference to the parent posting SocialAccount. Set for ads accounts that share or derive from a posting account&#39;s OAuth token. null for standalone ads (Google Ads) and all posting accounts.  | [optional] |
| **enabled** | **Boolean** | Whether the user explicitly activated this account. false means the account was created as a side effect (e.g., posting account auto-created when user connected ads first). Posting UI and scheduler ignore accounts with enabled: false.  | [optional] |
| **metadata** | **Object** | Platform-specific metadata. Fields vary by platform. For WhatsApp accounts, includes: - &#x60;qualityRating&#x60;: Phone number quality rating from Meta (&#x60;GREEN&#x60;, &#x60;YELLOW&#x60;, &#x60;RED&#x60;, or &#x60;UNKNOWN&#x60;) - &#x60;nameStatus&#x60;: Display name review status (&#x60;APPROVED&#x60;, &#x60;PENDING_REVIEW&#x60;, &#x60;DECLINED&#x60;, or &#x60;NONE&#x60;). Messages cannot be sent until the display name is approved by Meta. - &#x60;messagingLimitTier&#x60;: Maximum unique business-initiated conversations per 24h rolling window (&#x60;TIER_250&#x60;, &#x60;TIER_1K&#x60;, &#x60;TIER_10K&#x60;, &#x60;TIER_100K&#x60;, or &#x60;TIER_UNLIMITED&#x60;). Scales automatically as quality rating improves. - &#x60;verifiedName&#x60;: Meta-verified business display name - &#x60;displayPhoneNumber&#x60;: Formatted phone number (e.g., \&quot;+1 555-123-4567\&quot;) - &#x60;wabaId&#x60;: WhatsApp Business Account ID - &#x60;phoneNumberId&#x60;: Meta phone number ID  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::SocialAccount.new(
  _id: null,
  platform: null,
  profile_id: null,
  username: null,
  display_name: null,
  profile_picture: null,
  profile_url: null,
  is_active: null,
  followers_count: null,
  followers_last_updated: null,
  parent_account_id: null,
  enabled: null,
  metadata: null
)
```

