<#macro kw content="" footer="" header="">
  <div class="card bg-base-100 shadow-xl w-full max-w-md flex-shrink-0">
    <#if header?has_content>
      <div class="px-12 pt-12">
        ${header}
      </div>
    </#if>
    <#if content?has_content>

      <#if footer?has_content>
        <div class="card-body px-12">
          ${content}
        </div>
      <#else>
        <div class="card-body px-12 pb-12">
          ${content}
        </div>
      </#if>
    </#if>
    <#if footer?has_content>
      <div class="px-12 pb-12">
        ${footer}
      </div>
    </#if>
  </div>
</#macro>
