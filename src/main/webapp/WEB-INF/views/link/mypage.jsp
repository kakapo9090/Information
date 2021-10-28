<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<style type="text/css">
@import url(http://fonts.googleapis.com/css?family=Lato:400,700);
.profile
{
    font-family: 'Lato', 'sans-serif';
    }
.profile 
{
/*    height: 321px;
    width: 265px;*/
margin-top: 2px;
padding:1px;
    display: inline-block;
    }
.divider 
{
    border-top:1px solid rgba(0,0,0,0.1);
    }
.emphasis 
{
    border-top: 1px solid transparent;
    }

.emphasis h2
{
    margin-bottom:0;
    }
span.tags 
{
    background: #1abc9c;
    border-radius: 2px;
    color: #f5f5f5;
    font-weight: bold;
    padding: 2px 4px;
    }
.profile strong,span,div{
    text-transform: initial;
}
</style>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
	<div class="row">
    	 <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="border-radius: 16px;">
                        <div class="well profile col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center">
                                <figure>
                                     <img src="../resources/img/pwp.png" alt="" class="img-circle" style="width:75px;" id="user-img">
                                </figure>
                                
                                <form name="mypage" method="post">
                                <h5 style="text-align:center;" id="name">이름 : ${user.name}</h5>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 divider text-center"></div>
                                
                                <p style="text-align:center;font-size: smaller;"> 아이디 : ${user.id}</p>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 divider text-center"></div>
                                
                                <p style="text-align:center;font-size: smaller;overflow-wrap: break-word;" id="email"> 이메일 : ${user.email} </p>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 divider text-center"></div>
                                
                                <p style="text-align:center;font-size: smaller;overflow-wrap: break-word;" id="phone"> 핸드폰 번호 ${user.phone}</p>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 divider text-center"></div>
                                
                                <p style="text-align:center;font-size: smaller;" id="address"> 주소 : ${user.address}</p>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 divider text-center"></div>
                                </form>
                                    <div class="col-lg-6 left" style="text-align:center;overflow-wrap: break-word;">
                                        <a href=""></a><button class="btn btn-success btn-block"> 주문내역확인 </button>
                                        <a href="../question/one_on_one?id=${dto.id}"><button class="btn btn-success btn-block"> 1:1 문의내역 </button>
                                    </div>
                                    <div class=" col-lg-6 left" style="text-align:center;overflow-wrap: break-word;">
                                        <button class="btn btn-info btn-block"><span class="fa fa-user"></span> 회원 탈퇴 </button>
                                    </div>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</div>
</div>
</body>
</html>