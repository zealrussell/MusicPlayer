<%--
  Created by IntelliJ IDEA.
  User: zeal
  Date: 2020/9/11
  Time: 19:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<div id="search">--%>
<%--    <form action="search">--%>
<%--        <input id="search-key"  placeholder="请输入您要搜索的歌曲" name="musicname">--%>
<%--        <input id="search-sub" type="submit" value="搜索">--%>
<%--    </form>--%>
<%--</div>--%>

<div class="container">
    <!-- 大导航栏 -->
    <div class="header">
        <div class="header_one">

            <div class="header_one_name">

                <div>
                    <span>音乐播放器</span>
                </div>
                <div>
                    <a href="cmain">首页</a>
                </div>
                <div>
                    <a href="ccollect">收藏</a>
                </div>
                <div>
                    <a href="ctype">分类</a>
                </div>

                </div>

                <div class="header_one_search">
                    <form action="csearch">
                        <input type="text" placeholder="请输入要搜索的歌曲" name="musicname">
                        <button class="fa fa-search"  id="search-sub" type="submit" value="搜索"></button>
                    </form>
                </div>

            <div class="header_one_loadout">
                <a href="clogout">登出</a>
            </div>

        </div>

    </div>
</div>
