## `amazoncorretto:17-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:29bb13ffaa83576c69e60a78054a3eaf15baa171ee3b832bcaa268d7eb68125e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e32e07d03930e8ada0d3a27e3354bdb77e897b5692a59577739105e6b6f3b236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137762000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d077aca6a3a90dde3ad914fd458d37867d9fa0422e5d62d3340a047aea3e48`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:13 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:13 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:36:51 GMT
ARG version=17.0.20.8-1
# Mon, 27 Jul 2026 21:36:51 GMT
ARG package_version=1
# Mon, 27 Jul 2026 21:36:51 GMT
# ARGS: version=17.0.20.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:36:51 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:36:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:5492e2c54dedbfa8cbd57605d23f9468dae3f869273566ed212185e48340d5d5`  
		Last Modified: Fri, 24 Jul 2026 21:00:37 GMT  
		Size: 54.6 MB (54572684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c228322c14849957735afc2e8b6ccb4e99f7eabd963fc6b3083ab5f7f7533691`  
		Last Modified: Mon, 27 Jul 2026 21:37:09 GMT  
		Size: 83.2 MB (83189316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4c4d9b6909cba444043cf4117f7172f4c2894efb341fe9b3b97f70baf1df4ccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18bf12ab45bbae2416598cc866f83e28c5903c91e44dd2c24788f76b811fa3d`

```dockerfile
```

-	Layers:
	-	`sha256:c5f61aba6254fc994352421341c8e963fb3e763300f4206e5313eaafdf2113eb`  
		Last Modified: Mon, 27 Jul 2026 21:37:08 GMT  
		Size: 5.2 MB (5222530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f07b34d7a9a6ac600bafd5682ebf04c1c231e3faabb59e861362bc1bf7d5e353`  
		Last Modified: Mon, 27 Jul 2026 21:37:07 GMT  
		Size: 9.4 KB (9370 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:03683ee41fd681e8445d13cd92a0a6eb5d60f760e4a1ee7577c93ba76eef2bb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.1 MB (136068433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c394a79ea80800e5796acdaf642910935cbe80053a59477c9e94c0f370ffa45`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 27 Jul 2026 21:19:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 27 Jul 2026 21:19:12 GMT
CMD ["/bin/bash"]
# Mon, 27 Jul 2026 21:36:04 GMT
ARG version=17.0.20.8-1
# Mon, 27 Jul 2026 21:36:04 GMT
ARG package_version=1
# Mon, 27 Jul 2026 21:36:04 GMT
# ARGS: version=17.0.20.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 27 Jul 2026 21:36:04 GMT
ENV LANG=C.UTF-8
# Mon, 27 Jul 2026 21:36:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:07006faf6af6164a3570dfc90b2fce3d8038766e9e8572e8cc38b3a1eb8bbdd7`  
		Last Modified: Fri, 24 Jul 2026 21:55:34 GMT  
		Size: 53.4 MB (53449611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8beabeee45a23d41d11dc2547eb5ef95e28d88dd0d26ac25f937e14d0e6ff762`  
		Last Modified: Mon, 27 Jul 2026 21:36:23 GMT  
		Size: 82.6 MB (82618822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:dd69815d400f1c2885dee2a0d51c31159246dd89de5f72913bc6cdbb4c6dbe2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3db4ab4c8b5e7d02932970786e3f9c37c92ede235409bb47a80c96b6851ed6d6`

```dockerfile
```

-	Layers:
	-	`sha256:77c94172c1b6c40687a1bbd03c48ee0da2924bc5a113e525852e1c58c8e2d32d`  
		Last Modified: Mon, 27 Jul 2026 21:36:20 GMT  
		Size: 5.2 MB (5221334 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:419c845ef36b83de596d771e2402b5cbfb5657324dcb1c69eac899c740b6e0c3`  
		Last Modified: Mon, 27 Jul 2026 21:36:20 GMT  
		Size: 9.5 KB (9462 bytes)  
		MIME: application/vnd.in-toto+json
