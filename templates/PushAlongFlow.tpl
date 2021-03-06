<div id="processflowpushalong" class="mermaid">
{$FLOWGRAPH}
</div>
<script>
window.processflowmoveto{$pflowid} = function (tostate, forrecord, askifsure) {
	if (askifsure) {
		$ans = confirm(alert_arr.WANT_TO_CONTINUE);
	} else {
		$ans = true;
	}
	if ($ans) {
		{if $isInEditMode}
		document.getElementById('{$fieldName}').value = tostate;
		{else}
		var txtBox = 'txtbox_{$fieldName}';
		document.getElementById(txtBox).value = tostate;
		document.getElementById('cbcustominfo2').value = '{$pflowid}';
		dtlViewAjaxSave('{$fieldName}', '{$module}', '{$uitype}', '', '{$fieldName}', forrecord);
		{/if}
	}
}
mermaid.initialize({
	securityLevel: 'loose'
});
mermaid.init();
</script>
