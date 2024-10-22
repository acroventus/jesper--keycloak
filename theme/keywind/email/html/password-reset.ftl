<#import "template.ftl" as layout>
  <@layout.emailLayout>
    <table class="heading_block block-2" width="100%" border="0"
      cellpadding="10" cellspacing="0" role="presentation"
      style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
      <tr>
        <td class="pad">
          <h1
            style="margin: 0; color: #000000; direction: ltr; font-family: 'Montserrat', 'Trebuchet MS', 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', Tahoma, sans-serif; font-size: 22px; font-weight: 800; letter-spacing: normal; line-height: 120%; text-align: left; margin-top: 0; margin-bottom: 0; mso-line-height-alt: 45.6px;">
            <span class="tinyMce-placeholder"
              style="word-break: break-word;">
              ${kcSanitize(msg("passwordResetTitle", user.firstName ))?no_esc}
            </span>
          </h1>
        </td>
      </tr>
    </table>
    <table class="paragraph_block block-3" width="100%" border="0"
      cellpadding="10" cellspacing="0" role="presentation"
      style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
      <tr>
        <td class="pad">
          <div
            style="color:#101112;direction:ltr;font-family:'Montserrat', 'Trebuchet MS', 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', Tahoma, sans-serif;font-size:16px;font-weight:400;letter-spacing:0px;line-height:120%;text-align:left;mso-line-height-alt:19.2px;">
            <p style="margin: 0;">
              ${kcSanitize(msg("passwordResetBody"))?no_esc}
            </p>
          </div>
        </td>
      </tr>
    </table>
    <table class="button_block block-6" width="100%" border="0"
      cellpadding="10" cellspacing="0" role="presentation"
      style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
      <tr>
        <td class="pad">
          <div class="alignment" align="center">
            <a href="${link}" target="_blank" style="background-color:#7747FF;border-bottom:0px solid transparent;border-left:0px solid transparent;border-radius:4px;border-right:0px solid transparent;border-top:0px solid transparent;color:#ffffff;display:inline-block;font-family:'Montserrat', 'Trebuchet MS', 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', Tahoma, sans-serif;font-size:16px;font-weight:400;mso-border-alt:none;padding-bottom:5px;padding-top:5px;text-align:center;text-decoration:none;width:auto;word-break:keep-all;">
              <span
                style="word-break: break-word; padding-left: 20px; padding-right: 20px; font-size: 16px; display: inline-block; letter-spacing: normal;">
                <span
                  style="word-break: break-word; line-height: 32px;">
                  ${kcSanitize(msg("passwordResetButtonText"))?no_esc}
                </span>
              </span>
            </a>
          </div>
        </td>
      </tr>
    </table>
    <table class="text_block block-7" width="100%" border="0"
      cellpadding="10" cellspacing="0" role="presentation"
      style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
      <tr>
        <td class="pad">
          <div
            style="font-family: 'Trebuchet MS', Tahoma, sans-serif">
            <div class
              style="font-size: 12px; font-family: 'Montserrat', 'Trebuchet MS', 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', Tahoma, sans-serif; mso-line-height-alt: 14.399999999999999px; color: #555555; line-height: 1.2;">
              <p
                style="margin: 0; font-size: 14px; text-align: center; mso-line-height-alt: 16.8px;">
                ${kcSanitize(msg("passwordResetHint", linkExpirationFormatter(linkExpiration)?replace("minutes", "")))?no_esc}
              </p>
            </div>
          </div>
        </td>
      </tr>
    </table>
    <#-- ${kcSanitize(msg("passwordResetBodyHtml",link, linkExpiration, realmName, linkExpirationFormatter(linkExpiration)))?no_esc} -->
  </@layout.emailLayout>
