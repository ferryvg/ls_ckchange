<div id="ckchange">
	<div style="margin-bottom:20px;">
		<label for="img_file">{$aLang.uploadimg_file}:</label>
		<div style="height:30px;">
			<button type="button" class="button ckf-change-file" style="float:left;">Выбрать</button>
			<input type="hidden" name="img_url" value="" id="ckf_img_url" />
			<div style="margin-left:10px;line-height:30px;white-space:nowrap;width:370px;overflow:hidden;text-align:right;float:right;">
				<span id="ckf_img_caption" style="float:right;"></span></div>
		</div>
	</div>
	
	<p>
		<label for="form-image-server-align">{$aLang.uploadimg_align}:</label>
		<select name="align" id="form-image-server-align" class="input-width-full">
			<option value="">{$aLang.uploadimg_align_no}</option>
			<option value="left">{$aLang.uploadimg_align_left}</option>
			<option value="right">{$aLang.uploadimg_align_right}</option>
			<option value="center">{$aLang.uploadimg_align_center}</option>
		</select>
	</p>
	
	<p><label for="form-image-server-title">{$aLang.uploadimg_title}:</label>
	<input type="text" name="title" id="form-image-server-title" value="" class="input-text input-width-full" /></p>
	
	<button type="submit" class="button button-primary"
			onclick="ls.topic.insertImageToEditor($('#ckf_img_url').val(),$('#form-image-server-align').val(),$('#form-image-server-title').val());">
		{$aLang.uploadimg_link_submit_paste}</button>
</div>
{literal}<script type="text/javascript">
if($("#window_upload_img").length > 0) {
	$("#window_upload_img .nav-pills-tabs")
		.append('<li class="js-block-upload-img-item" data-type="server"><a href="#">Посмотреть на сервере</a></li>');
	
	$("#window_upload_img .modal-content").append('<form method="POST" action="" id="block_upload_img_content_server" onsubmit="return false;" \
		class="table_devices-content js-block-upload-img-content" data-type="server" />');
	$("#block_upload_img_content_server").append($("#ckchange").html()).hide();
	
	$(document).ready(function() {
		$('.ckf-change-file').click(function() {
			var finder = new CKFinder();
			finder.basePath = DIR_WEB_ROOT+'/uploads';
			finder.selectActionFunction = function(url) {
				$("#ckf_img_url").val(url);
				$("#ckf_img_caption").text(url);
			};
			finder.resourceType = 'Images';
			finder.popup();
		});
	});
}
</script>
<style type="text/css">
#ckchange { display:none; }
</style>{/literal}