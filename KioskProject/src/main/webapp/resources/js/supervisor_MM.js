// 회원 등록 폼으로 이동
function go_insert_member_form() {
    location.href = cpath + "/member_insert_form.do";
}


// 회원 수정 폼으로 이동
function go_update_member_form(cust_idx) {
    location.href = cpath + "/member_update_form.do/" + cust_idx;
}


// 회원 삭제 메소드로 이동
function go_delete_member_method(cust_idx) {            
    location.href = cpath + "/member_delete.do/" + cust_idx;
}


// 페이지가 로드될 때 실행
$(document).ready(function() {

 	// 옵션 선택 시 폼 자동 제출
    $('#member_order_by_date').change(function() {
        $(this).closest('form').submit();
    });
});