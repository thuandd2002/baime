<?php

//error_reporting(E_ERROR);

defined('_VALID_NVB') or die('Direct Access to this location is not allowed.');

function filter_box() {

    global $DBi, $dir_path, $cache_image_path, $CONFIG, $logo, $lang_dir, $lang, $tpl1, $langLabel,$mobile_temp, $idc, $rs_cat,$site_address;

    $tpl1 = new TemplatePower("templates/filter_box.htm");
    $tpl1->prepare($tpl1);
	
	
    if($_SERVER['QUERY_STRING']) {
        $tpl1->assignGlobal("url_val", "?".$_SERVER['QUERY_STRING']);
    }
	
	
    $tpl1->assignGlobal("url_hidden",$site_address.'/'.$rs_cat['url']);
    $tpl1->assignGlobal("dir_path", $dir_path);
    langsite($tpl1);
    $tpl1->assignGlobal("lang", $lang);
    $tpl1->assignGlobal("lang_dir", $lang_dir);
    $tpl1->assignGlobal("idc", $idc);

    $s = $_GET['s'];
    if($s) {
        $tpl1->assignGlobal("sortby_$s", "check");
    } else {
        $tpl1->assignGlobal("sortby_moi-nhat", "check");
    }



    switch($s) {
        case "gia-cao-den-thap":
            $tpl1->assignGlobal("title_sort", "Giá cao đến thấp");
            break;
        case "gia-thap-den-cao":
            $tpl1->assignGlobal("title_sort", "Giá thấp đến cao");
            break;

        default:
            $tpl1->assignGlobal("title_sort", "Mới nhất");
            break;

    }

    //$tpl1->newBlock("filter_manu");
	
	getMaterial();
    getManufacture();
	getProductClass();
	getProductPower();
	PriceRange();

    return $tpl1->getOutputContent();
}




function getProductPower() {
    global $DBi, $cache_image_path, $tpl1, $dir_path;

    $result_str = '';

    $sql = "SELECT * FROM product_power WHERE active = 1 ORDER BY thu_tu DESC";
    $db = $DBi->query($sql);

    while ($rs = $DBi->fetch_array($db)) {

        $tpl1->newBlock("product_power_item");
        $name =  preg_replace('/\s+/', '', trim($rs['alias_name']));
        $tpl1->assign("id", $rs['id']);
        $tpl1->assign("name", $rs['name']);
		

    }
}



function getProductClass() {
    global $DBi, $cache_image_path, $tpl1, $dir_path;

    $result_str = '';

    $sql = "SELECT * FROM product_class WHERE active = 1 ORDER BY thu_tu DESC";
    $db = $DBi->query($sql);

    while ($rs = $DBi->fetch_array($db)) {

        $tpl1->newBlock("product_class_item");
        $name =  preg_replace('/\s+/', '', trim($rs['alias_name']));
        $tpl1->assign("id", $rs['id']);
        $tpl1->assign("name", $rs['name']);
		

    }
}



function getMaterial() {
    global $DBi, $cache_image_path, $tpl1, $dir_path;

    $result_str = '';

    $sql = "SELECT * FROM product_material WHERE active = 1 ORDER BY thu_tu DESC";
    $db = $DBi->query($sql);

    while ($rs = $DBi->fetch_array($db)) {

        $tpl1->newBlock("material_item");
        $name =  preg_replace('/\s+/', '', trim($rs['alias_name']));
        $tpl1->assign("id", $rs['id']);
        $tpl1->assign("name", $rs['name']);
		

    }
}




function getManufacture() {
    global $DBi, $cache_image_path, $tpl1, $dir_path;

    $result_str = '';

    $sql = "SELECT * FROM product_manufacture WHERE active = 1 ORDER BY thu_tu DESC";
    $db = $DBi->query($sql);

    while ($rs = $DBi->fetch_array($db)) {

        $tpl1->newBlock("manu_item");
        $name =  preg_replace('/\s+/', '', trim($rs['alias_name']));
        $tpl1->assign("id", $rs['id']);
        $tpl1->assign("name", $rs['name']);
		
    }
}



function PriceRange() {
	global $DBi,$tpl1;

	$result_str = '';

	$sql = "SELECT * FROM price_range WHERE active = 1 ORDER BY thu_tu DESC";
	$db = $DBi->query($sql);

	while ($rs = $DBi->fetch_array($db)) {

        $tpl1->newBlock("price_range_item");
        $name =  preg_replace('/\s+/', '', trim($rs['alias_name']));
        $tpl1->assign("id", $rs['id']);
        $tpl1->assign("name", $rs['name']);
		

    }
	
	return  $result_str;

}	



?>