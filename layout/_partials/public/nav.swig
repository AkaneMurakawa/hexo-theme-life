{# NAV 导航部分, 遍历主题配置文件中的 menu 生成 link #}
<nav class="site-nav"> 
    <div class="site-nav-left">
        <ul class="nav">
            <li>
                {% if theme.blog_logo %}
                {% if not is_home() %}
                {#
                    头像
                    <a class="site-nav-logo" href="{{ config.root }}"  title="{{ config.title }}">
                        <img src="{{ theme.blog_logo }}" alt="{{ config.title }}" />
                    </a>
                #}
                <a href="/" class="site-nav-logo" style='color:#fff; font-weight: 700; opacity:1;'>{{ theme.title }}</a>
                {% endif %}
                {% else %}
                <a href="{{ config.root }}" title="Home">HOME</a>
                {% endif %}
            </li>
            {% if theme.menu %}
            {% for menu,link in theme.menu %}
            <li>
                <a href="{{ link }}" title="{{ menu }}">{{ menu }}</a>
            </li>
            {% endfor %}
            {% endif %}
        </ul> 
    </div>
    {% if theme.local_search %}
    <div class="search-button-area">
        <a href="#search" class="search-button">Search ...</a>
    </div>
    {% endif %} 
    <div class="site-nav-right">
        {% if theme.local_search %}
        <a href="#search" class="search-button">Search ...</a>
        {% endif %} 
        {% include 'social.swig' %}
    </div>
</nav>