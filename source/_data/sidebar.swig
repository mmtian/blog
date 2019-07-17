<div class="feed-link motion-element">
  <a href="/cloud/img/wx_channel.jpg" data-fancybox="gallery" data-caption="微信扫码关注：班班碎碎念" rel="alternate">
    <i class="fa fa-rss"></i> 关注公众号
  </a>
</div>

{% if theme.social_custom %}
  <div class="links-of-author motion-element">
    {% for name, link in theme.social_custom %}
      <span class="links-of-author-item">
      {% set sidebarURL = link.split('||')[0] | trim %}
      {% if not (theme.social_icons.enable) or (not theme.social_icons.icons_only) %}
        {% set sidebarText = name %}
      {% endif %}
      {% if theme.social_icons.enable %}
        {% set sidebarIcon = '<i class="fa fa-fw fa-' + link.split('||')[1] | trim | default('globe') + '"></i>' %}
      {% endif %}
        {{ next_url(sidebarURL, sidebarIcon + sidebarText, {title: name + ' &rarr; ' + sidebarURL}) }}
      </span>
    {% endfor %}
  </div>
{% endif %}
