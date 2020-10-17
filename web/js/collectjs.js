// $("button[name='cbtn']").each(function () {
//     $(this).bind("click",function () {
//         var btn=$(this);
//         alert(123);
//         $.ajax({
//             type:"post",
//             url:"ccoloperation",
//             data:{act:btn.text(),musicid:btn.val()},
//             success:function (data) {
//                 if (data==="add"){
//                     btn.text("取消收藏");
//                 }else if(data==="del"){
//                     btn.text("收藏");
//                 }else{
//                     alert("操作错误！");
//                 }
//             }
//         })
//     })
// })

function fcollect(which){
    var btn =$(which);
    console.log(btn.val());
    $.ajax({
        type:"post",
        url:"ccoloperation",
        data:{act:btn.text(),musicid:btn.val()},
        success:function (data) {
            if (data==="add"){
                btn.text("取消收藏");
            }else if(data==="del"){
                btn.text("收藏");
            }else{
                alert("操作错误！");
            }
        }
    })
}