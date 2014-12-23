<p>&nbsp;</p>
<div class="manu" style="bottom:0px;">
<input   type="hidden" id ='page' value="${page}"/>
<s:iterator value="%{pages}"  id = "c"   status = "s">
          <span   onclick="select()"><a href='?page=<s:property value ="%{#s.count}"/>'><s:property value ="%{#s.count}"/></a> </span>
  </s:iterator>
</div>



