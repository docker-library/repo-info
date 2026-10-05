## `amazoncorretto:17-al2-native-headless`

```console
$ docker pull amazoncorretto@sha256:b2e36a44dfd1d5f692bde2830e9bad09b82582268fafcdc8d0fa4ef142ff3f06
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:2bb0dc6a147e18188f4f3bb3287a7cf31aed8d85e01531fc20a239d4901e6c30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.6 MB (150588485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc83be9ae54a2a3a70e10ea578a00947db4299957b6b729c5c54d46f5c6e7767`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:29 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:29 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:43 GMT
ARG version=17.0.20.12-1
# Mon, 05 Oct 2026 18:43:43 GMT
# ARGS: version=17.0.20.12-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 05 Oct 2026 18:43:43 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:b96e0f346050b07fd2eef645589e3fcc5352909944ef2fcfa77ed05856b71920`  
		Last Modified: Thu, 01 Oct 2026 15:50:42 GMT  
		Size: 63.0 MB (62964912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e93c831d7fe17b27487fd185a133ff19a6149c2c5cf9bc819bc38b6b906600c`  
		Last Modified: Mon, 05 Oct 2026 18:44:00 GMT  
		Size: 87.6 MB (87623573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d7bc3f60ab9555512cc4135129a53b2693e7b8b2e9043858370ccb0d3cba73b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5642179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2241b6acc6771942a3273c98b06f7ab857f9d83202a9012552ca46ebbc8f0daf`

```dockerfile
```

-	Layers:
	-	`sha256:a50abf6db6eaddf8c1aeb80dc007c2e7218920f3f3aa1e0f2a9df75188511520`  
		Last Modified: Mon, 05 Oct 2026 18:43:58 GMT  
		Size: 5.6 MB (5632717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21289c4665a75596f18e786946909c39171768d755b7e650015ef251fd836977`  
		Last Modified: Mon, 05 Oct 2026 18:43:58 GMT  
		Size: 9.5 KB (9462 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:1032b02721723e81ebf88931aae7acd2b454946c5333044daaaa8bd86339d074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.6 MB (144592995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7998bfee1ab85761a59fcd90c4869c44211ffb22360e269972b1f8bd8643c49d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:25 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:25 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:42:57 GMT
ARG version=17.0.20.12-1
# Mon, 05 Oct 2026 18:42:57 GMT
# ARGS: version=17.0.20.12-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 05 Oct 2026 18:42:57 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:42:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:cfa04807aef79670ea0d208983fee28fd0a0f407387f8985681ece136ad06f67`  
		Last Modified: Mon, 05 Oct 2026 18:29:41 GMT  
		Size: 64.8 MB (64807371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ccdedd85f69b0e71d5ffa9a657ac6bc8ae797ffff962fae6bfe9f9ba97f353`  
		Last Modified: Mon, 05 Oct 2026 18:43:15 GMT  
		Size: 79.8 MB (79785624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e919f60e7568c9bd5f91e578a59d18481e90da06372307f0fab8cd2ae8824043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5458537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2937c705fffd0d6ef3cf9e26d3cbaa742d589d05adcfa6d9d734305c88278c9a`

```dockerfile
```

-	Layers:
	-	`sha256:46a1da83321c4c492f59866d8071a050c769779e01b4faad3b00e9fd21b92b89`  
		Last Modified: Mon, 05 Oct 2026 18:43:13 GMT  
		Size: 5.4 MB (5448994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:703414ef90344ff154e813def6be53ad9ab15f586bb8866c42f7e94d2caf5fba`  
		Last Modified: Mon, 05 Oct 2026 18:43:13 GMT  
		Size: 9.5 KB (9543 bytes)  
		MIME: application/vnd.in-toto+json
