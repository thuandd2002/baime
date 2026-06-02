<?php
//Develop Team: Binh Minh group
//binhminhgroup@gmail.com
//error_reporting(E_ERROR);

defined('_VALID_NVB') or die('Direct Access to this location is not allowed.');
$tpl = new TemplatePower("skin/vn_province.tpl");
$tpl->prepare();
$id = intval($_GET['id']);
$idc = intval($_GET['idc']);
$pid = intval($_GET['pid']);
$module = new Product_Material();
$module->_int();
$tpl->printToScreen();


class Product_Material extends cat_tree {
    
	private $page = "Danh mục tỉnh thành";
    private $item = "Tỉnh/TP";
    private $table = "vn_province";
    private $id_item = "provinceid";
    private $par_page = "vn_province";
    private $data_type = 'vn_province';
	
    public function _int() {
        global $tpl, $id, $pid, $imagedir, $dir_path;
        $this->get_cat_tree(0, '');
        $tpl->assignGlobal('pathpage', $pathpage);
        $tpl->assignGlobal("page_name", $this->page);
        $tpl->assignGlobal("item", $this->item);
        $tpl->assignGlobal("table", $this->table);
        $tpl->assignGlobal("id_item", $this->id_item);
        $tpl->assignGlobal("par_page", $this->par_page);
        $tpl->assignGlobal("pid", $pid);
        $tpl->assignGlobal("dir_path", $dir_path);


        $code = $_GET['code'];
        switch ($code) {
            case "showAddNew":
                $this->showAddNew();
                break;
            case "showUpdate":
                $this->showUpdate();
                break;
            case "save":
                $this->save();
                break;
            case "update":
                $this->update($id);
                break;
            case "ordering":
                $this->ordering();
                break;
            case "deletemulti":
                $this->deleteMultiItem();
                break;
        }
        $this->showList();
    }
    private function showAddNew() {
        global $DBi, $tpl, $lang, $tree, $pid, $CONFIG;
        $pid = intval($pid);
        $tpl->newBlock("AddNew");
        $tpl->assign("action", '?page=' . $this->par_page . '&code=save&pid=' . $pid);
        // list category
        $info['parentid1'] = $pid;
        $info['parentid'] .= '<select name="parentid" style="WIDTH: 300px" >';
        $info['parentid'] .= '<option value="0" >Root</option>';
        if ($tree)
            foreach ($tree as $k => $v) {
                foreach ($v as $i => $j) {
                    $selectstr = '';
                    if ($info['parentid1'] == $k)
                        $selectstr = " selected ";
                    $dtype = Category::idCatToDataType($k);
                    if ($dtype == $this->data_type) {
                        $info['parentid'] .= '<option value="' . $k . '"' . $selectstr . '>' . $j . '</option>';
                    } else {
                        $info['parentid'] .= '<option value="' . $k . '"' . $selectstr . ' disabled>' . $j . '</option>';
                    }
                }
            }
        $info['parentid'] .= '</select>';
        $tpl->assign("parentid", $info['parentid']);

        $tpl->assign("active", "checked");
    }
    private function showUpdate() {
        global $DBi, $tpl, $lang, $id, $dir_image, $tree, $pid, $cache_image_path;
        $tpl->newBlock("AddNew");
        if ($_GET['p'] > 1) {
            $pa = '&p=' . $_GET['p'];
        }
        $tpl->assign("action", '?page=' . $this->par_page . '&code=update&id=' . $id . '&pid=' . $pid . $pa);

        // list category
        $info['parentid1'] = $pid;
        $info['parentid'] .= '<select name="parentid" style="WIDTH: 300px" >';
        $info['parentid'] .= '<option value="0" >Root</option>';
        if ($tree)
            foreach ($tree as $k => $v) {
                foreach ($v as $i => $j) {
                    $selectstr = '';
                    if ($info['parentid1'] == $k)
                        $selectstr = " selected ";
                    
					$info['parentid'] .= '<option value="' . $k . '"' . $selectstr . '>' . $j . '</option>';
					
                }
            }
        $info['parentid'] .= '</select>';
        $tpl->assign("parentid", $info['parentid']);
		
        $sql = "SELECT * FROM " . $this->table . " WHERE " . $this->id_item . " = " . $id;
        $db = $DBi->query($sql);
        if ($rs = $DBi->fetch_array($db)) {
			
            $tpl->assign("name", $rs['name']);
			$tpl->assign("ma", $rs['ma']);
            $tpl->assign("type", $rs['type']);
			$tpl->assign("khu_vuc", $rs['khu_vuc']);
			$tpl->assign("thu_tu", $rs['thu_tu']);
            if ($rs['active'] == 1)
                $tpl->assign("active", "checked");
            
        }
    }
    private function showList() {
        global $DBi, $tpl, $lang, $pid, $site_address, $dir_path, $dir_image, $tree;
        $tpl->newBlock("showList");
        if (intval($_GET['p']) < 1)
            $p = 1;
        else
            $p = intval($_GET['p']);
        $tpl->assign("pid", $pid);
        $tpl->assign("par_page", $this->par_page);
        $tpl->assign("action", "?page=" . $this->par_page . "&code=ordering&pid=" . $pid . "&p=" . $p);
		
		
        $info['parentid1'] = $pid;
        $info['parentid'] .= '<select name="parentid" style="WIDTH: 300px" id="parentid" >';
        $info['parentid'] .= '<option value="0">Category</option>';
        if ($tree)
            foreach ($tree as $k => $v) {
                foreach ($v as $i => $j) {
                    $selectstr = '';
                    if ($info['parentid1'] == $k)
                        $selectstr = " selected ";
                    
					$info['parentid'] .= '<option value="' . $k . '"' . $selectstr . '>' . $j . '</option>';
					
                }
            }
        $info['parentid'] .= '</select>';
        $tpl->assign("parentid", $info['parentid']);


        if ($pid == 0) {
            $dk = " (id_category IN (SELECT id_category FROM category WHERE active = 1 $language ) OR id_category = 0) ";
        } else {
            $dk = "(" . $this->table . ".id_category=" . $pid . ")";
        }
		
        
        $sql = "SELECT * FROM " . $this->table . " WHERE  $dk ORDER BY thu_tu, " . $this->id_item . " DESC, name ASC";
        $db = $DBi->query($sql);
        while ($rs = $DBi->fetch_array($db)) {
            $tpl->newBlock("list");
            $tpl->assign(array(
                name => $rs['name'],
				ma => $rs['ma'],
				type => $rs['type'],
                thu_tu => $rs['thu_tu'],
                id => $rs[$this->id_item],
            ));
            if ($rs['active'] == 1)
                $tpl->assign("active", "checked");
			
			$tpl->assign("categoryname", Category::categoryName($rs['id_category']));
            $tpl->assign("link_edit", '?page=' . $this->par_page . '&code=showUpdate&pid=' . $rs["id_category"] . '&id=' . $rs[$this->id_item]);
            $tpl->assign("link_delete", '?page=action_ajax&code=deleteitem&id=' . $rs[$this->id_item] . '&table=' . $this->table . '&id_item=' . $this->id_item);
        }
    }
    private function save() {
        global $DBi, $tpl, $lang;
        $data = $this->getData();
        if ($data) {
            $lastid = $DBi->insertTableRow($this->table, $data);
            Message::showMessage("success", "Thêm mới thành công !");
        }
    }
    private function ordering() {
        global $DBi, $tpl, $lang;
        $thu_tu = $_POST['thu_tu'];
        if ($thu_tu) {
            foreach ($thu_tu as $tt => $val) {
                $DBi->query("UPDATE " . $this->table . " SET thu_tu=" . $val . " WHERE " . $this->id_item . "=" . $tt);
            }
            Message::showMessage("success", "Cập nhật thứ tự thành công !");
        }
    }
    private function update($id) {
        global $DBi, $tpl, $lang;
        $id = intval($id);
        $data = $this->getData();
        if ($data) {
            
            $DBi->updateTableRow($this->table, $data, $this->id_item, $id);
            
            Message::showMessage("success", "Sửa chữa thành công !");
        }
    }
	
    private function deleteMultiItem() {
        global $DBi;
        $multi = $_POST['delmulti'];
        if ($multi) {
            foreach ($multi as $mtId) {
                $sql = "SELECT * FROM " . $this->table . " WHERE " . $this->id_item . "=" . $mtId;
                $db = $DBi->query($sql);
                if ($rs = $DBi->fetch_array($db)) {
                    deleteimage($rs['image']);
                }
                $DBi->query("DELETE FROM " . $this->table . " WHERE " . $this->id_item . "=" . $mtId);
                Message::showMessage("success", "Đã xóa xong !");
            }
        }
    }
	
    function getData($update = 0, $id = 0) {
        global $my, $lang, $clsUrl;
        $id = intval($id);
        $data = array();
        $data['name'] = compile_post('name');
        $data['id_category'] = compile_post('parentid');
		$data['ma']	= compile_post('ma');
        $data['type']	= compile_post('type');
		$data['khu_vuc']	= compile_post('khu_vuc');
        $data['active'] = intval(compile_post('active'));
        $data['thu_tu'] = intval(compile_post('thu_tu'));

        return $data;
    }
}
?>