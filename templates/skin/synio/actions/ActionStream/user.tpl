{**
 * Настраиваемая, персональная страница активности
 *}

{extends file='layout.base.tpl'}

{block name='layout_options'}
	{$sNav = 'stream'}
{/block}

{block name='layout_page_title'}{$aLang.stream_menu}{/block}

{block name='layout_content'}
	{include file='actions/ActionStream/event_list.tpl' sActivityType=''}
{/block}