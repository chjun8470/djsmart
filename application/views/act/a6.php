<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<link href="<?php echo base_url('_static/css/jquery.datetimepicker.min.css')?>" rel="stylesheet">
<script src="<?php echo base_url('_static/js/jquery.datetimepicker.full.min.js')?>"></script>

<div class="bc_header">
	<form id="items_formupdate">

		<label for="sdate">수주일자</label>
		<input type="text" name="sdate" class="sdate calendar" value="<?php echo (!empty($str['sdate']) && $str['sdate'] != "")?$str['sdate']:"";?>" size="10" /> ~ 
		
		<input type="text" name="edate" class="edate calendar" value="<?php echo (!empty($str['edate']) && $str['edate'] != "")?$str['edate']:"";?>" size="10" />

		<label for="v1">시리즈</label>
		<select name="v1">
			<option value="">::선택::</option>
		<?php
		foreach($SERIES as $row){
			$selected = (!empty($str['v1']) && $row->IDX == $str['v1'])?"selected":"";
		?>
			<option value="<?php echo $row->IDX;?>" <?php echo $selected;?>><?php echo $row->SERIES_NM;?></option>
		<?php
		}
		?>
		</select>

		<label for="v3">품목</label>
		<input type="text" name="v3" id="v3" value="<?php echo $str['v3']?>">
				
		<button class="search_submit"><i class="material-icons">search</i></button>
	</form>
</div>


<div class="bc_cont">
	<div class="cont_header"><?php echo $title;?></div>
	<div class="cont_body">
		<div class="tbl-content">
			<table cellpadding="0" cellspacing="0" border="0" width="100%">
				<thead>
					<tr>
						<th>No</th>
						<th>수주일자</th>
						<th>품명</th>
						<th>수주수량</th>
						<th>제작수량</th>
						<th>잉여재고</th>
						<th>색상구분</th>
						<th>거래처</th>
						<th>제작완료</th>
						<th>출고여부</th>
						<th>출고일</th>
					</tr>
				</thead>
				<tbody>
				<?php
				if(!empty($List)){
				foreach($List as $i=>$row){ 
					$no = $i+1;
					$sumqty = $row->QT2+$row->QT3+$row->QT4;
					$yn = ($row->END_YN <> "Y")?"N":"Y";
					$mQty = (($row->QT1-$row->QTY) > 0)?$row->QT1-$row->QTY:"0";//잉여재고
				?>
				<tr>
					<td class="cen"><?php echo $no;?></td>
					<td class="cen"><?php echo $row->ACT_DATE;?></td>
					<td><strong><?php echo $row->ITEM_NM; ?></strong></td>
					<td class="right"><?php echo $row->QTY; ?></td>
					<td class="right"><?php echo number_format($row->QT1); ?></td>
					<td class="right"><?php echo $mQty; ?></td>
					<td class="cen"><?php echo $row->COLOR; ?></td>
					<td class="cen"><?php echo $row->BIZ_NAME; ?></td>
					<td class="cen"><?php echo $row->CG_DATE; ?></td>
					<td class="cen"><?php echo $yn; ?></td>
					<td class="cen"><?php echo $row->CG_DATE; ?></td>
				</tr>
						

				<?php
				}
				}else{
				
				?>

					<tr>
						<td colspan="15" class="list_none">실적정보가 없습니다.</td>
					</tr>

				<?php
				}	
				?>
				</tbody>
			</table>
		</div>
		
		<div class="pagination">
			<?php echo $this->data['pagenation'];?>
			<?
			if($this->data['cnt'] > 20){
			?>
			<div class="limitset">
				<select name="per_page">
					<option value="20" <?php echo ($perpage == 20)?"selected":"";?>>20</option>
					<option value="50" <?php echo ($perpage == 50)?"selected":"";?>>50</option>
					<option value="80" <?php echo ($perpage == 80)?"selected":"";?>>80</option>
					<option value="100" <?php echo ($perpage == 100)?"selected":"";?>>100</option>
				</select>
			</div>
			<?php
			}	
			?>
		</div>
		
	</div>
</div>



<div id="pop_container">
	
	<div id="info_content" class="info_content" style="height:auto;">
		
		<div class="ajaxContent"></div>
		
	</div>

</div>



<script type="text/javascript">
<!--



//-->
</script>