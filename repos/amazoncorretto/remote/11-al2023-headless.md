## `amazoncorretto:11-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:2758f834e01ed19e646e77e86e5d4cc4ca50b95c7956fb02d3c912d0fa223d60
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:4161d0ce4c089f767c7dba246629e038e4f4890e53eea5c1b435e3ea290e3494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130638671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e1dab396127efacf1a11bf3c0aaab2c2f91d139998fa8fd62f8ac7ca2114bc7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:20 GMT
ARG version=11.0.32.9-1
# Tue, 04 Aug 2026 00:57:20 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:57:20 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1d1d821e96053b1578ce87058338e236322d3acdce1ce813ed3ea20c0db3255`  
		Last Modified: Tue, 04 Aug 2026 00:57:37 GMT  
		Size: 76.1 MB (76065991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:047bc7e430954274b46143dfd0e00c272fb5906ba98ae30423ee8700f842af95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c29f2da18606a8e97b2f543f7217863bdbbad280caf72b625d14145a306bd8e4`

```dockerfile
```

-	Layers:
	-	`sha256:d37bc85bd34d883e39a9e597dc5718c01c9ec0f147ecc2d740748853e19ff1b6`  
		Last Modified: Tue, 04 Aug 2026 00:57:35 GMT  
		Size: 5.2 MB (5210211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20ff72d2c4f44f00b4ee1628a9771430acaad34fe046ec8a2e10d7a03548566a`  
		Last Modified: Tue, 04 Aug 2026 00:57:35 GMT  
		Size: 9.1 KB (9102 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f8c0b9aa6d4c4499a607a801d5d1471bbc61a42f048abcd1bd66952604abb54f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128758762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78f562fbd566da1931c3998bc3bc903e2f4e1dab14b16bf286b2c4938b476f4e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:06 GMT
ARG version=11.0.32.9-1
# Tue, 04 Aug 2026 00:57:06 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-11-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:57:06 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db951d47cf0d46b69121b3a54b9456f250b9c4d8140b40190fc0ddbd9a7ac51f`  
		Last Modified: Tue, 04 Aug 2026 00:57:23 GMT  
		Size: 75.3 MB (75310105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:930d7bf5edc271563ad4f8cc960a8dd815284c61958bcb9810145ec5cf5b8c37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d6b21f37e30032aab49c66c623d201d4cd6b92746fbe39b15b1eb88500497a5`

```dockerfile
```

-	Layers:
	-	`sha256:0518d76c1f380d61dae9fe2db212800a2e6467700531b404498d91ff8631b4dc`  
		Last Modified: Tue, 04 Aug 2026 00:57:21 GMT  
		Size: 5.2 MB (5209841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30c8043ae6746d69f9082b7b486e7b64a00f34351cc84629ec5df00b885cd3e7`  
		Last Modified: Tue, 04 Aug 2026 00:57:21 GMT  
		Size: 9.2 KB (9194 bytes)  
		MIME: application/vnd.in-toto+json
