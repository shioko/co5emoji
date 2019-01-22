{% if theme.co5emoji %}
  {% set co5emoji_js = url_for(theme.vendors._internal + '/co5emoji/dist/co5emoji.js')%}
  {% set co5emoji_css = url_for(theme.vendors._internal + '/co5emoji/dist/styl.css')%}
  {% set co5emoji_list = url_for(theme.vendors._internal + '/co5emoji/dist/emojilist.js')%}
    <script type="text/javascript" src="{{ co5emoji_list }}"></script>
  <script src="{{ co5emoji_js }}"></script>
  <link rel="stylesheet" type="text/css" href="{{ co5emoji_css }}">
{% endif %}