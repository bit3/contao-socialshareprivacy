<?php
if (!$this->nojquery)
{
	$GLOBALS['TL_JAVASCRIPT']['jquery'] = 'system/modules/socialshareprivacy/html/jquery.noconflict.min.js';
}
$GLOBALS['TL_JAVASCRIPT']['socialshareprivacy'] = 'system/modules/socialshareprivacy/html/jquery.socialshareprivacy.min.js';
?>
<div id="socialshareprivacy"></div>
<script type="text/javascript">
	jQuery(document).ready(function($){
		if($('#socialshareprivacy').length > 0){
			$('#socialshareprivacy').socialSharePrivacy(<?php echo ModuleSocialSharePrivacy::encodeSettings($this->settings); ?>); 
		}
	});
</script>
