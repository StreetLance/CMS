{* Письмо ответа на комметарий пользователю *}
{$subject = "{$lang->email_comment_theme} `{$settings->site_name}`" scope=parent}

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /><style type="text/css">
        /*<![CDATA[*/
        div, p, a, li, td, span {
            -webkit-text-size-adjust:none;
        }
        @media only screen and (max-width: 600px) {
            *[class="gmail-fix"] {
                display: none !important;
            }
        }
        /*]]>*/
    </style>
</head>
<body style="margin: 0">
<div style="padding: 15px 0px; background-color: rgb(239, 239, 239); background: rgb(239, 239, 239) url({$config->root_url}/design/{$settings->theme}/images/email_pattern.png); background-repeat: repeat; padding-left: 0px !important; padding-right: 0px !important;">
    <table width="600" border="0" cellspacing="0" cellpadding="0" align="center" style="margin: 0 auto">
        <tbody>

        <tr>
            <td class="td" border="0" valign="top" align="left" style="border: 0">
                <div style="border-width: 0px; border-style: solid; border-radius: 0px; border-color: rgb(204, 204, 204)"><!-- CONTENT BEGIN  -->
                    <div>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" style="padding: 5px; background-color: rgb(255, 255, 255); background: rgb(255, 255, 255) no-repeat; border-top-left-radius: 0px; border-top-right-radius: 0px; overflow: hidden">
                            <tbody>
                            <tr>
                                <td border="0" class="td" valign="top" width="1%" align="left" style="border: 0">
                                    <div>
                                        <div style="text-align: left"><a><img src="{$config->root_url}/design/{$settings->theme}/images/{$settings->site_logo}" width="200" align="left" style="border: 0; display: block; margin: 0 auto" /></a></div>
                                    </div>
                                </td>

                                <td border="0" class="td" valign="middle" align="left" style="border: 0">
                                    <div>
                                        <div style="text-align: left; font-family: 'Trebuchet MS'; font-size: 14px; color: rgb(51, 51, 51); line-height: normal">
                                            <div style="text-align: right;">
                                                <span style="font-size:18px;">
                                                    <span style="font-family:trebuchet ms,helvetica,sans-serif;">
                                                        <span style="color:#333333;">
                                                            <strong>{$lang->company_phone_1}</strong><br />
                                                            <strong>{$lang->company_phone_2}</strong>
                                                        </span>
                                                    </span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div style="height: 30px; width: 100%; background: transparent;"></div>
                    <div>
                        <div>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" style="padding: 5px;background: rgb(255, 255, 255)">
                                <tbody>
                                <tr>
                                    <td border="0" class="td" valign="top" align="left" style="border: 0">
                                        <div>
                                            <div style="text-align: left; font-family: 'Trebuchet MS'; font-size: 14px; color: rgb(51, 51, 51); line-height: 1.5"><span style="font-size:18px;"><span style="font-family:trebuchet ms,helvetica,sans-serif;"><strong>{$lang->email_comment_hello} {$parent_comment->name|escape}</strong></span></span><br />
                                                <br />
                                                <span style="font-family:trebuchet ms,helvetica,sans-serif;">
                                                    <span style="font-size:14px;">{$lang->email_comment_answer_user} <a href="{$config->root_url}/{$lang_link}">{$settings->site_name}</a>
                                                        {if $parent_comment->type == 'product'}
                                                            {$lang->email_comment_product} &nbsp;<a target="_blank" href="{$config->root_url}/{$lang_link}products/{$parent_comment->product->url}#comment_{$parent_comment->id}">{$parent_comment->product->name}</a>
                                                        {/if}
                                                        {if $parent_comment->type == 'blog'}
                                                            {$lang->email_comment_artilcle} &nbsp;<a target="_blank" href="{$config->root_url}/{$lang_link}blog/{$parent_comment->post->url}#comment_{$parent_comment->id}">{$parent_comment->post->name}</a>
                                                        {/if}
                                                        {if $parent_comment->type == 'news'}
                                                            {$lang->email_comment_artilcle} &nbsp;<a target="_blank" href="{$config->root_url}/{$lang_link}news/{$parent_comment->post->url}#comment_{$parent_comment->id}">{$parent_comment->post->name}</a>
                                                        {/if}
                                                    </span>
                                                </span>
                                                <br />
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div style="height: 30px; width: 100%; background: transparent;"></div>
                        <div>
                            <table width="70%" border="0" cellspacing="0" cellpadding="0" style="padding: 5px;background: rgb(255, 255, 255); background-color: rgb(189, 255, 204);">
                                <tbody>
                                <tr>
                                    <td border="0" class="td" valign="top" align="left" style="border: 0">
                                        <div>
                                            <div style="text-align: left; font-family: 'Trebuchet MS'; font-size: 14px; color: rgb(51, 51, 51); line-height: 1.5"><span style="color:#808080;"><em><span style="font-family:trebuchet ms,helvetica,sans-serif;"><span style="font-size:14px;">{$parent_comment->date|date} {$parent_comment->date|time}</span></span></em></span><br />
                                                <strong>{$lang->email_comment_your_comment}</strong><br />
                                                {$parent_comment->text|escape}
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div style="height: 30px; width: 100%; background: transparent;"></div>
                        <div>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" style="padding: 5px;background: rgb(255, 255, 255); background-color: rgb(255, 247, 194);">
                                <tbody>
                                <tr>
                                    <td border="0" class="td" valign="top" align="left" style="border: 0">
                                        <div>
                                            <div style="text-align: left; font-family: 'Trebuchet MS'; font-size: 14px; color: rgb(51, 51, 51); line-height: 1.5">
                                                <div style="text-align: right;"><span style="color:#808080;"><em><span style="font-family:trebuchet ms,helvetica,sans-serif;"><span style="font-size:14px;">{$comment->date|date} {$comment->date|time}</span></span></em></span><br />
                                                    <strong>{$lang->email_comment_admin_ans}</strong><br />
                                                    {$comment->text|escape}
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div style="height: 30px; width: 100%; background: transparent;"></div>
                        <div>
                            <table width="100%" cellpadding="0" cellspacing="0" border="0" style="padding: 5px; background: rgb(255, 255, 255)">
                                <tbody>
                                <tr>
                                    <td align="center" valign="top" border="0" class="td" style="border: 0">
                                        <div>
                                            <div style="text-align: center; font-family: 'Trebuchet MS'; font-size: 14px; color: rgb(51, 51, 51); line-height: 1.5">
                                                <span style="font-family:trebuchet ms,helvetica,sans-serif;">
                                                    <span style="border-style: solid; border-color: rgb(234, 182, 9); background-color: rgb(234, 182, 9); border-width: 0px 0px 0px 0px; display: inline-block; border-radius: 29px">
                                                        <a href="{$config->root_url}/{$lang_link}" style="font-family: 'Trebuchet MS'; font-size: 14px; color: rgb(29, 103, 164); text-decoration: underline; border-style: solid; border-width: 8px 25px 8px 25px; display: inline-block; border-radius: 28px; border-color: rgb(242, 189, 11); background: rgb(242, 189, 11); font-size: 16px; font-family: 'Lucida Sans Unicode', 'Lucida Grande'; font-weight: bold; color: rgb(255, 255, 255); text-decoration: none">
                                                            <span style="font-family:trebuchet ms,helvetica,sans-serif;">{$lang->email_on_site} &gt;</span>
                                                        </a>
                                                    </span>
                                                </span>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- CONTENT END  -->
                </div>
            </td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>
