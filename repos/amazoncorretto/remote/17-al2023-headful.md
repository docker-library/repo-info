## `amazoncorretto:17-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:8366d77db9b7302cca9b670967a4a063ef0112dbfaaea57b7b4bdba8236b7633
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:79ec61af6151f8cbfaba34371b9f6e87f72d6026d307479bb48f01a9077bfbfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137783383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c546154b70ed055f4bd85c74fd2ea4a34c2c37039c060b9a47519faea0d05119`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:30 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:30 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:12:06 GMT
ARG version=17.0.19.10-1
# Wed, 08 Jul 2026 21:12:06 GMT
ARG package_version=1
# Wed, 08 Jul 2026 21:12:06 GMT
# ARGS: version=17.0.19.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 08 Jul 2026 21:12:06 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:12:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:7cc32cc3c75aa0d5acde5091a935996653f4e5538d4cea6ce80a19441163b9f1`  
		Last Modified: Wed, 08 Jul 2026 02:05:17 GMT  
		Size: 54.6 MB (54574155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c89caa47fb22db83c4debd80371e8b44f1783b10cf24d8f03558201fbc23033`  
		Last Modified: Wed, 08 Jul 2026 21:12:24 GMT  
		Size: 83.2 MB (83209228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d0256868610c801269bc896dcabfa7ba3b355108c2c8038a415d1ab084fa09e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a50edd89610b681bd7b909bf9afa087e891e485994072941a766192efa4554b6`

```dockerfile
```

-	Layers:
	-	`sha256:430c82cb7638f8fee81fc04110bb6ac1fb6948f9acc40af18adf15cbc8f35890`  
		Last Modified: Wed, 08 Jul 2026 21:12:22 GMT  
		Size: 5.2 MB (5222138 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aad7a9c253e9cd995e0941df2bb635e5fbea7803db25027a2d81ecd907248024`  
		Last Modified: Wed, 08 Jul 2026 21:12:22 GMT  
		Size: 9.1 KB (9053 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:816450ba9a7738bc7ec051bc6b5b6cd3c7996fce5cda0412b2ad762dbe752d1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.1 MB (136080374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85802f860b67fb7554bb87903b8cad869d9922fc60b47d4197e57a7fccfacb3e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:24:48 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:24:48 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:11:45 GMT
ARG version=17.0.19.10-1
# Wed, 08 Jul 2026 21:11:45 GMT
ARG package_version=1
# Wed, 08 Jul 2026 21:11:45 GMT
# ARGS: version=17.0.19.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 08 Jul 2026 21:11:45 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:11:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:d30c7cda96612bb38923feeb2e2027a5cbb8eab71cebfe3aad536791644c7ebf`  
		Last Modified: Wed, 08 Jul 2026 02:05:16 GMT  
		Size: 53.4 MB (53448934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82aa502b294102b94d1b363339607ad016d840306041accbb6e1c063b07b5dcb`  
		Last Modified: Wed, 08 Jul 2026 21:12:03 GMT  
		Size: 82.6 MB (82631440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a4f0a1f8c3773b6506c218a5b049a0c99eebf98f5cf3aff9f519dfe58eb4defa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38855998db76e49e1ed0282a4e2e49f2821fc4350a95e7edc67c3b68f4a4ac59`

```dockerfile
```

-	Layers:
	-	`sha256:680a2e7bcc78c5e301523b145af1c567d928c1c74a5be0ff7e0eb70876bf961f`  
		Last Modified: Wed, 08 Jul 2026 21:12:01 GMT  
		Size: 5.2 MB (5220930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c78c5b034fd64229827509cfe139c0cef8f2e069f67f6ba22d8beea2babd682a`  
		Last Modified: Wed, 08 Jul 2026 21:12:01 GMT  
		Size: 9.1 KB (9133 bytes)  
		MIME: application/vnd.in-toto+json
