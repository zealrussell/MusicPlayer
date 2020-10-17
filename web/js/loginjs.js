
//重载验证码
function reloadCheckImg()
{
    $("img").attr("src","img.jsp?t="+(new Date().getTime()));
}

$("#lbtn").click(function(){
    $.ajax({
        type:"post",
        url:"clogin",
        data:$('#lform').serialize(),
        success:function (data){
            if (data=="codeerror") alert("验证码错误！");
            else if(data=="success") window.location.href="cmain";
            else alert("用户名或密码错误！");
        }
    })
});


// $(document).ready(function()
// {
//     $("checkcodeId").blur(function()
//     {
//         var $checkcode = $("#checkcodeId").val();
//         $.post(
//             "LoginServlet",
//             "checcode="+$checkcode,
//             function(result)
//             {
//                 var result = $("<img src = '"+result+"' height='15' width='15px' />");
//             });
//     });
// });
