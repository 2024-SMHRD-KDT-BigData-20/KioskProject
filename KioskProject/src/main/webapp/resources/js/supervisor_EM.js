// 회원 등록 폼으로 이동
function go_insert_emp_form() {
    location.href = cpath + "/emp_insert_form.do";
}


// 회원 수정 폼으로 이동
function go_update_emp_form(emp_idx) {
    location.href = cpath + "/emp_update_form.do/" + emp_idx;
}


// 회원 삭제 메소드로 이동
function go_delete_emp_method(emp_idx) {            
    location.href = cpath + "/emp_delete.do/" + emp_idx;
}


// 페이지가 로드될 때 실행
$(document).ready(function() {

 	// 옵션 선택 시 폼 자동 제출
    $('#emp_order_by_date').change(function() {
        $(this).closest('form').submit();
    });
});