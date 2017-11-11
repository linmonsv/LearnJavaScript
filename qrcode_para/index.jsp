<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>参数下载</title>

<script type="text/javascript" src="jquery-1.8.0.js"></script>
<script type="text/javascript" src="utf.js"></script>
<script type="text/javascript" src="jquery.qrcode.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        myQRCode()
	});
    
    function myQRCode() {
        var $value1 = document.querySelector('main form [name="value1"]')
        var $value2 = document.querySelector('main form [name="value2"]')
        var $value3 = document.querySelector('main form [name="value3"]')
        var $value4 = document.querySelector('main form [name="value4"]')
        var $value5 = document.querySelector('main form [name="value5"]')
        var $value6 = document.querySelector('main form [name="value6"]')
        
        $("#qrcodeCanvas").empty();
        $("#qrcodeCanvas").qrcode({
            render : "canvas",    //设置渲染方式，有table和canvas，使用canvas方式渲染性能相对来说比较好
            text : $value1.value + "|" + $value2.value + "|" + $value3.value + "|" + $value4.value + "|" + $value5.value + "|" + $value6.value + "|",    //扫描了二维码后的内容显示,在这里也可以直接填一个网址，扫描二维码后
            width : "600",               //二维码的宽度
            height : "600",              //二维码的高度
            background : "#ffffff",       //二维码的后景色
            foreground : "#000000",        //二维码的前景色
            src: 'mine.png'             //二维码中间的图片
        });

    }
</script>

</head>
<body>
<main>
    <center>
    <h2>常用参数</h2>
    <form autocomplete="on">
        <table border="1">
            <tr>
                <th>
                    <label>平台IP</label>
                </th>
                <th>
                    <input type="text" name="value1" value="11.22.33.44" spellcheck="false" size="37" onInput="myQRCode()">
                </th>
                <th>
                    <label>端口号</label>
                </th>
                <th>
                    <input type="text" name="value2" value="666" spellcheck="false" size="37" onInput="myQRCode()">
                </th>
            </tr>
            <tr>
                <th>
                    <label>TPDU</label>
                </th>
                <th>
                    <input type="text" name="value3" value="6000303000" spellcheck="false" size="37" onInput="myQRCode()">
                </th>
                <th>
                    <label>主密钥</label>
                </th>
                <th>
                    <input type="text" name="value6" value="11223344556677881234567812345678" spellcheck="false" size="37" onInput="myQRCode()">
                </th>
            </tr>
            <tr>
                <th>
                    <label>商户号</label>
                </th>
                <th>
                    <input type="text" name="value4" value="123456789012345" spellcheck="false" size="37" onInput="myQRCode()">
                </th>
                <th>
                    <label>终端号</label>
                </th>
                <th>
                    <input type="text" name="value5" value="57235742" spellcheck="false" size="37" onInput="myQRCode()">
                </th>
            </tr>
        </table>
        
    </form>
        <br>
        <div id="qrcodeCanvas"></div>
    </center>
</main>
</body>
</html>
