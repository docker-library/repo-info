## `amazoncorretto:17-al2-native-headful`

```console
$ docker pull amazoncorretto@sha256:8a7febea11f6663575ad06a6d8a83d1edcc841d57cdf5d93d2fdd503807ab6e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:de34dd91a64fa0f1d3b7bf71c5a4a6fc654f38d71893165db89348d567a3a6f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.4 MB (154360797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e01fe451f0c9484dd58ab637ffab94791b3dd7be2635425e68f6fe9b899b04c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:38 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:38 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:59:35 GMT
ARG version=17.0.21.0.11-1
# Thu, 05 Nov 2026 19:59:35 GMT
ARG resource_version=17.0.21.0.11
# Thu, 05 Nov 2026 19:59:35 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 05 Nov 2026 19:59:35 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:59:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:0495c25dad2c432d2725b987a8e120fbea60c2f52ab965d1194495d66bd54a79`  
		Last Modified: Sat, 31 Oct 2026 04:10:58 GMT  
		Size: 62.9 MB (62938853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94ee414962ec5c0a65798b8c103bff35e4f486132d22254c425a87d323cf36c5`  
		Last Modified: Thu, 05 Nov 2026 19:59:54 GMT  
		Size: 91.4 MB (91421944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:81c7730b8fec9d69a6e2efec2c0025efb655d141c1ffdb01b06dddbe4ead04d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5876260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ebdb16552a1a0e455266ca4abfd49a692b074762df0bc8067281f93834165b`

```dockerfile
```

-	Layers:
	-	`sha256:e2c492af6083e5be54b69ecdbe5c1ad95fddf5a33bc884ae502f6d28e797755a`  
		Last Modified: Thu, 05 Nov 2026 19:59:52 GMT  
		Size: 5.9 MB (5866780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8503585817b134d9fe00641757ee2c41cb8cc2d2d7554226f441cb2ee7866bd8`  
		Last Modified: Thu, 05 Nov 2026 19:59:52 GMT  
		Size: 9.5 KB (9480 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:ba01fe9176c8c12bbd11e33d50cecaef4ace76be60a1af47793562b974f653d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.0 MB (146976981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0c42696038284b93ff839248a11f72d85adc296cb9416c1bb07237ed719ff01`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:41 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:41 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:16:10 GMT
ARG version=17.0.21.0.11-1
# Thu, 05 Nov 2026 20:16:10 GMT
ARG resource_version=17.0.21.0.11
# Thu, 05 Nov 2026 20:16:10 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 05 Nov 2026 20:16:10 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:16:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:ec84068a79e503a31a893b9fd91255e63276a7d88c803d10789070f5f0d1907a`  
		Last Modified: Mon, 02 Nov 2026 19:56:57 GMT  
		Size: 64.8 MB (64805958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503bdfa0fe88ff28cabd5e67db43d14dfefdff310a896c9d346f1a2d21f24a57`  
		Last Modified: Thu, 05 Nov 2026 20:16:28 GMT  
		Size: 82.2 MB (82171023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:aab8f7fb0687a8076782b66406607065cc1b37dc80b8a9abf33551c8f20acf82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5668085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56967375a68354763096645716c55ad61aaf1cad3dceae24567409821fd381bf`

```dockerfile
```

-	Layers:
	-	`sha256:f8d7f4a4f1fab3b630ccd4c3d818c95217bc9d9afbba9d3a0902f0b7a5f8946c`  
		Last Modified: Thu, 05 Nov 2026 20:16:27 GMT  
		Size: 5.7 MB (5658524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfaddc0e3691c4b4ef311dc9274848deab672a0d60132e8c242c1bfe741cdc19`  
		Last Modified: Thu, 05 Nov 2026 20:16:26 GMT  
		Size: 9.6 KB (9561 bytes)  
		MIME: application/vnd.in-toto+json
