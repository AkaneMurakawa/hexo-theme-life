<div id="site-main" class="site-main outer" role="main">
	<div class="inner">
		<div class="">
			{% for post in page.posts %}
			<article class="post">
				<div class="">
					<a class="post-card-content-link" title="{{ post.title }}" href="{{ url_for(post.path) }}">
						<header class="post-card-header">
							<span class="post-card-tags">
								<time datetime="{{ date_xml(post.date) }}">
									{{ date(post.date, null) }}
								</time>
							</span>
							<h2 class="post-card-title">{{ post.title }}</h2>
						</header>
					</a>
				</div>
			</article>
			{% endfor %}
		</div>
	</div>
</div>