<?php 



defined( '_VALID_NVB' ) or die( 'Direct Access to this location is not allowed.' );
$tpl=new TemplatePower("skin/tracnghiem_ketqua.tpl");
$tpl->prepare();
	$id=intval($_GET['id']);
	$module = new tracnghiem_ketqua();
	$module->_int();
$tpl->printToScreen();
class tracnghiem_ketqua{
	public function _int(){
		global $DB, $tpl;
		if($_GET['code'] == 'view'){
			$this->viewContact();
		}
		if($_GET['code'] == 'delete'){
			$this->Delete();	
		}
		$this->listContact();
	}	
	
	private function listContact(){
		global $DBi, $tpl;
		$tpl->newBlock("showList");
		$sql = "SELECT * FROM tracnghiem_ketqua ORDER BY createdate DESC"	;
		$db = paging::pagingAdmin($_GET['p'],'?page=tracnghiem_ketqua',$sql,8,40);
		while($rs = $DBi->fetch_array($db['db']))	{
			$tpl->newBlock("list")	;
			if($rs['xem']==0){
				$tpl->assign("name",'<strong>'.$rs['name'].'</strong>');
			}else{
				$tpl->assign("name",$rs['name']);
			}
			$tpl->assign("link",'?page=tracnghiem_ketqua&code=view&id='.$rs['id']);
			$tpl->assign("linkdel","?page=tracnghiem_ketqua&code=delete&id=".$rs['id']);
		}
		$tpl->assign("showList.pages",$db['pages']);
	}
	private function viewContact(){
		global $DBi, $tpl,$id;
		$sql = "SELECT * FROM tracnghiem_ketqua WHERE id = $id";
		$db = $DBi->query($sql);
		if($rs = $DBi->fetch_array($db)){
		  	$tpl->newBlock("view")	;
			if($rs['xem']==0){
				$tpl->assign("name",'<strong>'.$rs['name'].'</strong>');
			}else{
				$tpl->assign("name",$rs['name']);
			}
			$tpl->assign("createdate",date('d/m/Y H:i', $rs['createdate']));
			$tpl->assign("content",$rs['content']);
		}
		$DBi->query("UPDATE tracnghiem_ketqua SET xem=1 WHERE id=$id");
	}
	
	private function Delete(){
		global $DBi, $tpl, $id;
		$DBi->query("DELETE FROM tracnghiem_ketqua WHERE id = $id");
	}
}
?>