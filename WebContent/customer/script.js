/**
 * Created by 奇 on 14-5-8.
 */
$(document).ready(function(){
    var index=1;
    var $width_ul=$("#show #ani ul").width();
//    alert($width_ul);
    var $width_div=$("#show #ani").width();
//    alert($width_div);
    $("#show #title .next").click(function(){
        if(index==6){
            $("#show #ani ul").animate({"left":"0px"},"slow")
            index=1;
        }
        else{
            $("#show #ani ul").animate({"left":"-="+$width_div+"px"},"slow")
            index++;
        }
        $("span").eq((index-1)).addClass("current").siblings().removeClass("current");
    })
//向前滚动
    $("#show #title .prev").click(function(){
        if(index==1){
            $("#show #ani ul").animate({"left":"-"+($width_ul-$width_div)+"px"},"slow")
            index=6;
        }
        else{
            $("#show #ani ul").animate({"left":"+="+$width_div+"px"},"slow")
            index--;
        }
        $("span").eq((index-1)).addClass("current").siblings().removeClass("current");
    })
    /*产品展示*/
    var x = 10;
    var y = 20;
    $(".divMB .tooltip").mouseover(function(e){
        this.myTitle = this.title;
        this.title = "";
        var imgTitle = this.myTitle? "<br/>" + this.myTitle : "";
        var tooltip = "<div id='tooltip'><img src='"+ this.href +"' alt='产品预览图'/>"+imgTitle+"<\/div>"; //创建 div 元素
        $("body").append(tooltip);	//把它追加到文档中
        $("#tooltip")
            .css({
                "top": (e.pageY+y) + "px",
                "left":  (e.pageX+x)  + "px"
            }).show("fast");	  //设置x坐标和y坐标，并且显示
    }).mouseout(function(){
            this.title = this.myTitle;
            $("#tooltip").remove();	 //移除
        }).mousemove(function(e){
            $("#tooltip")
                .css({
                    "top": (e.pageY+y) + "px",
                    "left":  (e.pageX+x)  + "px"
                });
        });

    $("#navigator a:eq(0)").click(function(){
        $(".divMR .form1").removeClass("dis").siblings().addClass("dis");
        $(this).addClass("color").siblings().removeClass("color");})
    $("#navigator a:eq(1)").click(function(){
        $(".divMR .form2").removeClass("dis").siblings().addClass("dis");
        $(this).addClass("color").siblings().removeClass("color");})
    $("#navigator a:eq(2)").click(function(){
        $(".divMR .form3").removeClass("dis").siblings().addClass("dis");
        $(this).addClass("color").siblings().removeClass("color");})
})
