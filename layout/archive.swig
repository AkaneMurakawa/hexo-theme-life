{# 归档 #}
{% extends '_layout.swig' %}
{% import '_partials/archive_tpl.swig' as template %}
{% block content %}
{% set description = _p('Total ' + site.posts.length + ' post') %}
{% include '_partials/header.swig' %}
{{ template.tpl() }}
{% endblock %}