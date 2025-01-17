# 1.2.2
- Introducing Image pull secrets in the values

# 1.2.1
- Be more relaxed with parsing upstream_status and upstream_response_length in indextemplate-access

# 1.2.0
- Reenable timestamp fields for index templates now that issue #798 in the operator is fixed in v2.6.1

# 1.1.3
- Fixed kibana backend role reference

# 1.1.2
- Fixed version for release

# 1.1.0
- Increased buffer_size of opensearch output to handle busy opensearch and big responses

# 1.0.8
- Fixed wrong context in namespace setting

# 1.0.7
- Fixed fluentbit dep'

# 1.0.6
- Bumped version of fluent-bit chart to 0.46.7 which included application version 3.04'

# 1.0.4
- Added workaround #798'

# 1.0.1
- Removed name from OpensearchRole and OpensearchUser

# 1.0.0
- Moved indexTemplate setting to opensearch section and added disabled ISM policy

# 0.3.3
- Added secret Ref and toleration to fluentbit

# 0.3.2
- Fixed opensearch roles and users

# 0.3.1
- Patched context in gress

# 0.3.0
- Added service override name

# 0.2.3
- Another opensearch name fix

# 0.2.2
- Patched port and service name in ingress

# 0.2.1
- Patched includes in ingress

# 0.2.0
- Added ingress resource for opensearch

# 0.1.6
- Fixed opensearch cluster name generation in indextemplates

# 0.1.5
- Fixed opensearch cluster name generation

# 0.1.4
- Using short names in manifests due to max length

# 0.1.3
- Fixed release pipeline and updates lock file #2

# 0.1.2
- Fixed release pipeline and updates lock file

# 0.1.1
- Added missing directories and files

# 0.1.0
- Added Opensearch, configuration and fluent-bit

# 0.0.0
- Initial version
