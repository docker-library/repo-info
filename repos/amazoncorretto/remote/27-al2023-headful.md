## `amazoncorretto:27-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:13ffece17564832a03ad8b009169352ec1fbdc15ad92fb39e0e433a5c7a11212
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b95b6a413746199b5c2930b81093c5ae3ee2fa999e32cd86bebe04b937c7ac33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160538112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6fa7402536774af25220d325cc5c5c4bb89e20ecf69865ec302f3f3cb9ca04`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:06 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:06 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:35:35 GMT
ARG version=27.0.1.1.4-1
# Tue, 17 Nov 2026 21:35:35 GMT
ARG resource_version=27.0.1.1.4
# Tue, 17 Nov 2026 21:35:35 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:35:35 GMT
# ARGS: version=27.0.1.1.4-1 resource_version=27.0.1.1.4 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:35:35 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:35:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:b14c48cb507df242c2b2a0cb744a00c9498a8511d265f31337cb732917717949`  
		Last Modified: Thu, 12 Nov 2026 22:05:23 GMT  
		Size: 54.6 MB (54569293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21443036f8645c36e552d1747d266ac9e227fd873ad6b9f36ad25cc9b98cdaa6`  
		Last Modified: Tue, 17 Nov 2026 21:35:56 GMT  
		Size: 106.0 MB (105968819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ac0d8659ccc41f30955cb569fa8815a1e1204c7a3ac1d7413ff76cd455b04a71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4287a005a5322d5ee6afa5bf022d0d8c70e9746d301038ad70341057422aa517`

```dockerfile
```

-	Layers:
	-	`sha256:f6267a891715c4884fd2d19703589c3504b831af14c27fb175bad8372b94f229`  
		Last Modified: Tue, 17 Nov 2026 21:35:53 GMT  
		Size: 5.2 MB (5230845 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5f591c11c8e5400309905bbf29e2c7b086a189d847962ce599199231deeb5db`  
		Last Modified: Tue, 17 Nov 2026 21:35:53 GMT  
		Size: 9.4 KB (9423 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:41782cef9cd543ccc57f8535eb3e8df7f7b0249185ef44a62f1477b8a9b7143d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158493792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffcee895c8e1c04913b0451a19a570c4866b4f449cc467a2a330eef478c1eb3f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:21 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:21 GMT
CMD ["/bin/bash"]
# Tue, 17 Nov 2026 21:35:43 GMT
ARG version=27.0.1.1.4-1
# Tue, 17 Nov 2026 21:35:43 GMT
ARG resource_version=27.0.1.1.4
# Tue, 17 Nov 2026 21:35:43 GMT
ARG package_version=1
# Tue, 17 Nov 2026 21:35:43 GMT
# ARGS: version=27.0.1.1.4-1 resource_version=27.0.1.1.4 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-27-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-27-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-27-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 17 Nov 2026 21:35:43 GMT
ENV LANG=C.UTF-8
# Tue, 17 Nov 2026 21:35:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-amazon-corretto
```

-	Layers:
	-	`sha256:ec15fd39d3176482c0c3086a0be29d9028611fd79d15bccd7da39e67bbfceeab`  
		Last Modified: Thu, 12 Nov 2026 22:05:26 GMT  
		Size: 53.5 MB (53453077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c0bbddd6916391dec98ee1cee70f1ea6ea89b34baf8d70b2235929529a1399d`  
		Last Modified: Tue, 17 Nov 2026 21:36:04 GMT  
		Size: 105.0 MB (105040715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d1982ac4dbe06a272d4b1107f9d23fe94cf81076732a250de1da5accbf44515b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e453e0d487edac468fd99d1303d29c80d4449d799ba7dcdf6ed23692d1baac`

```dockerfile
```

-	Layers:
	-	`sha256:651ccd891dc926713ef837a860b5774c0f81ffacc8c88e2096e4742d49b5f828`  
		Last Modified: Tue, 17 Nov 2026 21:36:02 GMT  
		Size: 5.2 MB (5229656 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d40ba0fd8e1f99fd4c2c2a93c530688de19b2923eba9915ee1d053511a26020`  
		Last Modified: Tue, 17 Nov 2026 21:36:02 GMT  
		Size: 9.5 KB (9516 bytes)  
		MIME: application/vnd.in-toto+json
