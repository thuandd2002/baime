<?php
error_reporting(E_ERROR);
defined('_VALID_NVB') or die('Direct Access to this location is not allowed.');
$tpl = new TemplatePower("skin/url_gone.tpl");
$tpl->prepare();
$id = intval($_GET['id']);
$idc = intval($_GET['idc']);
$pid = intval($_GET['pid']);
$module = new ReDirectLink;
$module->_int();
$tpl->printToScreen();

class ReDirectLink {
    private $page = "url_gone";
    private $item = "url_gone";
    private $table = "410_gone";
    private $id_item = "id";
    private $par_page = "url_gone";
    private $numberPageShow = 8;
    private $numberItemPage = 100;
    private $thumbwidth = 80;
    private $data_type = 'url_gone';
    
    public function _int() {
        global $tpl, $id, $pid;
        $pathpage = '<li><a href="?page=' . $this->par_page . '">' . $this->page . '</a> <span class="divider">></span></li>';
        $tpl->assignGlobal('pathpage', $pathpage);
        $tpl->assignGlobal("item", $this->item);
        $tpl->assignGlobal("table", $this->table);
        $tpl->assignGlobal("id_item", $this->id_item);
        $tpl->assignGlobal("par_page", $this->par_page);
        $tpl->assignGlobal("pid", $pid);

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
        }
        $this->showList();
    }
    private function showAddNew() {
        global $DBi, $tpl, $lang, $dklang, $tree, $pid, $CONFIG;
        $pid = intval($pid);
        $tpl->newBlock("AddNew");
        $tpl->assign("action", '?page=' . $this->par_page . '&code=save&pid=' . $pid);
    }
    private function showUpdate() {
        global $DBi, $tpl, $lang, $dklang, $id, $dir_image, $tree, $pid;
        $tpl->newBlock("AddNew");
        if ($_GET['p'] > 1) {
            $pa = '&p=' . $_GET['p'];
        }
        $tpl->assign("action", '?page=' . $this->par_page . '&code=update&id=' . $id . '&pid=' . $pid . $pa);
        $sql = "SELECT * FROM " . $this->table . " WHERE " . $this->id_item . " = " . $id;
        $db = $DBi->query($sql);
        if ($rs = $DBi->fetch_array($db)) {
            $tpl->assign("url_gone", $rs['url_gone']);
        }
    }
    private function showList() {
        global $DBi, $tpl, $lang, $language, $pid, $site_address, $dir_path, $dir_image, $tree, $cache_image_path;
        $tpl->newBlock("showList");
        if (intval($_GET['p']) < 1)
            $p = 1;
        else
            $p = intval($_GET['p']);
        $tpl->assign("pid", $pid);
        $tpl->assign("par_page", $this->par_page);
        $tpl->assign("action", "?page=" . $this->par_page . "&code=ordering&pid=" . $pid . "&p=" . $p);

        $sql = "SELECT " . $this->table . ".*,users.name as user_name, users.username as username FROM " . $this->table . " LEFT JOIN users ON(" . $this->table . ".id_user=users.id_users) ORDER BY " . $this->id_item . " DESC";
        $db = paging::pagingAdmin($p, "?page=" . $this->par_page . '&pid=' . $pid . $kw, $sql, $this->numberPageShow, $this->numberItemPage);
        while ($rs = $DBi->fetch_array($db['db'])) {
            $tpl->newBlock("list");
            $tpl->assign(array(
                url_gone => $rs['url_gone']
            ));
            $tpl->assign("link_edit", '?page=' . $this->par_page . '&code=showUpdate&pid=' . $rs['id_category'] . '&id=' . $rs[$this->id_item]);
            $tpl->assign("link_delete", '?page=action_ajax&code=deleteitem&id=' . $rs[$this->id_item] . '&table=' . $this->table . '&id_item=' . $this->id_item);
        }
        $tpl->assign("showList.pages", $db['pages']);
    }
	
	

    private function save() {
        global $DBi, $tpl, $lang, $dklang;
        $data = $this->getData();
        if ($data) {
            $lastid = $DBi->insertTableRow($this->table, $data);
            Message::showMessage("success", "Thêm mới thành công !");
        }
    }
    private function update($id) {
        global $DBi, $tpl, $lang, $dklang;
        $id = intval($id);
        $data = $this->getData();
        if ($data) {
            if ($DBi->updateTableRow($this->table, $data, $this->id_item, $id)) {
                Message::showMessage("success", "Sửa chữa thành công !");
            } else {
                // Message::showMessage("error", "Kết nối tới dữ liệu không an toàn, vui lòng thử lại !");
            }
        }
    }
	

	
    function getData($update = 0, $id = 0) {
        global $my, $lang;
        $id = intval($id);
        $data = array();
        $data['url_gone'] = compile_post('url_gone');
        $data['id_user'] = $my['id'];
        return $data;
    }
}
?>