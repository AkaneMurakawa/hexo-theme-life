{# 分类归档 #}
{% extends '_layout.swig' %}
{% import '_partials/archive_tpl.swig' as template %}
{% block content %} 
{# 分类描述 #}
{% set description = __('') %}
{% include '_partials/header.swig' %}
{{ template.tpl() }}
{% endblock %}