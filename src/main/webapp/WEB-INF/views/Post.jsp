<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="/ErrorPage.jsp" %>
<div class="OutBox">
	<div class="PostInBoxBottom">
		<div class="BannerBottomBox">
			<div class="location">
				${post.post_num }
			</div>
			<div class="PostTitle">
				${post.post_title }
			</div>
		</div>
		<div class="TitleBottomBox">
			<div class="PostId">
				${post.mi_id }
				<span>${post.post_date }</span>
			</div>
			<div class="PostNav">
				<div class="PostCount"> 
					조회수  ${post.post_content } 
				</div>
			</div>
		</div>
		<div class="PostContent">
			
			<pre class="PostAd">
				${BlogBean.content}
			</pre>
			
		</div>
	</div>
</div>