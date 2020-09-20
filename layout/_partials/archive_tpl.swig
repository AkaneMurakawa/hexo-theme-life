{# 首页、归档、分类、标签 #}
{% macro tpl() %}
<style>
.archive-content{
	display: block;
	padding-bottom: 2%;
	padding-left: 20%;
	width: 100%;
	background-color: white;
	font-size: 1.6rem;
}
article.archive-content a:hover {
    text-decoration: none;
}
.archive-content-link{
	width: 100%;
}
</style>
<div id="site-main" class="site-main outer" role="main" style="background-color: white;">
	<div class="inner">
		<div class="post-card" style="padding-top:5%; padding-bottom: 2%;">
			<ul>
				{% for post in page.posts %}
				<article class="archive-content">
					<li>
						<div class="archive-content-link">
							<a title="{{ post.title }}" target="_blank" href="{{ url_for(post.path) }}">
								<time style="color:#444;" datetime="{{ date_xml(post.date) }}">
												{{ date(post.date, null) }}
								</time>
								<span style="color:#6E7173;">{{ post.title }}</span>
							</a>
						</div>
					</li>
				</article>
				{% endfor %}
			</ul>
		</div>
	</div>
</div>

{# 显示页号 #}
{% if config.index_generator.per_page !== 0 %}
<div class="outer">
	<nav class="pagination">
		{% if page.total > 1 %}
		<nav class="page-nav">
			{{ paginator({prev_text: '← PREV', next_text: 'NEXT →'}) }}
		</nav>
		{% endif %}
	</nav>
</div>
{% endif %}
{% endmacro %}