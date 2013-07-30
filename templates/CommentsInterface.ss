<% require themedCSS('comments', 'comments') %>

<% if CommentsEnabled && AddCommentForm %>
	<div id="CommentList" class="comments-holder-container grid">
		<div class="row">
			<div class="span9">
				<hr />
			</div>
		</div>
		<div class="row">
			<div class="span4">
				<h2><% _t('CommentsInterface_ss.POSTCOM','Post your comment') %></h2>

				<% if CanPost %>
					<% if ModeratedSubmitted %>
						<p id="$CommentHolderID_PostCommentForm_error" class="message good"><% _t('CommentsInterface_ss.AWAITINGMODERATION', 'Your comment has been submitted and is now awaiting moderation.') %></p>
					<% end_if %>
					$AddCommentForm
				<% else %>
					<p><% _t('CommentsInterface_ss.COMMENTLOGINERROR', 'You cannot post comments until you have logged in') %><% if PostingRequiresPermission %>,<% _t('CommentsInterface_ss.COMMENTPERMISSIONERROR', 'and that you have an appropriate permission level') %><% end_if %>. 
						<a href="Security/login?BackURL={$Parent.Link}" title="<% _t('CommentsInterface_ss.LOGINTOPOSTCOMMENT', 'Login to post a comment') %>"><% _t('CommentsInterface_ss.COMMENTPOSTLOGIN', 'Login Here') %></a>.
					</p>
				<% end_if %>
			</div>
			<div class="span5">
				<h3>
					<% _t('CommentsInterface_ss.COMMENTS','Comments') %>
				</h3>

				<div class="comments-holder">
					<% if Comments %>
						<ul class="comments-list replies">
							<% loop Comments %>
								<% include CommentsInterface_singlecomment %>
							<% end_loop %>
						</ul>
					<% end_if %>

					<p class="no-comments-yet"<% if $Comments.Count %> style='display: none' <% end_if %> ><% _t('CommentsInterface_ss.NOCOMMENTSYET','No one has commented on this page yet.') %></p>

				</div>
			</div>
		</div>
		<div class="row">
			<div class="span9">

				<% if Comments.MoreThanOnePage %>
					<div class="comments-pagination">
						<% with Comments %>
							<% include Pagination %>
						<% end_with %>
					</div>
				<% end_if %>
				
				<a class="button bg-color-yellow" href="$RssLinkPage">
					<i class="icon-feed"></i>
					<% _t('CommentsInterface_ss.RSSFEEDCOMMENTS', 'RSS feed for comments on this page') %>
				</a>
				<a class="button bg-color-yellow" href="$RssLink">
					<i class="icon-feed"></i>
					<% _t('CommentsInterface_ss.RSSFEEDALLCOMMENTS', 'RSS feed for all comments') %>
				</a>
				<% if DeleteAllLink %>
					<a class="button bg-color-yellow delete-comments" href="$DeleteAllLink">
						<i class="icon-remove"></i>
						<% _t('CommentsInterface_ss.PageCommentInterface.DELETEALLCOMMENTS','Delete all comments on this page') %>
					</a>
				<% end_if %>
			</div>
		</div>
	</div>
<% end_if %>
	
