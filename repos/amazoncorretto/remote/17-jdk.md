## `amazoncorretto:17-jdk`

```console
$ docker pull amazoncorretto@sha256:9f944ad6b8443fa0cebe3036d1c98dab2ab3e36415ea9846615d5079ad7919b7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b5735ca096df8968438759e535736da85aa33d4024ddb4e3cc0e42341de3984c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.7 MB (211713576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9ef7d2864207a4d06dc67815024d39ac3bc63767b7d1dd6abb4423a873eb955`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:45 GMT
ARG version=17.0.20.8-1
# Tue, 04 Aug 2026 00:57:45 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:57:45 GMT
# ARGS: version=17.0.20.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:57:45 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39ea4f859b83f5205b2979eea64b65450ec1cc4ee0c2a23b590101ba9207d76`  
		Last Modified: Tue, 04 Aug 2026 00:58:06 GMT  
		Size: 157.1 MB (157140896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1e13e2e726f89925f1b4005f37c3b1a3f9e6ee7bcdae0209767c2d36067685a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5340124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:404466dc09bd7c3e81aabedd79874ac990537dd9a24e74dc75b55cae844f197e`

```dockerfile
```

-	Layers:
	-	`sha256:28a5cc69b321bb68dcb720085caf36caf57608b3990cf6bbf0ddfa3b4695d5ef`  
		Last Modified: Tue, 04 Aug 2026 00:58:02 GMT  
		Size: 5.3 MB (5329470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10fc51f46a0195bbfa70d8407704764ad8e08abc0ab2ea5e1e4b9db47afadd32`  
		Last Modified: Tue, 04 Aug 2026 00:58:02 GMT  
		Size: 10.7 KB (10654 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:4bd8bf51025446d14137b71c6fa15329a795545a390e89e6fa86d03a2a5012a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.4 MB (209398419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01f45fdb3006c601b7adb4a85f73d809f3715543e9a7686755bf7e7098a2b2b8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:56:50 GMT
ARG version=17.0.20.8-1
# Tue, 04 Aug 2026 00:56:50 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:56:50 GMT
# ARGS: version=17.0.20.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:56:50 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:56:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8cf99ec5f67b1b676ae450b45c93e5eb1a3ed69de52b80d2393fb7708fe1120`  
		Last Modified: Tue, 04 Aug 2026 00:57:12 GMT  
		Size: 155.9 MB (155949762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d2a177d52fb94b4e94c55c165ae35204602c53a6e68d06c197e250322fdbe4f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5339220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e91358000bbed8c834a9e759642caa3a250c50981dcaabcb4b3be4b4a7a7ce28`

```dockerfile
```

-	Layers:
	-	`sha256:c0ec48b5385c5dc66d6c192f4939ab1661f662ef0599348343252300a8e6c988`  
		Last Modified: Tue, 04 Aug 2026 00:57:08 GMT  
		Size: 5.3 MB (5328437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16a86bebf796f1b9a3a8f9dec27b40ec657477151c20c47176cf08a7579c90aa`  
		Last Modified: Tue, 04 Aug 2026 00:57:08 GMT  
		Size: 10.8 KB (10783 bytes)  
		MIME: application/vnd.in-toto+json
