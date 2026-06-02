<?php

defined('_VALID_NVB') or die('Direct Access to this location is not allowed.');
$id = intval($_GET['id']);
$idc = intval($_GET['idc']);

$tpl = new TemplatePower($CONFIG['template_dir'] . "/tracnghiem.htm");

    
$tpl->prepare();
$tpl->assignGlobal("dir_path", $dir_path);
$tpl->assignGlobal("site_address", $site_address);


langsite();
$tpl->assignGlobal("pathpage", '<div class="crumb"><div class="grid"><a href="/' . $lang_dir . '"><i class="fa fa-home" aria-hidden="true"></i> Trang chủ </a> <i class="fa fa-angle-right"></i> ' . Get_Main_Cat_Name_path($idc) . '</div></div>');

$tpl->assignGlobal("slideshow", slidechild());


$tpl->assignGlobal("catid", $rs_cat['id_category']);

$tpl->assignGlobal("catname", $rs_cat['name']);
$tpl->assignGlobal("titlehome", $rs_cat['titlehome']);
$tpl->assignGlobal("catlink", $dir_path . '/' . $rs_cat['url']);
$tpl->assignGlobal("catcontent", '<div >' . $rs_cat['content'] . '</div>');
$tpl->assignGlobal("catintro", '<div >' . $rs_cat['intro'] . '</div>');    


$tpl->newBlock("newsCat");
newsCatList();


$tpl->printToScreen();

function newsCatList() {
    global $DBi, $tpl, $cache_image_path,  $dir_path, $idc, $SETTING, $rs_cat;
	
	
	
		$sql = "SELECT * FROM daily WHERE active=1 ORDER By thu_tu DESC, name ASC";
		
		$db_dl = $DBi->query($sql);
		while($rs_dl = $DBi->fetch_array($db_dl)){
			$tpl->newBlock("dailyItem");	
			$tpl->assign('name',$rs_dl['name']);
			$tpl->assign('address',$rs_dl['address']);
			$tpl->assign('phone',$rs_dl['phone']);
		}
	
    
		$sql = "SELECT * FROM tracnghiem WHERE active=1 AND (id_category IN (".Category::getParentId($idc).") OR groupcat LIKE '%:".$idc.":%') ORDER BY thu_tu";
		
		$db = $DBi->query($sql);
		
		while($rs = $DBi->fetch_array( $db ) ){
		  	
			$tpl->newBlock("news_list");
            
            
			
            if ($rs['image'])
                $tpl->assign("image", '<img  src="' . $cache_image_path . cropimage(400, 300, $dir_path . '/' . $rs['image'], false) . '" alt="' . $rs['name'] . '" class="image-news" width="200"/>');

            $tpl->assign(array(
                name => $rs['name'],
                intro => $rs['intro']
            ));

            $dapan_arr = json_decode($rs['content']);
            foreach ($dapan_arr as $key => $value) {
                $tpl->newBlock("dapan");
                $tpl->assign("dapan", $value->dapan);
                $tpl->assign("motadapan", $value->motadapan);
                $tpl->assign("diem", intval($value->diem) );
				$tpl->assign("id_tracnghiem", $rs['id_tracnghiem'] );
            }

			
		}
		

}





?>