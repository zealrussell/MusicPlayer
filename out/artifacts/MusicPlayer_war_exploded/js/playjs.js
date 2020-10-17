
//点击播放
function fplay(mpos) {
    pos = mpos;
    au.src = "wav/" + listt[pos].url;
    audio.load();
    $("#fmusic").click();
    $("#fname").text(listt[pos].name);
}
//播放暂停
// $("#fmusic").click(function (){
//     if(!au.paused){
//         au.pause();
//     }else{
//         au.play();
//     }
// });

//上一曲
$("#fpre").click(function () {
    if(pos==0){
        pos=listt.length-1;
    }else pos--;
    au.src="wav/"+listt[pos].url;
    au.load();
    $("#fmusic").click();
    $("#fname").text(listt[pos].name);
});

//下一曲
$("#fnext").click(function () {
    if(pos==listt.length-1){
        pos=0;
    }else pos++;
    au.src="wav/"+listt[pos].url;
    au.load();
    $("#fmusic").click();
    $("#fname").text(listt[pos].name);
});

//新加的
$(function(){
    var audio = $('#audio').get(0);
    //播放暂停控制
    $('#fmusic').click(function x(){

        //监听音频播放时间并更新进度条
        audio.addEventListener('timeupdate',updateProgress,false);
        //监听播放完成事件
        audio.addEventListener('ended',audioEnded,false);

        //改变暂停/播放icon
        if(audio.paused){
            audio.play();
            $('#fmusic').removeClass('icon-zanting').addClass('icon-bofang');
        } else{
            audio.pause();
            $('#fmusic').removeClass('icon-bofang').addClass('icon-zanting');
        }
    })

    //读取视频长度,设置页面时长显示-loadedmetadata:指定视频/音频（audio/video）的元数据加载后触发
    $('#audio').on("loadedmetadata",function () {
        $('.total_time').text(transTime(this.duration));
    });

    var pgsWidth = $('.pgs img').width()*1.0; //0.907是 进度条这个div和整个进度条图片宽度的比例
    //点击进度条跳到指定点播放
    $('.pgs img').click(function (e) {

        var rate = (e.offsetX - ($(this).width()-pgsWidth)/2)/pgsWidth;
        audio.currentTime = audio.duration * rate;
        updateProgress();
    });

})
//转换音频时长显示
function transTime(time) {
    var duration = parseInt(time);
    var minute = parseInt(duration/60);
    var sec = duration%60+'';
    var isM0 = ':';
    if(minute == 0){
        minute = '00';
    }else if(minute < 10 ){
        minute = '0'+minute;
    }
    if(sec.length == 1){
        sec = '0'+sec;
    }
    return minute+isM0+sec
}

//更新进度条
function updateProgress() {
    var audio =document.getElementsByTagName('audio')[0];
    var value = Math.round((Math.floor(audio.currentTime) / Math.floor(audio.duration)) * 100, 0);
    $('.pgs-play').css('width', value * 1.000 + '%');
    $('.current_time').html(transTime(audio.currentTime));
}
//播放完成
function audioEnded() {
    var audio =document.getElementsByTagName('audio')[0];
    audio.currentTime=0;
    audio.pause();
    $('.play-pause>span').removeClass('icon-pause').addClass('icon-play');
}