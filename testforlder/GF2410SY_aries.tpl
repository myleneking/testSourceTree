{include file="head_header.tpl"}
<body>
	<div id="fb-root"></div>
	<a id="page_top"></a>
	<div id="container">
		<!--headerここから -->
		<header id="header" class="after_clear"> {include
			file="header.tpl"} </header>
		<!--end of headerここから -->
		<br class="brclear" />
		<div id="content">
			<p class="title_bgblk">セミナー</p>

			<section class="sec01">
				<div class="title_semi02">
					<!-- パターン２は title_semi02 -->
					<p>{$disp.meet_form.title}</p>
				</div>
			</section>


			<section class="sec01">
				<div class="text">
					<p>&nbsp;</p>
					<p>{$disp.meet_form.contents|replace_space:' ':'&nbsp;'|nl2br}</p>
					<p>&nbsp;</p>

					<table class="table01 table_border">
						<tr>
							<td class="pad0 wid20"><div class="align_center">
									<span style="font-size: 11px">企業URL</span>
								</div></td>
							<td><a href="#" class="link">http://www.yahoo.co.jp</a></td>
						</tr>
					</table>

				</div>
			</section>
        {if $error_doc == null || $error_doc == ""}
          {else}
          <div class="error">
            <p style="color: red;">{foreach from=$error_doc key="inc" item="key"}
                        {$key}<br />
            {/foreach} </p></div>
          {/if}
			{if $disp.meet_code}

			<form action="GF2410LG.php" method="post" name="form">
			        <input type="hidden" name="cmd" value="" />
        <input type="hidden" name="comID" value="{$disp.comID}" />
        <input type="hidden" name="path" value="{$disp.path}" />
        <input type="hidden" name="meet_id" value="" />
        <input type="hidden" name="meet_form_id" value="{$disp.meet_form_id}" />
        <input type="hidden" name="open_type" value="" />
        <input type="hidden" name="fair_id" value="" />
        <input type="hidden" name="meet_title" value="{$disp.meet_form.title}" />
        <input type="hidden" name="meet_com" value="{$disp.com.company_name_split_j}" />
        <input type="hidden" name="path_1010" value="30" />
        <input type="hidden" name="recommend_id" value="{$disp.recommend.id}" />
        <input type="hidden" name="recommend_name" value="{$disp.recommend.name}" />
        <input type="hidden" name="recommend_gyosyu" value="{$disp.recommend.gyosyu}" />
        <input type="hidden" name="recommend_crawl" value="{$disp.recommend.crawl}" />
        <input type="hidden" name="recommend_homepage" value="{$disp.recommend.homepage}" />
        <input type="hidden" name="disp_enq" value="10" />
        <input type="hidden" name="cusID" value="{$disp.cusID}" />
        <input type="hidden" name="minsyu_flg" value="{$disp.minsyu_flg}" />
				<table class="table01 table_border">
					<tr>
						<td class="bggry3">選択</td>
						<td class="bggry3">開催日時</td>
						<td class="bggry3">開催場所</td>
						<td class="bggry3">地図</td>
						<td class="bggry3">受付状況</td>
					</tr>
					{section name=i loop=$disp.meet_code} 
					{if $disp.meet_code[i]}
					<tr {if $disp.meet_code[i].class== "end"} class="end"{/if}>

						<td height="30">{if $disp.meet_code[i].radio}
							<div class="align_center">
								<input type="radio" name="join_meet" 
									value="{$disp.meet_code[i].meet_id}"
									{if $disp.meet_code[i].meet_id==$form.join_meet}checked{/if}>
							</div> {/if}
						</td>
						<td class="padding_0"><span class="padding_10">{$disp.meet_code[i].openAry.y}年{$disp.meet_code[i].openAry.m}月{$disp.meet_code[i].openAry.d}日（{$disp.meet_code[i].open_youbi}）</span>
							<hr class="border_dashed" /> <span class="padding_10">
								{$disp.meet_code[i].open_time_h}：{$disp.meet_code[i].open_time_m}{*$disp.meet_code[i].open_time_to*}</span>
						</td>

						<td><p>{$disp.meet_code[i].open_erea}</p></td>
						<td><div class="align_center">
								<a
									href="javascript:map_2410({$disp.meet_code[i].meet_id}, '{$smarty.const.SCHEDULE_MEET}');"
									target="" class="map">MAP</a>
							</div></td>
						<td><div class="align_center">{$disp.meet_code[i].status}</div></td>
					</tr>
					{/if}
                    {/section}

				</table>
				</form>
            {/if}
            
         
         {if $login_user_ses == ""}
         
         <div class="grybox">
<p class="exc">グローバルリーダーIDとパスワードを入力してください。</p>
ID <input type="text" name="login_id" id="gl_id" /> 　 Pass <input type="text" name="password" id="gl_pass" />　　<a href="./GF0110LG.php" class="triangle">ID・パスワードを忘れた方</a></div>
<!-- end grybox -->
         <p>・予約にはグローバルリーダーへの会員登録が必要です。　<a href="javascript:go_GF1010();" class="triangle">会員登録はこちら</a></p>
       
       <br class="brclear" />
       
          <div id="loginForm_exp">
            <div><img src="img/loginFoot_top.gif" alt="" width="625"/></div>
            <div class="loginMain">
              <p>グローバルリーダー IDとパスワードを入力してください。</p>
              <img src="img/img_loginid.gif" alt="Login ID"/>
              <input type="text" name="login_id" onfocus="this.style.color='#333333';" onmousedown="eraseID(this)" value="" class="id"/>　<img src="img/img_pass.gif" alt="パスワード" />
              <input name="password" type="password" value="" />
　               <a href="./GF0110LG.php" class="arrow_1" target="_blank"><span class="forget">ID・パスワードを忘れた方</span></a>
              <p class="register"> <span class="icon_dotred" >説明会参加予約にはグローバルリーダーへの会員登録が必要です。</span>　　 <a href="javascript:go_GF1010();" class="arrow_1">会員登録はこちら</a></p>
            </div>
            <div><img src="img/loginFoot_bottom.gif" alt="" width="625"/></div>
          </div>
          {/if}
          {if $disp.checkedExec.result}
          <!-- <div style="text-align:center;"><a href="javascript:conf_2410();"><img src="img/btn_reserve_check_out.gif" alt="確認" /></a></div>
          -->
         <p class="align_center">
		  <a href="javascript:conf_2410();"><input type="image" src="sharedimg/entry/btn_Reservation231.png" value="submit" tabindex="1" onMouseOver="this.src='sharedimg/entry/on_btn_Reservation231.png'" onMouseOut="this.src='sharedimg/entry/btn_Reservation231.png'" />
		</a></p>
         
          {/if}
   
<br class="brclear" />
<hr class="clear" />

<div id="pagetop"><a href="#page_top" class="anchor">Page Top</a></div>

</div>
				<!-- ここまで右サイドの類似企業 -->
				<form name="jumpform" method="post" action="GF2810LG.php">
					<input type="hidden" name="url" value="" /> <input type="hidden"
						name="comID" value="" /> <input type="hidden" name="recommend_id"
						value="{$disp.recommend.id}" /> <input type="hidden"
						name="recommend_name" value="{$disp.recommend.name}" /> <input
						type="hidden" name="recommend_gyosyu"
						value="{$disp.recommend.gyosyu}" /> <input type="hidden"
						name="recommend_crawl" value="{$disp.recommend.crawl}" /> <input
						type="hidden" name="recommend_homepage"
						value="{$disp.recommend.homepage}" />
				</form>
				<form name="logoform" method="post" action="GF2310SY.php">
					<input type="hidden" name="cmd" value="" /> <input type="hidden"
						name="lang" value={$disp.lang} /> <input type="hidden"
						name="comID" value={$disp.comID} /> <input type="hidden"
						name="path" value={$disp.path} /> <input type="hidden"
						name="recommend_id" value="{$disp.recommend.id}" /> <input
						type="hidden" name="recommend_name" value="{$disp.recommend.name}" />
					<input type="hidden" name="recommend_gyosyu"
						value="{$disp.recommend.gyosyu}" /> <input type="hidden"
						name="recommend_crawl" value="{$disp.recommend.crawl}" /> <input
						type="hidden" name="recommend_homepage"
						value="{$disp.recommend.homepage}" />
				</form>

				<script type="text/javascript"><!--
{literal}
function go_GF1010(){
    document.form.cmd.value     = "NEW_ENTRY";
    document.form.action        = "./GF1010LG.php";
    document.form.submit();
}
function corp_info_2410(id){
    document.form.action        = "./GF2310LG.php?comID="+id;
    document.form.submit();
}
function corp_recruit_info_2410(id){
    document.form.action        = "./GF2310LG.php?comID="+id+"#recruitingInfo";
    document.form.submit();
}
function corp_exp_info_2410(id){
    document.form.action        = "./GF2310LG.php?comID="+id+"#expInfo";
    document.form.submit();
}

function consul_2410(id){
    
    document.form.action            = "./GF2310LG.php?comID="+id;
    document.form.cmd.value = "consul_2920";
    document.form.submit();
}

function corp_explan_info_2410(){
    document.form.cmd.value     = "explan_info_2410";
    document.form.submit();
}
function map_2410(id, openType){
    document.form.action = "./GF7030LG.php";
    document.form.target = '_blank';
    document.form.meet_id.value = id;
    document.form.open_type.value = openType;
    document.form.submit();
}
function entry_2410(id){
//  alert(document.form.target);
//  alert(document.form.action);
//  document.form.cmd.value     = "entry_2410";
//  document.form.open_type.value = "";
//  document.form.submit();
    document.form.action            = "./GF2510LG.php?comID="+id;
    document.form.submit();

}
function conf_2410(){
    document.form.action        = "./GF2410LG.php#explanation_info";
    document.form.cmd.value     = "conf_2410";
    document.form.submit();
}
function meet_form_2410(id){
    document.form.action            = "./GF2410LG.php";
    document.form.meet_form_id.value    = id;
    document.form.submit();
}

function jobfair_2410(id){
    document.form.action = "";
    document.form.target = "";
    //document.form.comID.value = id;
    document.form.meet_form_id.value    = id;
    document.form.submit();
}
function fair_2410(id){

    document.form.action            = "./GF3010LG.php";
    document.form.fair_id.value     = id;
    document.form.submit();
}
function bookmark_2410(){

    document.form.action            = "./GF2610LG.php";
    document.form.submit();
}
function jump_2310(url,id){//for recommend
    document.jumpform.url.value     = url;
    document.jumpform.target        = "_blank";
    document.jumpform.comID.value       = id;
    document.jumpform.submit();
}
function logo_2410(id){//for recommend
    document.logoform.action        = "./GF2310LG.php?comID="+id;
    document.logoform.comID.value       = id;
    document.logoform.path.value        = "10";
//  document.logoform.target        = "CompanyDetail";
    document.logoform.submit();
}
function logo_2310(id){
    document.form.action        = "./GF2310LG.php?comID="+id;
    document.form.comID.value       = id;
    document.form.path.value        = "10";
//  document.form.target        = "CompanyDetail";
    document.form.submit();
}


// オンロードイベント（全チェック）
window.onload = function(){
    // LOOP数はMAX10なので例外処理で抜ける。
    for(var i = 0; i < 10; i++){
        try{
            //UpdateCount(document.form['answer_value' + i].value, "cnt_comment" + i);
            UpdateCount(document.form.answer_value[i].value, "cnt_comment" + i);
        }catch(e){
            continue;
        }
    }
    
    //minsyu_2410(document.form.minsyu_flg.value);
}
/*
function minsyu_2410(id){
    if(id == '1'){
        // みん就データが仮会員データの場合
        if(is_opener()){
            // 親ウィンドウが存在する場合
            window.opener.document.form.action      = "./login.php?subwin=on";
            window.opener.focus();
            window.opener.document.form.submit();
            
        }else{
            // 親ウィンドウが存在しない場合
            document.form.target        = "_blank";
            document.form.action        = "./login.php?subwin=on";
            document.form.submit();
        }
    }
}
// 親ウィンドウ存在チェック
function is_opener() {
    var ua = navigator.userAgent
    if( !!window.opener )
        if( ua.indexOf('MSIE 4')!=-1 && ua.indexOf('Win')!=-1 ) 
            return !window.opener.closed
        else return typeof window.opener.document == 'object'
    else return false
}
*/
{/literal}
// -->
</script>
				<!--ここからフッター-->
				{if $disp.header_no == '1' or $disp.header_no == '2' } {include
				file="footer_wc.tpl"} {else} {include file="footer.tpl"} {/if}
				<!--ここまでフッター-->
		</div>
		<!--/main_area-->
	</div>
	<!--/container-->
</body>
</html>
