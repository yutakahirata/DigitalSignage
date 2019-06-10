% rebase('layout.tpl', title='Home Page', year=year)

<div class="jumbotron">
<div class="row">
	<div class="col-md-4">
	<div class="cleanslate w24tz-current-time w24tz-large" style="display: inline-block !important; visibility: hidden !important; min-width:300px !important; min-height:145px !important;"><p><a href="//24timezones.com/ja_time/japan_chiba_clock.php" style="text-decoration: none" class="clock24" id="tz24-1559793488-c213600-eyJob3VydHlwZSI6MTIsInNob3dkYXRlIjoiMSIsInNob3dzZWNvbmRzIjoiMSIsImNvbnRhaW5lcl9pZCI6ImNsb2NrX2Jsb2NrX2NiNWNmODhmNTA3NGNmNSIsInR5cGUiOiJkYiIsImxhbmciOiJqYSJ9" title="千葉 世界時計" target="_blank" rel="nofollow">千葉の現在の時刻</a></p><div id="clock_block_cb5cf88f5074cf5"></div></div>
	<script type="text/javascript" src="//w.24timezones.com/l.js" async></script>
	</div>
	<div class="col-md-4">
	<!-- weather widget start --><div id="m-booked-weather-bl250-22795"> <div class="booked-wzs-250-175 weather-customize" style="background-color:#707d8a;width:250px;" id="width1"> <div class="booked-wzs-250-175_in"> <div class="booked-wzs-250-175-data"> <div class="booked-wzs-250-175-left-img wrz-03"> <a target="_blank" href="https://www.booked.net/"> <img src="//s.bookcdn.com/images/letter/logo.gif" alt="booked.net" /> </a> </div> <div class="booked-wzs-250-175-right"> <div class="booked-wzs-day-deck"> <div class="booked-wzs-day-val"> <div class="booked-wzs-day-number"><span class="plus">+</span>19</div> <div class="booked-wzs-day-dergee"> <div class="booked-wzs-day-dergee-val">&deg;</div> <div class="booked-wzs-day-dergee-name">C</div> </div> </div> <div class="booked-wzs-day"> <div class="booked-wzs-day-d">H: <span class="plus">+</span>28&deg;</div> <div class="booked-wzs-day-n">L: <span class="plus">+</span>20&deg;</div> </div> </div> <div class="booked-wzs-250-175-info"> <div class="booked-wzs-250-175-city">千葉市 </div> <div class="booked-wzs-250-175-date">木曜日, 06 6月</div> <div class="booked-wzs-left"> <span class="booked-wzs-bottom-l">週間天気予報を見る</span> </div> </div> </div> </div> <a target="_blank" href="https://booked.jp/weather/chiba-19689"> <table cellpadding="0" cellspacing="0" class="booked-wzs-table-250"> <tr> <td>水</td> <td>金</td> <td>土</td> <td>日</td> <td>月</td> <td>火</td> </tr> <tr> <td class="week-day-ico"><div class="wrz-sml wrzs-01"></div></td> <td class="week-day-ico"><div class="wrz-sml wrzs-18"></div></td> <td class="week-day-ico"><div class="wrz-sml wrzs-18"></div></td> <td class="week-day-ico"><div class="wrz-sml wrzs-18"></div></td> <td class="week-day-ico"><div class="wrz-sml wrzs-03"></div></td> <td class="week-day-ico"><div class="wrz-sml wrzs-18"></div></td> </tr> <tr> <td class="week-day-val"><span class="plus">+</span>19&deg;</td> <td class="week-day-val"><span class="plus">+</span>24&deg;</td> <td class="week-day-val"><span class="plus">+</span>27&deg;</td> <td class="week-day-val"><span class="plus">+</span>22&deg;</td> <td class="week-day-val"><span class="plus">+</span>24&deg;</td> <td class="week-day-val"><span class="plus">+</span>25&deg;</td> </tr> <tr> <td class="week-day-val"><span class="plus">+</span>19&deg;</td> <td class="week-day-val"><span class="plus">+</span>21&deg;</td> <td class="week-day-val"><span class="plus">+</span>21&deg;</td> <td class="week-day-val"><span class="plus">+</span>21&deg;</td> <td class="week-day-val"><span class="plus">+</span>21&deg;</td> <td class="week-day-val"><span class="plus">+</span>21&deg;</td> </tr> </table> </a> </div></div> </div><script type="text/javascript"> var css_file=document.createElement("link"); css_file.setAttribute("rel","stylesheet"); css_file.setAttribute("type","text/css"); css_file.setAttribute("href",'https://s.bookcdn.com/css/w/booked-wzs-widget-275.css?v=0.0.1'); document.getElementsByTagName("head")[0].appendChild(css_file); function setWidgetData(data) { if(typeof(data) != 'undefined' && data.results.length > 0) { for(var i = 0; i < data.results.length; ++i) { var objMainBlock = document.getElementById('m-booked-weather-bl250-22795'); if(objMainBlock !== null) { var copyBlock = document.getElementById('m-bookew-weather-copy-'+data.results[i].widget_type); objMainBlock.innerHTML = data.results[i].html_code; if(copyBlock !== null) objMainBlock.appendChild(copyBlock); } } } else { alert('data=undefined||data.results is empty'); } } </script> <script type="text/javascript" charset="UTF-8" src="https://widgets.booked.net/weather/info?action=get_weather_info&ver=6&cityID=19689&type=3&scode=124&ltid=3458&domid=587&anc_id=64726&cmetric=1&wlangID=16&color=707d8a&wwidth=250&header_color=ffffff&text_color=333333&link_color=08488D&border_form=1&footer_color=ffffff&footer_text_color=333333&transparent=0"></script><!-- weather widget end --></div>
	</div>
	<div class="col-md-4">
	</div>
</div>
<div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
     <ol class="carousel-indicators">
		%for i,x in enumerate(pict):
        %it="class='active'" if i==0 else ""
        <li data-target="#myCarousel" data-slide-to="{{i}} {{it}}"></li>
        %end
	 </ol>
    <div class="carousel-inner">
        %for i,x in enumerate(pict):
        %it="active" if i==0 else ""
        <div class="item {{it}}">
            <img src="/static/cont/{{x}}" alt="{{x}}" style="width:100%;">
        </div>
        %end
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
