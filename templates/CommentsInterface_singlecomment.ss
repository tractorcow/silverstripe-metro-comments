<li <% if ID %>id="comment-{$ID}"<% end_if %> class="comment bg-color-blue fg-color-white $EvenOdd<% if FirstLast %> $FirstLast <% end_if %> $SpamClass">
	<b class="sticker sticker-left sticker-color-blue"></b>
	<div class="avatar">
		<% if $Gravatar %>
			<img class="gravatar" src="$Gravatar" alt="Gravatar for $Name.ATT" title="Gravatar for $Name.ATT" />
		<% end_if %>
	</div>

	<div class="reply">
		<% if not isPreview %>
			<div class="date">$Created.Nice</div>
			<div class="author">
				<% if $URL %>
					<a href="$URL.URL" rel="nofollow">$AuthorName.XML</a>
				<% else %>
					$AuthorName.XML
				<% end_if %>
			</div>
		<% end_if %>
		<div class="text">
			$Comment
		</div>

		<% if $ApproveLink || $SpamLink || $HamLink || $DeleteLink %>
			<div class="meta-options action-links">
				<% if ApproveLink %>
					<a href="$ApproveLink.ATT">approve</a>
				<% end_if %>
				<% if SpamLink %>
					<a href="$SpamLink.ATT">spam</a>
				<% end_if %>
				<% if HamLink %>
					<a href="$HamLink.ATT">ham</a>
				<% end_if %>
				<% if DeleteLink %>
					<a href="$DeleteLink.ATT">remove</a>
				<% end_if %>
			</div>
		<% end_if %>
	</div>
</li>