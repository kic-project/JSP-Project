<!DOCTYPE html>
<style type="text/css">
table.calculation1{
margin: auto;
clear:both;
border: solid 1px #e0e0eb;
border-collapse: collapse;
background-color:#f5f5f0;
width: 70%;
font-size: 10pt;
}

table.calculation1 th {
border: solid 1px #e0e0eb;
padding: 10px 0;
text-align: center;
font-size: 10pt;
}

table.calculation1 td{
border: solid 1px #e0e0eb;
text-align: center;
font-size: 10pt;
}

table.calculation2 {
margin: auto;
border: solid 1px #e0e0eb;
border-collapse: collapse;
background-color: #f5f5f0;
width: 70%;
font-size: 10pt;
}

table.calculation2 th{
border: solid 1px #e0e0eb;
text-align: center
}

table.calculation2 td {
border: solid 1px #e0e0eb;
text-align: center;
}

table.calculation3{
margin: auto;
clear:both;
border: solid 1px #e0e0eb;
border-collapse: collapse;
background-color:#f5f5f0;
width: 70%;
font-size: 18pt;
color: red;
}
.price {
font-size: 20pt;
font-weight: bold;
}

.btn {
border: none;
color: white;
padding: 5px 10px;
font-size: 13px;
cursor: pointer;
border-radius: 5px;
}

.default {background-color: #fff; border: solid 1px gray; color: black;}
.default :hover {background: #ddd;}
.backBtn {background: #fff; border: solid 1px gray;}

/* HTML 占쎌뒄占쎈꺖 疫꿸퀡�궚 CSS �룯�뜃由곤옙�넅 */
html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font: inherit;
    vertical-align: baseline;
}

/* 占쎌뵠占쎌읈 �뇡�슢�뵬占쎌뒭占쏙옙占쎈퓠 占쏙옙占쎈립 HTML5 占쎈탵占쎈뮞占쎈탣占쎌쟿占쎌뵠 占쎈열占쎈막 占쎌삺占쎄퐬占쎌젟 */
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
    display: block;
}
body {
    line-height: 1;
}
ol, ul {
    list-style: none;
}
blockquote, q {
    quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
    content: '';
    content: none;
}
table {
    border-collapse: collapse;
    border-spacing: 0;
}

/*************************************************/
/*************************************************/

.bunch_info .bunch_item .fn_valign img, .option_list_wrap .img_type .fn_valign img, .prd_detail_cont .prd_img_wrap .prd_img img, .prd_detail_cont .prd_img_wrap .video_type .prd_img .player_control img, .prd_option_warp .ima_area img, .prd_other_wrap .other_item .fn_valign img, .prd_swipe .prd_thumb img {
    height: auto;
    max-width: 100%;
    max-height: 100%;
    vertical-align: middle;
}

img {
    border: 0;
}

/* body, button, input, select, table, textarea {
    font-family: '占쎄돌占쎈땸獄쏅뗀�뀲�⑥쥓逾�','Nanum Barun Gothic','占쎄돌占쎈땸獄쏅뗀�뀲�⑥쥓逾밢TF',NanumBarunGothicOTF,'Malgun Gothic',Arial,sans-serif;
    font-size: 12px;
    line-height: 1.5;
} */

li,ol,ul{
    list-style: none;
}

ul{
    display: block;
}

li {
    display: list-item;
    text-align: -webkit-match-parent;
}

#wrap{
    min-width: 1240px;
}

#container1 {
    position: relative;
    width: 1180px;
    min-height: 802px;
    margin: 0 auto;
    padding-bottom: 80px;
    zoom: 1;
}

.img, li {
    vertical-align: top;
}

#content {
    width: 980px;
    margin: 0 auto;
}



.u_breadcrumbs_wrap li:first-child {
    padding-left: 0;
    margin-left: 0;
}

.u_breadcrumbs_wrap li {
    position: relative;
    float: left;
    padding-right: 14px;
    margin-right: 10px;
    font-size: 14px;
    line-height: 17px;
    color: #767676;
}

.u_breadcrumbs_wrap a {
    color: #767676;
}

.u_breadcrumbs_wrap li .ico_arr {
    position: absolute;
    top: 2px;
    right: 0;
    width: 6px;
    height: 11px;
    background-position: -42px -86px;
    content: '';
    overflow: hidden;
    display: inline-block;
    background-repeat: no-repeat;
    background-image: url(../img/common/cjmall/p/sp_bul.png);
}

.prd_wrap{}

.prd_detail_cont {
    min-height: 570px;
    padding: 20px 0 60px;
}

.prd_detail_cont .prd_img_wrap {
    float: left;
    width: 470px;
    margin-right: 40px;
    
}

.prd_detail_cont .prd_img_wrap .prd_detail {
    text-align: center;
}

.prd_detail_cont .prd_img_wrap .video_type .prd_img {
    position: relative;
    background-color: #000;
}

.prd_detail_cont .prd_img_wrap .prd_img {
    width: 470px;
    height: 470px;
}

.prd_detail_cont .prd_img_wrap .video_type .prd_img .player_control{
    overflow: hidden;
    text-align: center;
}

/**/
.prd_detail_cont .prd_info_wrap {
    float: left;
    width: 470px;
    min-height: 470px;
    position: relative;
}

.prd_appeal {
    position: relative;
    height: 30px;
    padding: 11px 0 9px;
    margin-bottom: 19px;
    font-size: 15px;
    line-height: 30px;
    color: #767676;
    border-top: 1px solid #cecece;
    border-bottom: 1px solid #efefef;
}

.prd_appeal .txt_live {
    color: #4d4d4d;
}

.prd_appeal .ico_tvsp {
    background-position: 0 -22px;
}

.prd_appeal .ico {
    width: 75px;
    height: 20px;
    margin-right: 6px;
    line-height: 999px;
    vertical-align: middle;
    overflow: hidden;
    display: inline-block;
    background-repeat: no-repeat;
    background-image: url(../img/common/cjmall/p/sp_brand.gif);
}

strong {
    font-weight: bold;
}

.prd_appeal .appeal_rgt {
    position: absolute;
    top: 10px;
    right: 0;
}

.prd_appeal .btn_tv_notice {
    display: block;
    width: 121px;
    height: 29px;
    font-size: 14px;
    line-height: 31px;
    color: #d73535;
    border: 1px solid #a6a6a6;
    text-align: center;
    -webkit-border-top-left-radius: 2px;
    -webkit-border-top-right-radius: 2px;
    -webkit-border-bottom-left-radius: 2px;
    -webkit-border-bottom-right-radius: 2px;
    border-top-left-radius: 2px;
    border-top-right-radius: 2px;
    border-bottom-left-radius: 2px;
    border-bottom-right-radius: 2px;
}

a {
    text-decoration: none;
}

/*占쎌젫占쎈�뱄옙�젟癰귨옙/揶쏉옙野껓옙 warp*/

.prd_detail_cont .prd_info_wrap .prd_content_wrap {
    min-height: 342px;
}

.prd_info {
    position: relative;
    z-index: 2;
}

/*占쎌젫占쎈�뱄쭗占�*/
.prd_info .prd_tit {
    margin: -3px 0 0;
    font-size: 25px;
    line-height: 26px;
    color: #4d4d4d;
    font-weight: 400;
}

/*揶쏉옙野껓옙 area*/
.prd_info .price_area {
    margin: 28px 0 35px;
    padding-bottom: 5px;
    font-size: 0;
    line-height: 0;
}

.prd_info .price_txt {
    display: inline-block;
    font-size: 22px;
    line-height: 48px;
    vertical-align: middle;
}

/*揶쏉옙野꺿뫗�젟癰귨옙 占쎈�볩옙�뮞占쎈뱜*/
.prd_info .price_txt .ff_price {
    font-size: 44px;
    font-weight: 400;
    vertical-align: -3px;
}

/*占쎌굺占쎄문癰귣떯由� 甕곌쑵�뱣 wrap*/
.tooltip_wrap {
    position: relative;
    display: inline-block;
    height: 44px;
    vertical-align: top;
    zoom: 1;
}

.prd_info .open_benefit {
    border: 1px solid #767676;
    width: 67px;
    height: 26px;
    margin: 13px 0 0 10px;
    font-size: 13px;
    color: #767676;
}

.u_btn {
    display: inline-block;
    overflow: hidden;
    /* width: 100%;
    height: 43px;
    border: 1px solid #d9d9d9; */
    background: #fff;
    text-align: center;
    /* font-size: 18px; */
    cursor: pointer;
    /* -webkit-box-sizing: border-box; */
    box-sizing: border-box;
    /* -webkit-border-top-left-radius: 2px;
    -webkit-border-top-right-radius: 2px;
    -webkit-border-bottom-left-radius: 2px;
    -webkit-border-bottom-right-radius: 2px; */
    border-top-left-radius: 2px;
    border-top-right-radius: 2px;
    border-bottom-left-radius: 2px;
    border-bottom-right-radius: 2px;
}

/*筌ｏ옙�뤃�뗫막占쎌뵥 (燁삳�諭� 占쎈막占쎌뵥占쎌굺占쎄문 占쎈툧占쎄땀)*/
#_cardPromotion{}

.card_discount_wrap {
    position: relative;
    padding-bottom: 10px;
}

.card_discount_wrap .sale_info li .ff_price{
    font-size:16px;
    color:#4d4d4d;
    font-weight:700
}

.discount_sum {
    width:100%;
    padding:5px 0 8px;
    border-bottom:1px solid #f5f5f5
}

._cardPromLink {
    line-height: 1.5;
    font-size: 15px;
    list-style: none;
    color: inherit;
    text-decoration: none;
}
/*�뤃�됤꼻占쎈땾占쎌쎗 甕곌쑵�뱣*/

._item_name{
    position:absolute;
    width: 450px;
    /* background-color: red; */
}

._item_name input[type="text"]{
    display: inline-block;
    /* position: absolute;
    float: left; */
    margin-left: 19px;
    width: 60px;
    height: 40px;
    font-size: 16px;
    line-height: 29px;
    background-color: #fff;
    border: 0;
    /* background-color: #f6f6f6; */
    border: 1px solid #d7d7d7;
    text-align: center;
    vertical-align: top;
}

._item_name input[type="texthidden"]{
    position: relative;
    float:right;
    /* display: inline-block; */
    width: 90px;
    height: 40px;
    font-size: 16px;
    line-height: 29px;
    background-color: #fff;
    border: 0;
    /* background-color: #f6f6f6; */
    border: 1px solid #d7d7d7;
    text-align: center;
    vertical-align: top;
}

._item_name .buttonblock{
    position:absolute;
    /* background-color: red; */
    height: 60px;
}

._item_name input[type="pbutton"]{
    /* position: relative;
    float: left; */
    display: block;
    text-align: center;
    font-size: 14px;
    right: 0;
    width: 20px;
    height: 20px;
    background-color: #f6f6f6;
    border: 1px solid #d7d7d7;
}

._item_name input[type="mbutton"]{
    /* position: relative;
    float: left; */
    display: block;
    text-align: center;
    font-size: 14px;
    right: 0;
    width: 20px;
    height: 20px;
    background-color: #f6f6f6;
    border: 1px solid #d7d7d7;
}

/*
.item_name{
    margin-bottom: 8px;
    padding-right: 44px;
}

.selected_lst li .item_name strong {
    font-size: 14px;
    line-height: 18px;
    color: #4d4d4d;
    font-weight: 400;
    word-break: break-all;
}

.opt_area {
    position: relative;
    min-height: 35px;
    padding-left: 110px;
    margin-bottom: 2px;
    overflow: hidden;
}

.item_number {
    position: absolute;
    left: 0;
    bottom: 0;
    overflow: hidden;
}

.item_number .minus{
    position: relative;
    display: block;
    float: left;
    width: 28px;
    height: 28px;
    line-height: 999px;
    background-color: #f6f6f6;
    border: 1px solid #d7d7d7;
}

.item_number .minus .sp_ico {
    background-position: -27px -37px;
}

.selected_lst .item_number .minus .sp_ico{
    position: absolute;
    top: 50%;
    right: 50%;
    width: 9px;
    height: 9px;
    margin: -4px -5px 0 0;
    overflow: hidden;
    display: inline-block;
    background-repeat: no-repeat;
    background-image: url(../img/common/cjmall/p/sp_bul.png);
}

.item_number .plus {
    position: relative;
    display: block;
    float: left;
    width: 28px;
    height: 28px;
    line-height: 999px;
    background-color: #f6f6f6;
    border: 1px solid #d7d7d7;
}

.item_number .order_num {
    display: block;
    float: left;
    width: 40px;
    height: 28px;
    font-size: 16px;
    line-height: 29px;
    background-color: #fff;
    border: 0;
    border-top: 1px solid #e5e5e5;
    border-bottom: 1px solid #e5e5e5;
    text-align: center;
    vertical-align: top;
}

.item_number .plus .sp_ico {
    background-position: -62px -10px;
}

.item_number .plus .sp_ico {
    position: absolute;
    top: 50%;
    right: 50%;
    width: 9px;
    height: 9px;
    margin: -4px -5px 0 0;
    overflow: hidden;
    display: inline-block;
    background-repeat: no-repeat;
    background-image: url(../img/common/cjmall/p/sp_bul.png);
}
*/


/*揶쏉옙野껓옙*/
.item_price {
    float: right;
    padding-top: 2px;
    text-align: right;
    font-size: 14px;
}

.item_price .ff_price {
    font-size: 19px;
    font-weight: 400;
    vertical-align: -2px;
}



/*占쎌삢獄쏅떽�럡占쎈빍/雅뚯눖揆占쎈릭疫뀐옙 甕곌쑵�뱣*/
.buy_wrap {
    height: 60px;
    font-size: 0;
    bottom:0;
    position: absolute;
}

.buy_wrap .btn_cover {
    position: relative;
    display: inline-block;
    z-index: 1;
    zoom: 1;
}


.buy_wrap .u_btn {
    float: left;
    position: relative;
    /* width: 195px; */
    height: 58px;
    font-size: 20px;
    line-height: 60px;
    font-weight: 400;
    z-index: 1;
    /* -webkit-box-sizing: content-box; */
    box-sizing: content-box;
}

.u_btn {
    display: inline-block;
    overflow: hidden;
    border: 1px solid #d9d9d9;
    background: #fff;
    text-align: center;
    cursor: pointer;
    border-top-left-radius: 2px;
    border-top-right-radius: 2px;
    border-bottom-left-radius: 2px;
    border-bottom-right-radius: 2px;
}


.buy_wrap .btn_gift .text {
    display: inline-block;
    overflow: hidden;
    background-repeat: no-repeat;
    background-image: url(../img/common/cjmall/p/sp_item.png);
    position: absolute;
    top: -16px;
    left: 50%;
    width: 58px;
    height: 20px;
    margin: 0 0 6px -29px;
    padding-top: 4px;
    font-size: 12px;
    color: #fff;
    background-position: 0 -638px;
}

/*占쎌삢獄쏅떽�럡占쎈빍*/
.buy_wrap.gift_case .btn_cart_go {
    width: 220px;
}

.buy_wrap .btn_cart_go {
    margin-right: 6px;
    border-color: #da006b;
    color: #da006b;
}

/*獄쏅뗀以덃뤃�됤꼻*/
.buy_wrap.gift_case .btn_buy_now {
    width: 220px;
}

.buy_wrap .btn_buy_now {
    background-color: #da006b;
    color: #fff;
    border-color: #da006b;
}

.BoardBoardBoard {
	min-height: 570px;
    padding: 20px 20px 60px;
    border: 1px solid #867474;
}

.InStock {
	border-top: 1px solid #d7d7d7;
	border-bottom: 1px solid #d7d7d7;
}

.InStock_text {
	font-weight: 600;
	font-size: 17px;
	padding-top: 17px;
	padding-bottom: 15px;
}
.ul_mapa{
	padding: 0;
    margin: 0;
    font-size: 17px;
}

.form_div {
	margin-top: 30px;
	width: 450px;
	/* background-color: red; */
}

.form_div .button_block {
	position: absolute;
}

.form_button {
	display: inline-block;
	/* position: relative; */
	position: absolute;
}

.form_button_area {
	/* position: absolute; */
	
}

.form_div .button_block .text_input {
	width: 50px;
	height: 40px;
	font-size: 18px;
	background-color: #fff;
	border: 0;
	border: 1px solid #d7d7d7;
	text-align: center;
}

.form_button_area .text_pbutton {
	text-align: center;
	font-size: 12px;
	right: 0;
	width: 20px;
	height: 20px;
	background-color: #f6f6f6;
	border: 1px solid #d7d7d7;
}

.form_button_area .text_mbutton {
	display: block;
	text-align: center;
	font-size: 12px;
	right: 0;
	width: 20px;
	height: 20px;
	background-color: #f6f6f6;
	border: 1px solid #d7d7d7;
}

.form_div .money_block {
	position: relative;
	float: right;
	font-size: 26px;
	
}
.form_div .money_block .text_input {
	width: 70px;
	height: 30px;
	font-size: 16px;
	background-color: #fff;
	border: 0;
	border: 1px solid #d7d7d7;
	text-align: center;
	}

.form_div .money_block .text_hidden {
	height: 40px;
	font-size: 20px;
	font-weight: bold;
	background-color: #fff;
	border: 1px solid #d7d7d7;
	text-align: center;
}

.button_P {
	display: inline;
	vertical-align: middle;
	font-size: 18px;
}
*{margin: 0; padding: 0;}
#wrap{min-width: 1180px; margin: 0 auto;}
#header{position: relative; min-width: 1180px; height:165px; border-bottom: 1px solid #c4c4c4;}
#contents{position: relative; width: 1180px; min-height: 600px; padding-bottom:40px; padding-top:0px; margin: 0 auto; overflow:hidden;}
#footer{position: relative;}

        /* HEADER ~ */
        
        .global_width{width:1180px; margin:0 auto;}
        #header .global_width{position: relative; height:165px;}
        #header .header_inner_wrap:after{
            position: absolute;
            top: 110px;
            left: 0;
            right: 0;
            width: 100%;
            height: 1px;
            background: #e6e6e6;
            content: ' ';
        }
        .header_inner h1{
            position: absolute;
            top: 10%;
            left: 8%;
        }
        #header h1 a{
            display: block;
            overflow: hidden;
            width: 196px;
            height: 68px;
        }
        #header h1 a img{
            /* width: 100%; */
            height: 100%;
        }
        .srh_wrapper{
            width:100%;
            height:100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .srh_area{
            position: relative;
            width: 40%;
            top:-2%;
            /* top:30px;
            left:440px; */
        }
        .srh_area .ui_input{
            position: relative;
            padding: 0 42px 0 24px;
            top : 15px;
        }
        .srh_area input[type="text"]{
            width: 100%;
            padding: 20px;
            padding-right: 60px;
            box-sizing: border-box;
            background: rgba(0,0,0,0.3);
            border: 2px solid #fff;
            border-radius: 10px;
            font-size: 18px;
            color: #111;
            outline: none;
        }
        .fa-search{
            /* �뵓怨뚯뫓占쎈괏 �뜝�럥�닱�뜝�럥�빆占쎈뎨占쎈맓�듆 占쎈퉲�뀎占쏙옙�쐩 �뜝�럥�빢�뜝�럩�젧 */
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            right: 50px;
            color: #fff;
            font-size: 25px;
            cursor: pointer;
        }
   
        .srh_area .srh_placeholder {
            overflow: hidden;
            position: absolute;
            left: 20px;
            right: 51px;
            top: 0;
            bottom: 0;
            font-size: 14px;
            color: #666;
        }
        .srh_area .srh_placeholder dd {
            height: 50px;
            line-height: 52px;
            font-size: 13px;
        }
        .blind, legend {
            visibility: hidden;
            overflow: hidden;
            position: absolute;
            top: 0;
            left: 0;
            width: 1px;
            height: 1px;
            font-size: 0;
            line-height: 0;
        }
        #header .promotion_banner .ctrl_direction, #quick_menu .btn_chatbot a:before, #quick_menu .btn_history .ico_bul, #quick_menu .btn_latest_prd .ico_bul, #quick_menu .btn_pc_top a, #quick_menu .lst_etc .ci, #quick_menu .paginate button span, #quick_menu .slider_container .btn_del, #quick_menu .slider_container p .flag, .btn_gnb_toggle:after, .chatbot_wrapper .chatbot_cont .btn_close_pop span, .gnb .ico, .gnb .sub_cate .lst_brand .paginate button span, .gnb .sub_cate>ul>li>a:after, .gnb>li>a:after, .lst_home .ico_new, .ly_auto_keyword .bg_dnl, .ly_auto_keyword .bg_dnr, .pop_lastest_prd .btn_area .btn_shopzzim .ico, .pop_lastest_prd .btn_close_pop span, .pop_lastest_prd .date, .pop_lastest_prd .flag_txt .flag, .pop_lastest_prd .lst_item .btn span, .srh_area .bg_rnd, .srh_area .btn_del_srhword, .srh_area .btn_srh, .tab_home .btn_more_home span, .tab_home .lst_more .ico_a11y, .util_menu li .ico{
            overflow: hidden;
            display: inline-block;
            background-repeat: no-repeat;
            background-image: url(http://image.cjmall.net/public/confirm/static/deploy/webjars/ec-markup-common/dist/common-cjmall-pc/others/755c47a1ec14e620cf93d7d9faca7ed3/img/common/cjmall/p/sp_gnb.png);
        }
        li, ol, ul {
            list-style: none;
        }
        img, li {
            vertical-align: top;
        }
        .srh_area .btn_srh {
            position: absolute;
            top: 0;
            right: 0;
            width: 42px;
            height: 50px;
            background-position: -258px -130px;
        }
        .srh_area .btn_srh button {
            display: block;
            overflow: hidden;
            width: 26px;
            height: 26px;
            margin-top: 11px;
            line-height: 999px;
        }
        button {
            border: 0;
            background: 0 0;
            cursor: pointer;
        }
        .srh_area .input_txt {
            width: 264px;
            height: 46px;
            padding-right: 50px;
            border: 0;
            font-size: 18px;
            line-height: 46px;
            color: #111;
            background-color: transparent;
        }
        fieldset, img {
            border: 0;
        }
        #header .promotion_banner {
            position: absolute;
            top: 18px;
            left: 0;
            width: 213px;
            height: 68px;
        }
        #header .promotion_banner .rolling-list {
            padding-left: 8px;
            height: 68px;
            overflow: hidden;
        }
        #header .promotion_banner ul li img {
            max-width: 213px;
        }
        img, li {
            vertical-align: top;
        }
        .tab_home {
            position: absolute;
            bottom: -1px;
            width: 100%;
            /* left: 181px; */            
            /* padding-right: 54px; */
            font-size: 15px;
        }
        .lst_home_wrap {
            overflow: hidden;
            width:980px;
            height: 55px;
            margin: 0 auto;
        }
        .lst_home {
            float: left;
            /* margin-left: 50px; */
            line-height: 55px;
        }
        .lst_home li {
            float: left;
            position: relative;
            margin-left: 20px;
            text-align: center;
        }
        .lst_home li:first-child {
            margin-left: 0;
        }
        .lst_home a {
            float: left;
            color: #111;
            text-decoration: none;
        }
        .lst_home a .m_name {
            float: left;
            height: 55px;
            padding: 0 12px;
            color: #111;
        }
        .header_inner{
            margin:0 auto;
            width:1180px;
            height:114px;
        }
        .util_menu {
            position: absolute;
            top: 34px;
            right: 7%;
            text-align: right;
        }
        .util_menu ul {
            display: inline-block;
            zoom: 1;
        }
        .util_menu li:first-child {
            margin-left: 0;
        }
        .util_menu .cart {
            width: 46px;
        }
        .util_menu li {
            float: left;
            width: 34px;
            margin-left: 30px;
            color: #767676;
            font-size: 12px;
            text-align: center;
            white-space: nowrap;
        }
        .util_menu li a {
            display: block;
            color: #767676;
            line-height: 1;
            text-decoration: none;
        }
        .util_menu .log_in .ico {
            width: 22px;
            height: 20px;
            background-position: 0 -79px;
        }
        .util_menu li .ico {
            display: block;
            margin: 0 auto 10px;
        }
        .util_menu .myzone .ico {
            width: 20px;
            height: 20px;
            background-position: -23px -79px;
        }   
        .util_menu .cart .ico {
            width: 28px;
            height: 21px;
            margin: 0 0 10px 7px;
            background-position: -44px -79px;
        }
        .util_menu .cart .ico:last-child {
            width: 28px;
            height: 21px;
            margin: 0 0 8.5px 7px;
            background-position: -44px -79px;
        }
        .util_menu ul:after {
            display: block;
            clear: both;
            content: '';
        }
        .quick_menu_float {
            position: absolute;
            left: 0;
            right: 0;
            top: 100%;
            margin-top: 30px;
            z-index: 100;
        }
        /* �뜝�럥�뿰�뼨轅명�쀯옙�뤀嶺뚯쉻�삕 HEADER */
       
        
        /*�뿤�뜑 移댄뀒怨좊━ 留덉슦�뒪 �삤踰� �슚怨�*/
        .lst_home a.on .m_name,.lst_home a:hover .m_name {
			font-weight:700;
			border-bottom:2px solid #111;
			box-sizing:border-box
		}	
        .policy_foot {
            float: left;
            width: 776px;
            padding: 35px 0 34px;
            font-size: 11px;
            font-family: "�뜝�럥利삣뜝�룞�삕",dotum;
            color: #959595;
        }
        .policy_foot .contact_info {
            margin: -5px -5px 11px -26px;
            line-height: 2;
            color: #959595;
            letter-spacing: -.5px;
        }
        .policy_foot .contact_info .txt_info:first-child {
            background: 0 0;
        }
        .policy_foot .contact_info .txt_info {
            float: left;
            padding: 0 0 0 26px;
            background:url(https://image.cjmall.net/public/confirm/static/deploy/webjars/ec-markup-common/dist/common-cjmall-pc/others/755c47a1ec14e620cf93d7d9faca7ed3/img/common/cjmall/p/bg_line.gif) no-repeat 12px 5px;
        }
        .policy_foot .contact_info {
            margin: -5px -5px 11px -26px;
            line-height: 2;
            color: #959595;
            letter-spacing: -.5px;
        }
        .policy_foot .contact_info:after {
            display: block;
            clear: both;
            content: '';
        }
        .policy_foot .list_terms_link {
            overflow: hidden;
            margin: 0 0 14px -19px;
            letter-spacing: -.5px;
            white-space: nowrap;
        }
        .policy_foot .list_terms_link li {
            float: left;
            padding-left: 19px;
            font-weight: 700;
        }
        .policy_foot .list_terms_link li .link_cont {
            color: #959595;
        }
        .list_terms_link li a:hover{
            text-decoration: underline;
        }
        
        
           
        
        /* �뜝�럩�꼨嶺뚮〕�삕 �뜝�럡�꼸占쎈쑏熬곥룇�삕 0~ 1280px  */
        @media (max-width: 1280px){
            
        }
        /* �뜝�럩�꼨嶺뚮〕�삕 �뜝�럡�꼸占쎈쑏熬곥룇�삕 0~ 1224px : �뜝�럥�몥�뜝�럥裕욃뜝�럡苡욕뜝�럡�뒅 */
        @media (max-width: 1024px){
           
        }
        /* �뜝�럩�꼨嶺뚮〕�삕 �뜝�럡�꼸占쎈쑏熬곥룇�삕 0~ : 960px : �뜝�럥嫄쀥뜝�럥諭쒙옙寃ュ뜝占�*/
        @media (max-width: 960px){
            
        }
        /* �뜝�럩�꼨嶺뚮〕�삕 �뜝�럡�꼸占쎈쑏熬곥룇�삕 0~ 768px : �뜝�룞�삕占쎈눀�겫�뼚�젶*/
        @media (max-width: 768px){
            
        }
        /* �뜝�럩�꼨嶺뚮〕�삕 �뜝�럡�꼸占쎈쑏熬곥룇�삕 0~ 576px : 嶺뚮ㅄ維��뚳옙�뜝�럩逾� */
        @media (max-width: 576px){
            
        }

       	#total_list{
    margin: 20px auto;
    width:1150px;
    }

    .control_side{
    margin-top: -20px;
    margin-right: 20px;
    float: right;
    position: relative;
    }

    #slide_list{
    margin-top: 10px;
    width: 1060px;
    height: 390px;
    margin-left:40px;
    }

    #main_list{
    width: 1150px;
    height: 100%;
    overflow: hidden;
    margin-left:0px;
    }

    .mass_list{
    /* margin-left: 0px; */
    margin: 0px 10px;
    }

    .main_list
    .mass_list li{
    height: 460px;
    }
    
    li, ol, ul{
    list-style: none;
    }

    img, li{
    vertical-align: top;
    }

    .mass_list li{
    float: left;
    position: relative;
    width: 210px;
    margin: 10px 22px 50px 15px;
    padding-bottom: 300px;
    display: list-item;
    text-align: -webkit-match-parent;
    
    }

    /* .page_wrap{
    margin-left: -2px;
    margin-top: 1500px;
    height:50px;
    border: 1px solid black;
    border-top: 1px solid #e5e5e5;
    text-align: center;
    font-size:0;
    }
    
    .page_nation {
    display:inline-block;
    }
    
    .page_nation .none {
    display:none;
    }
    
    .page_nation a {
    display:block;
    margin:0 3px;
    float:left;
    border:1px solid #e6e6e6;
    width:28px;
    height:28px;
    line-height:28px;
    text-align:center;
    background-color:#fff;
    font-size:13px;
    color:#999999;
    text-decoration:none;
    }
    
    .page_nation .arrow {
    border:1px solid #ccc;
    }
    
    .page_nation .pprev {
    background:#f8f8f8;
    margin-left:0;
    }
    
    .page_nation .pprev {
    background:#f8f8f8 url('./img/page_pprev.png') no-repeat center center;
    margin-right:7px;
    }
    
    .page_nation .prev {
    background:#f8f8f8 url('./img/page_prev.png') no-repeat center center;
    margin-right:7px;
    }
    
    .page_nation .next {
    background:#f8f8f8 url('./img/page_next.png') no-repeat center center;
    margin-left:7px;
    }
    
    .page_nation .nnext {
    background:#f8f8f8 url('./img/page_nnext.png') no-repeat center center;
    margin-right:0;
    }
    
    .page_nation a.active {
    background-color:#007BC8;
    color:#fff;
    } */
    
    @charset "UTF-8";

body, button, input, select, table, textarea {
	font-family: '나눔바른고딕', 'Nanum Barun Gothic', '나눔바른고딕OTF',
		NanumBarunGothicOTF, 'Malgun Gothic', Arial, sans-serif;
	font-size: 12px;
	line-height: 1.5;
}

#content {
	padding-bottom: 100px;
	width: 980px;
	margin: 0 auto;
}
.cart_content {
	width: 750px;
	margin: 0 auto;
}
#content .sub_title {
	padding: 49px 0 28px;
	font-size: 30px;
	line-height: 24px;
	color: #111;
	font-weight: 400;
	letter-spacing: -1px;
}
#cart_table{border-collapse:collapse;}

#cart_table .cart_table_title{
	text-align:left; margin-bottom:20px;
	height:45px; vertical-align:top;
}
#cart_table th:nth-child(1) {width: 50px;text-align:center;}
#cart_table th:nth-child(2) {width: 300px;}
#cart_table th:nth-child(3) {width: 100px;}
#cart_table th:nth-child(4) {width: 150px;}
#cart_table th:nth-child(5) {width: 100px;}
#cart_table th{font-size:22px;}

#cart_table .img_thumb{
	text-align:center;
	width: 150px;
	height: 150px;
}
#cart_table .img_thumb img {
	float: left;
	position: relative;
	width: 120px;
	height: 120px;
}
#cart_table .pName_td{width:170px;}
#cart_table .pd_name{
	vertical-align:top;
	padding-top: 10px;
	font-size: 17px;
	height:80px;
}

#cart_table .pd_remove{
	vertical-align:bottom;
	font-size: 14px;
	padding-top: 20px;
}
#cart_table .pName_td a:hover{
	text-decoration:underline;
}
#cart_table .pd_price, .opt_change, .pd_total {
    vertical-align: top;
    padding-top: 20px;
    font-size: 17px;
    min-width: 120px;
}
#cart_table .opt_change{
	position: relative;
    width: 118px;
}
#cart_table .btn_increase{
	left:0;
}

#cart_table .qty_btn{
    width: 33px;
    height: 33px;
    border: 1px solid #d9d9d9;
    background: #f6f6f6;
    text-align: center;
	position: absolute;
}

#cart_table .opt_change .input_txt {
	margin-left:33px;
	position: relative;
    width: 54px;
    height: 33px;
    border: 1px solid #d9d9d9;
    background: #fff;
    color: #1a1a1a;
    text-align: center;
    font-size: 14px;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}

td, th{
	border-bottom: 1px solid #e6e6e6;
}

.order_price {
    margin: 17px 0 0;
    padding: 16px 0;
    border-top: 1px solid #e6e6e6;
    color: #da006b;
}
.order_price_title {
	 float:left;
    width: 30%;
    margin-left: -14px;
    padding-left: 14px;
    font-size: 18px;
    font-weight: 700;
   
}
.order_price_total {
	float:right;
    margin-right: -14px;
    padding-top: 17px;
    padding-right: 14px;
    font-size: 17px;
    width: 70%;
    text-align: right;
}

.total_calc .u_tb_wrap {
	margin: 17px -17px 0;
}

.u_tb {
	display: table;
	width: 100%;
	
}

.u_td {
	display: table-cell;
	vertical-align: middle;
}
.u_tb_wrap .u_td {
    padding: 0 5px;
}
.u_tb_wrap .u_btn {
	height: 60px;
	border-color: #da006b;
	color: #da006b;
}

.u_tb_wrap .txt {
	font-size: 18px;
	font-weight: 400;
}
.u_tb_wrap .btn_all_buy {
    background: #da006b;
    color: #fff;
}
.u_btn {
    display: inline-block;
    overflow: hidden;
    width: 100%;
    height: 43px;
    border: 1px solid #d9d9d9;
    background: #fff;
    text-align: center;
    font-size: 18px;
    cursor: pointer;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    -webkit-border-top-left-radius: 2px;
    -webkit-border-top-right-radius: 2px;
    -webkit-border-bottom-left-radius: 2px;
    -webkit-border-bottom-right-radius: 2px;
    border-top-left-radius: 2px;
    border-top-right-radius: 2px;
    border-bottom-left-radius: 2px;
    border-bottom-right-radius: 2px;
}

.cmt_guide {
    margin-bottom: -2px;
    padding: 11px 0 0;
    font-size: 13px;
}
li, ol, ul {
    list-style: none;
}
.cmt_guide li {
    position: relative;
    margin-top: 8px;
    padding-left: 7px;
    color: #767676;
    line-height: 15px;
}
.cmt_guide li:after {
    position: absolute;
    left: 0;
    top: 6px;
    width: 2px;
    height: 2px;
    background: #bbb;
    content: '';
}

    /*占쎄맒占쎈�뱄옙猷� Q&A*/
@charset "UTF-8";

#tab_wrap {
	width: 100%;
	text-align: center;
	position:sticky;
	top:0;
	background: white;
	z-index:99;
}

.tab_menu {
	display: inline-block;
	width: 980px;
	height: 60px;
	border: 1px solid #e5e5e5;
	
}

.tab_menu>ul {
	list-style: none;
	width: 100%;
	height: 60px;
	padding: 0px;
	text-align: center;
}

.tab_menu>ul>li {
	width: 50%;
	height: 60px;
	float: left;
	vertical-align: middle;
	display: inline-block;
	font-size: 20px;
	line-height: 60px;
	color: #767676;
}

.tab_menu li a {
	text-decoration: none;
	display: block;
	width: 100%;
	height: 60px;
	line-height: 60px;
	color: #767676;
}
.tab_menu li a:link {
	text-decoration: none;
}

.tab_menu li a:visited {
	color: #767676;
	text-decoration: none;
}

.tab_menu li a:hover {
	color: #767676;
	text-decoration: none;
}
.tab_menu button{
	width: 100%;
	border:0;
	outline:0;
	color: #767676;
}
.tab_menu button:focus{
	border:0;
	outline:0;
}
.tab_btn.active{
	font-weight: bold;
	color: #1B2446;
	border-bottom: 2px solid #1B2446;
}

@charset "UTF-8";

body, button, input, select, table, textarea {
	font-family: '나눔바른고딕', 'Nanum Barun Gothic', '나눔바른고딕OTF',
		NanumBarunGothicOTF, 'Malgun Gothic', Arial, sans-serif;
	font-size: 12px;
	line-height: 1.5;
}

#content {
	padding-bottom: 100px;
	width: 980px;
	margin: 0 auto;
}
.cart_content {
	width: 750px;
	margin: 0 auto;
}
#content .sub_title {
	padding: 49px 0 28px;
	font-size: 30px;
	line-height: 24px;
	color: #111;
	font-weight: 400;
	letter-spacing: -1px;
}
#cart_table{border-collapse:collapse;}

#cart_table .cart_table_title{
	text-align:left; margin-bottom:20px;
	height:45px; vertical-align:top;
}
#cart_table th:nth-child(1) {width: 50px;text-align:center;}
#cart_table th:nth-child(2) {width: 300px;}
#cart_table th:nth-child(3) {width: 100px;}
#cart_table th:nth-child(4) {width: 150px;}
#cart_table th:nth-child(5) {width: 100px;}
#cart_table th{font-size:22px;}

#cart_table .img_thumb{
	text-align:center;
	width: 150px;
	height: 150px;
}
#cart_table .img_thumb img {
	float: left;
	position: relative;
	width: 120px;
	height: 120px;
}
#cart_table .pName_td{width:170px;}
#cart_table .pd_name{
	vertical-align:top;
	padding-top: 10px;
	font-size: 17px;
	height:80px;
}

#cart_table .pd_remove{
	vertical-align:bottom;
	font-size: 14px;
	padding-top: 20px;
}
#cart_table .pName_td a:hover{
	text-decoration:underline;
}
#cart_table .pd_price, .opt_change, .pd_total {
    vertical-align: top;
    padding-top: 20px;
    font-size: 17px;
    min-width: 120px;
}
#cart_table .opt_change{
	position: relative;
    width: 118px;
}
#cart_table .btn_increase{
	left:0;
}

#cart_table .qty_btn{
    width: 33px;
    height: 33px;
    border: 1px solid #d9d9d9;
    background: #f6f6f6;
    text-align: center;
	position: absolute;
}

#cart_table .opt_change .input_txt {
	margin-left:33px;
	position: relative;
    width: 54px;
    height: 33px;
    border: 1px solid #d9d9d9;
    background: #fff;
    color: #1a1a1a;
    text-align: center;
    font-size: 14px;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}

td, th{
	border-bottom: 1px solid #e6e6e6;
}

.order_price {
    margin: 17px 0 0;
    padding: 16px 0;
    border-top: 1px solid #e6e6e6;
    color: #da006b;
}
.order_price_title {
	 float:left;
    width: 30%;
    margin-left: -14px;
    padding-left: 14px;
    font-size: 18px;
    font-weight: 700;
   
}
.order_price_total {
	float:right;
    margin-right: -14px;
    padding-top: 17px;
    padding-right: 14px;
    font-size: 17px;
    width: 70%;
    text-align: right;
}

.total_calc .u_tb_wrap {
	margin: 17px -17px 0;
}

.u_tb {
	display: table;
	width: 100%;
	
}

.u_td {
	display: table-cell;
	vertical-align: middle;
}
.u_tb_wrap .u_td {
    padding: 0 5px;
}
.u_tb_wrap .u_btn {
	height: 60px;
	border-color: #da006b;
	color: #da006b;
}

.u_tb_wrap .txt {
	font-size: 18px;
	font-weight: 400;
}
.u_tb_wrap .btn_all_buy {
    background: #da006b;
    color: #fff;
}
.u_btn {
    display: inline-block;
    overflow: hidden;
    width: 100%;
    height: 43px;
    border: 1px solid #d9d9d9;
    background: #fff;
    text-align: center;
    font-size: 18px;
    cursor: pointer;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    -webkit-border-top-left-radius: 2px;
    -webkit-border-top-right-radius: 2px;
    -webkit-border-bottom-left-radius: 2px;
    -webkit-border-bottom-right-radius: 2px;
    border-top-left-radius: 2px;
    border-top-right-radius: 2px;
    border-bottom-left-radius: 2px;
    border-bottom-right-radius: 2px;
}

.cmt_guide {
    margin-bottom: -2px;
    padding: 11px 0 0;
    font-size: 13px;
}
li, ol, ul {
    list-style: none;
}
.cmt_guide li {
    position: relative;
    margin-top: 8px;
    padding-left: 7px;
    color: #767676;
    line-height: 15px;
}
.cmt_guide li:after {
    position: absolute;
    left: 0;
    top: 6px;
    width: 2px;
    height: 2px;
    background: #bbb;
    content: '';
}





</style>

