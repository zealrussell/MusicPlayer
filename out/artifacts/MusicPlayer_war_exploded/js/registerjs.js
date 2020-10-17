$("#rbtn").click(function(){
    $.ajax({
        type:"post",
        url:"cregister",
        data:$('#rform').serialize(),
        success:function (data){
            if (data=="error") alert("用户名已被使用！");
            else if(data=="success") window.location.href="login.jsp";
        }
    })
});