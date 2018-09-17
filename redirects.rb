r301 '/', '/tiledev/2-2/index.html'

r301 %r{/pivotalcf/packaging/(.*)}, '/tiledev/$1'
r301 %r{/pivotalcf/partners/(.*)}, '/tiledev/$1'

r301 '/partners/creating.html', '/tiledev/tile-generator.html'
r301 '/partners/decrypt-encrypt-install-file.html', '/pivotalcf/customizing/modify-ops-man.html'
r301 '/partners/deploying-with-bosh.html', '/tiledev/tile-generator.html'
r301 '/partners/deploying-with-ops-man-tile.html', '/tiledev/tile-generator.html'
r301 '/partners/lifecycle-errands.html', '/tiledev/tile-errands.html'
r301 '/partners/migrations.html', '/tiledev/tile-upgrades.html'
r301 '/partners/preparing-ops-man.html', '/tiledev/tile-generator.html'
r301 '/partners/product-template-reference.html', '/tiledev/product-template-reference.html'
r301 '/partners/release-notes-1-7.html', '/tiledev/release-notes-1-7.html'
r301 '/partners/release-notes-1-8.html', '/tiledev/release-notes-1-8.html'
r301 '/partners/release-notes.html', '/tiledev/release-notes-1-8.html'
r301 '/partners/releases.html', '/tiledev/releases.html'
r301 '/partners/sdk.html', '/tiledev/sdk.html'
r301 '/partners/tiles.html', '/tiledev/property-reference.html'
r301 '/tiledev/roadmap.html', '/tiledev/index.html'
r301 '/tiledev/development.html', '/tiledev/index.html'
r301 '/tiledev/other-integrations.html', '/tiledev/stages.html'
r301 '/tiledev/overview.html', '/tiledev/index.html'
r301 '/tiledev/workflow.html', '/tiledev/index.html'

r301 %r{/tiledev/(\d+\-\d+\/|)(roadmap|development|overview|workflow)(\.html)}, "/tiledev/$1index.html"
r301 %r{/tiledev/(\d+\-\d+\/|)(other-integrations\.html)}, "/tiledev/$1stages.html"

r301 %r{/tiledev/(?![\d-]+)(.*)}, "/tiledev/2-2/$1"