## `amazoncorretto:27-headful`

```console
$ docker pull amazoncorretto@sha256:8a65acc0350f57c344d43b2b670ec0f76e9f51c415f9048aee38a54b686bc3d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:6880a4bf580544a8b13a8e62caab1939637626c05808e2bda006c2b81644ade7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160537857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f86c6549c6e3b266f3be52cb4a790eb676fd9494edcc3f5aec32ec616d171870`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:24 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:24 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:35:34 GMT
ARG version=27.0.1.1.4-1
# Wed, 18 Nov 2026 21:35:34 GMT
ARG resource_version=27.0.1.1.4
# Wed, 18 Nov 2026 21:35:34 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:35:34 GMT
# ARGS: version=27.0.1.1.4-1 resource_version=27.0.1.1.4 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:35:34 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:35:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:48c7a3aa33f84b2fa7af701f558c0a97251fe0ca6790119c6f912decc8cad76d`  
		Last Modified: Tue, 17 Nov 2026 23:01:37 GMT  
		Size: 54.6 MB (54569091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d098e85f9667fa22f6ce5a22ecbab2c027a0898e34b71f2b7810035e0fa61b9c`  
		Last Modified: Wed, 18 Nov 2026 21:35:56 GMT  
		Size: 106.0 MB (105968766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9b871e5d1707c534eefd0c03519156aaaaf8dd4d712e555f343236465211eae0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cdd3026771929443fdcfe4cd34cace4ada28ea8d74d2cc16ccbf7b152843c48`

```dockerfile
```

-	Layers:
	-	`sha256:7404a1b49ad7359ba0e161129bdbfcb8ed559904fa7e5b729bd942035ef1ccc1`  
		Last Modified: Wed, 18 Nov 2026 21:35:53 GMT  
		Size: 5.2 MB (5230845 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de0f6976814b134b52813a98bdd4e565bbe01dbf05eae73478fc9e7002d046b7`  
		Last Modified: Wed, 18 Nov 2026 21:35:53 GMT  
		Size: 9.4 KB (9424 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:6bb5c45f0a0ee3f5ecb770181c57012e43d76a44c50464ae2955b59ade53dcca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158494386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76a4316973d0470545773b4c0ae42ca7a447cb7c376d007752ec7c63ed464d9c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:36:12 GMT
ARG version=27.0.1.1.4-1
# Wed, 18 Nov 2026 21:36:12 GMT
ARG resource_version=27.0.1.1.4
# Wed, 18 Nov 2026 21:36:12 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:36:12 GMT
# ARGS: version=27.0.1.1.4-1 resource_version=27.0.1.1.4 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:36:12 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:36:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8a609eeea3974147e9e72702419ad2e65388032c68fd4a66b67a5c3cfaec66`  
		Last Modified: Wed, 18 Nov 2026 21:36:32 GMT  
		Size: 105.0 MB (105040836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c595d269e0de7df8dcaa5df6a6bce1d8059fe7d7eea59ffb8cbe60e8401b0669
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0701d4eb0f2c42aae58f5f0e07a3d62660dd96d8e601106107a239470bf85ca`

```dockerfile
```

-	Layers:
	-	`sha256:4fe506256c26e502b23c9bdc316e76b11c62f156d34418efc8ee948977aef5de`  
		Last Modified: Wed, 18 Nov 2026 21:36:29 GMT  
		Size: 5.2 MB (5229656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:806ca760f931c5569b4e98ffaccfb5c8e6d8ede18848b38ea05e2805c039d7f9`  
		Last Modified: Wed, 18 Nov 2026 21:36:29 GMT  
		Size: 9.5 KB (9516 bytes)  
		MIME: application/vnd.in-toto+json
