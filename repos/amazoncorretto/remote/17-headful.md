## `amazoncorretto:17-headful`

```console
$ docker pull amazoncorretto@sha256:c82659e967efbadf91c00a652e3c2048a79e61c14bf0380065c9105abe13e14b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d4c1234d52eff6da8fc0b38629a49f5369733f64d09ec41e69a0b2be4af494e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137762153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8622feb47257672c6ccace1c4b59dbbc175ce360f8c261caae0dbb0be53771b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:38 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:38 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:58:00 GMT
ARG version=17.0.20.8-1
# Tue, 04 Aug 2026 00:58:00 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:58:00 GMT
# ARGS: version=17.0.20.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:58:00 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:58:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:1c635d63e15b914a52c850733b73b200164c1b4f22ce422b48b4130f93dee906`  
		Last Modified: Tue, 28 Jul 2026 03:02:31 GMT  
		Size: 54.6 MB (54572680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1505e73f059024a159e6caba403ef93ae2f5c041eb5615c4767cb52e85930c46`  
		Last Modified: Tue, 04 Aug 2026 00:58:18 GMT  
		Size: 83.2 MB (83189473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c4acaf144b8477b57466fe72da5ba5f72044ffabad301730daae7804c76c78fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31566b35c385b2fc59d00b6b9543caacf7fc83d730517c39a5feba69d9d0c174`

```dockerfile
```

-	Layers:
	-	`sha256:c6d39c23c972a3782128ff650d5b1f02259d086e05b7c98b34e4d82e24f5b871`  
		Last Modified: Tue, 04 Aug 2026 00:58:16 GMT  
		Size: 5.2 MB (5222530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cfa278ede90df37717d24ba06aa71d007d99c87314b95a82400ac013bfa32ae`  
		Last Modified: Tue, 04 Aug 2026 00:58:16 GMT  
		Size: 9.4 KB (9370 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7034a32f0fd89bb897333eb19ae82a28ac07e2009540f2c7d4fb4e1e83d1b4ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.1 MB (136067437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7585a00c35d5678ff8a16d3b70109496e1a5ca7c68c75a4b677561ccd34bb5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 04 Aug 2026 00:27:37 GMT
COPY /rootfs/ / # buildkit
# Tue, 04 Aug 2026 00:27:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 00:57:45 GMT
ARG version=17.0.20.8-1
# Tue, 04 Aug 2026 00:57:45 GMT
ARG package_version=1
# Tue, 04 Aug 2026 00:57:45 GMT
# ARGS: version=17.0.20.8-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 04 Aug 2026 00:57:45 GMT
ENV LANG=C.UTF-8
# Tue, 04 Aug 2026 00:57:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:0d194348effd1a9f66c459a1b81ed9823b1301b8d182e914b8ddc71c54c528e5`  
		Last Modified: Tue, 28 Jul 2026 08:44:17 GMT  
		Size: 53.4 MB (53448657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7aeb48e0ed8dfe89c2aec81a75e6e8d37993214d426bb5bdbe790386dae0ef1`  
		Last Modified: Tue, 04 Aug 2026 00:58:03 GMT  
		Size: 82.6 MB (82618780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d6cdb7ec44a678e37c3cc608f83f07c3ff7be60029c12da75e5d03d341360d3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bb2f2651bdd1443e254491154917ccc455e896a8ff96a93576d1685980dc143`

```dockerfile
```

-	Layers:
	-	`sha256:8ecebc9f7027123ac8957348b4a70e211c12dc4b1c36ce81e0d3a5d01a62d362`  
		Last Modified: Tue, 04 Aug 2026 00:58:02 GMT  
		Size: 5.2 MB (5221334 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:130240057b791733989957657d2ed368ad7a973cd10dee40e8ff3c40fc879ac3`  
		Last Modified: Tue, 04 Aug 2026 00:58:01 GMT  
		Size: 9.5 KB (9462 bytes)  
		MIME: application/vnd.in-toto+json
