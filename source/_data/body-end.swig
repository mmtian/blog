{# Photos page #}
{% if page.type ==='picture' %}
  <script src="//cdn.jsdelivr.net/npm/minigrid@3.1.1/dist/minigrid.min.js"></script>
  <script src="//cdn.jsdelivr.net/gh/lei2rock/blog@1/js/photo.js"></script>
{% endif %}

{# Locate comments #}
<script src="//cdn.jsdelivr.net/gh/lei2rock/blog@1/js/comment-locate.js"></script>

{# Netlify CMS #}
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
