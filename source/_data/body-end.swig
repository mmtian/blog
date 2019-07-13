{# Photos page only #}
{% if page.type ==='picture' %}
  <script src="//cdn.jsdelivr.net/npm/minigrid@3.1.1/dist/minigrid.min.js"></script>
  <script src="/js/photo.js"></script>
{% endif %}

{# Locate comments' position #}
<script src="/js/comment-locate.js"></script>

{# live2d-widget 看板娘 #}
<script src="//cdn.jsdelivr.net/gh/lei2rock/live2d-widget@latest/autoload.js"></script>

{# Netlify CMS Identity #}
<script>
  if (window.netlifyIdentity) {
    window.netlifyIdentity.on("init", user => {
      if (!user) {
        window.netlifyIdentity.on("login", () => {
          document.location.href = "/admin/";
        });
      }
    });
  }
</script>
