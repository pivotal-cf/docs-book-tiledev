# Redirect all production http traffic to https
r301 %r{.*}, 'https://docs.pivotal.io$&', :if => Proc.new { |rack_env|
  rack_env['SERVER_NAME'] == 'docs.pivotal.io' && rack_env['HTTP_X_FORWARDED_PROTO'] == 'http'
}

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

r301 '/tiledev/2-2/roadmap.html', '/tiledev/index.html'
r301 '/tiledev/2-2/development.html', '/tiledev/index.html'
r301 '/tiledev/2-2/other-integrations.html', '/tiledev/stages.html'
r301 '/tiledev/2-2/overview.html', '/tiledev/index.html'
r301 '/tiledev/2-2/workflow.html', '/tiledev/index.html'

r301 '/tiledev/2-1/roadmap.html', '/tiledev/index.html'
r301 '/tiledev/2-1/development.html', '/tiledev/index.html'
r301 '/tiledev/2-1/other-integrations.html', '/tiledev/stages.html'
r301 '/tiledev/2-1/overview.html', '/tiledev/index.html'
r301 '/tiledev/2-1/workflow.html', '/tiledev/index.html'

r301 '/tiledev/2-0/roadmap.html', '/tiledev/index.html'
r301 '/tiledev/2-0/development.html', '/tiledev/index.html'
r301 '/tiledev/2-0/other-integrations.html', '/tiledev/stages.html'
r301 '/tiledev/2-0/overview.html', '/tiledev/index.html'
r301 '/tiledev/2-0/workflow.html', '/tiledev/index.html'

r301 '/tiledev/1-12/roadmap.html', '/tiledev/index.html'
r301 '/tiledev/1-12/development.html', '/tiledev/index.html'
r301 '/tiledev/1-12/other-integrations.html', '/tiledev/stages.html'
r301 '/tiledev/1-12/overview.html', '/tiledev/index.html'
r301 '/tiledev/1-12/workflow.html', '/tiledev/index.html'

r301 %r{/tiledev/(?![\d-]+)(.*)}, "/tiledev/2-2/$1"

r301 '/', '/tiledev/2-2/index.html'
