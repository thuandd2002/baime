<?php
defined('_VALID_NVB') or die('Direct Access to this location is not allowed.');


if ($_POST['code'] == 'save') {
    //if ($_SESSION['imagesercurity'] == strtolower(compile_post('sercurity'))) {
		
	if (1==1) {
		
        $a = array();
		
        $a['fullname'] = compile_post('fullname');
        $a['email'] = compile_post('email');
        
		$a['address'] = compile_post('address');
		
        $a['phone'] = compile_post('phone');
		
		
        $a['coso'] = compile_post('coso');
		$a['ykiengopy'] = compile_post('ykiengopy');
        $a['tieuchiluachon'] = compile_post('tieuchiluachon');
		
        $a['createdate'] = time() + $CONFIG['time_offset'];;
        
        $formTitle = compile_post('formTitle');
		
		$catid = intval(compile_post('catid'));
		
		
		$title_contact = "PHIẾU KHẢO SÁT";
		
        
		$sql = "SELECT * FROM tracnghiem WHERE active=1 AND id_category = $catid ORDER BY thu_tu ";
		$db = $DBi->query($sql);
		while($rs = $DBi->fetch_array( $db ) ){
		  	
			$cauhoi = $rs['name'] . ": " . $rs['intro'];
			
			$id_tracnghiem = intval($rs['id_tracnghiem']);
			
			$traloi = compile_post('dapan_'.$id_tracnghiem);
			
			$pro_message .= '<tr>
				   <td height="30" align="left" style="width:200px;" valign="middle">'. $cauhoi .'</td>
				   <td height="30" align="left" valign="middle"><strong>' . $traloi . '</strong></td>
			</tr>';				

			
		}
		
        
        $message = '
<table width="100%" border="1" cellspacing="0" cellpadding="0">
    <tr>
               <td height="30" colspan="2" align="left" valign="middle"><strong> '.  $formTitle  .' </strong></td>
	</tr>
	
	<tr>
               <td height="30" colspan="2" align="left" valign="middle"><strong> Cơ sở góp ý:  '. mb_strtoupper( $a['coso'] ) .' </strong></td>
	</tr>
	  
	  '. $pro_message  .'

	  
	<tr>
               <td height="30" colspan="2" align="left" valign="middle"><strong>Nội dung góp ý:</strong>  '. $a['ykiengopy'] .' </td>
	</tr>	  
	
	<tr>
               <td height="30" colspan="2" align="left" valign="middle"><strong>Tiêu chí lựa chọn: </strong> '. $a['tieuchiluachon'] .' </td>
	</tr>	

	  
	  <tr>
          <td height="30" align="left" style="width:650px;"  valign="middle">Ghi chú:</td>
          <td height="30" align="left" valign="middle"><strong>' . $a['phone'] . '</strong></td>
      </tr>
        
      
</table>';

        $c = array();
        $c['name'] = $title_contact ;
        $c['content'] = $message;
		
        //$c['email'] = $a['email'];
        $c['createdate'] = $a['createdate'];
		
		$lastid = $DBi->insertTableRow('tracnghiem_ketqua',$c);

        try {
			echo "1";
			
        } catch (exception $e) {
            
        }

		
    } else {
        echo "-1";
    }
} 

?>