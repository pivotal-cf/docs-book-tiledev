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

# ANY url that starts with /tiledev/ and middles with null or a version number and ends in roadmap.html, development.html, overview.html, or workflow.html redirects to the most current index.
r301 %r{/tiledev/(\d+\-\d+\/|)(roadmap|development|overview|workflow)(\.html)}, "/tiledev/$1index.html"
r301 %r{/tiledev/(\d+\-\d+\/)(other-integrations\.html)}, "/tiledev/$1stages.html"

r301 %r{/tiledev/(?![\d-]+)(.*)}, "/tiledev/2-7/$1"

r301 '/', '/tiledev/2-7/index.html'


# For links in docs-dev-guide topics published in tiledev under /brokers, redirect to original OSS docs locations

r301 %r{/tiledev/(\d+)-(\d+)/brokers/api.html(.*)}, 'https://github.com/openservicebrokerapi/servicebroker/blob/v2.13/spec.md'

r301 %r{/tiledev/(\d+)-(\d+)/brokers/devguide/services/index.html}, 'https://docs.cloudfoundry.org/devguide/services/index.html'
r301 %r{/tiledev/(\d+)-(\d+)/brokers/devguide/services/log-management.html}, 'https://docs.cloudfoundry.org/devguide/services/log-management.html'
r301 %r{/tiledev/(\d+)-(\d+)/brokers/devguide/services/managing-services.html}, 'https://docs.cloudfoundry.org/devguide/services/managing-services.html'
r301 %r{/tiledev/(\d+)-(\d+)/brokers/devguide/services/route-binding.html}, 'https://docs.cloudfoundry.org/devguide/services/route-binding.html'
r301 %r{/tiledev/(\d+)-(\d+)/brokers/devguide/services/service-keys.html}, 'https://docs.cloudfoundry.org/devguide/services/service-keys.html'
r301 %r{/tiledev/(\d+)-(\d+)/brokers/devguide/services/sharing-instances.html}, 'https://docs.cloudfoundry.org/devguide/services/sharing-instances.html'
r301 %r{/tiledev/(\d+)-(\d+)/brokers/devguide/deploy-apps/environment-variable.html}, 'https://docs.cloudfoundry.org/devguide/deploy-apps/environment-variable.html'


# tiledev redirect links to outdated/pre 2.3 tiledev references topics

r301 %r{/tiledev/(\d+)-(\d+)/product-template-reference.html}, '/tiledev/property-template-references.html'
r301 %r{/tiledev/(\d+)-(\d+)/property-reference.html}, '/tiledev/property-template-references.html'


# redirect to PDF for v2.1 and earlier

r301 %r{/tiledev/2-1/(.*)}, 'http://docs.pivotal.io/archives/tiledev-guide-2.1.pdf'
r301 %r{/tiledev/2-0/(.*)}, 'http://docs.pivotal.io/archives/tiledev-guide-2.0.pdf'
r301 %r{/tiledev/1-12/(.*)}, 'http://docs.pivotal.io/archives/tiledev-guide-1.12.pdf'
