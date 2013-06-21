{**
 * Навигация в профиле пользователя в разделе "Избранное"
 *}

<h3 class="profile-page-header">{$aLang.user_menu_profile_favourites}</h3>

<ul class="nav nav-pills mb-30">
	<li {if $sMenuSubItemSelect=='topics'}class="active"{/if}>
		<a href="{$oUserProfile->getUserWebPath()}favourites/topics/">{$aLang.user_menu_profile_favourites_topics}  {if $iCountTopicFavourite} ({$iCountTopicFavourite}) {/if}</a>
	</li>
	<li {if $sMenuSubItemSelect=='comments'}class="active"{/if}>
		<a href="{$oUserProfile->getUserWebPath()}favourites/comments/">{$aLang.user_menu_profile_favourites_comments}  {if $iCountCommentFavourite} ({$iCountCommentFavourite}) {/if}</a>
	</li>

	{hook run='menu_profile_favourite_item' oUserProfile=$oUserProfile}
</ul>

{hook run='menu_profile_favourite' oUserProfile=$oUserProfile}