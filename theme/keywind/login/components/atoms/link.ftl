<#macro kw color="" component="a" size="" rest...>
  <#switch color>
    <#case "primary">
      <#assign colorClass="text-primary">
      <#break>
    <#case "secondary">
      <#assign colorClass="text-secondary">
      <#break>
    <#default>
      <#assign colorClass="text-white">
  </#switch>

  <#switch size>
    <#case "small">
      <#assign sizeClass="text-sm">
      <#break>
    <#default>
      <#assign sizeClass="">
  </#switch>

  <${component}
    class="<#compress>btn btn-link ${colorClass} ${sizeClass} inline-flex !normal-case whitespace-nowrap</#compress>"

    <#list rest as attrName, attrValue>
      ${attrName}="${attrValue}"
    </#list>
  >
    <#nested>
  </${component}>
</#macro>
