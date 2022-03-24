<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="/ErrorPage.jsp" %>
<div class="OutBox">
	<div class="PostInBoxBottom">
		<div class="BannerBottomBox">
			<div class="location">
				#${BlogBean.location }
			</div>
			<div class="PostTitle">
				${BlogBean.title }
			</div>
		</div>
		<div class="TitleBottomBox">
			<div class="PostId">
				${BlogBean.id }
				<span>${BlogBean.d_date }</span>
			</div>
			<div class="PostNav">
				<div class="PostCount"> 
					조회수  ${BlogBean.readcount } 
				</div>
			</div>
		</div>
		<div class="PostContent">
			<div class="PostBanner">
				<a href="#">	
				<img src="img/postBanner.png" alt="banner" width="100%" height="270px"/></a>
			</div>
			<pre class="PostAd">
				${BlogBean.content}
			</pre>
			<pre class="postNotice">
				<span>[노머니굳리뷰 체험단 참여 방법]</span>
				1. 제공옵션을 꼭 확인하시고 댓글에 적어주세요!
				2. 기간 내 체험이 가능한지 꼼꼼히 확인해주세요!
				3. 취소를 원할 경우, 댓글을 삭제해주세요!(당일 금지)
			</pre>	
		</div>
	</div>
</div>