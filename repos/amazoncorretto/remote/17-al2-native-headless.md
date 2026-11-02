## `amazoncorretto:17-al2-native-headless`

```console
$ docker pull amazoncorretto@sha256:b5ea9f1c0084c5a2b2e79c1ec19b8f71de303712b2e4ad1b48f1d7ad83123bed
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:c06fec70e8b0128cedc4ab88568e5a8dc7aa542cfc499ce162eea19ce7317138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.7 MB (150690854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a7a62d4ec4719fecc9766fb27ceb09b9674c430dc469750fd07c404a61a6e5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:56:12 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:56:12 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:07 GMT
ARG version=17.0.21.0.11-1
# Mon, 02 Nov 2026 20:11:07 GMT
ARG resource_version=17.0.21.0.11
# Mon, 02 Nov 2026 20:11:07 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 02 Nov 2026 20:11:07 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:0495c25dad2c432d2725b987a8e120fbea60c2f52ab965d1194495d66bd54a79`  
		Last Modified: Sat, 31 Oct 2026 04:10:58 GMT  
		Size: 62.9 MB (62938853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a2c4ee5862d42b98833c17b624ba3ee0fb64cb6c2c8c0da09c6eb2868aa6071`  
		Last Modified: Mon, 02 Nov 2026 20:11:26 GMT  
		Size: 87.8 MB (87752001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4f94400944af38597f2a4e2b3ef47d55f6a384e8b210a582fde53758d1ede59a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5642075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e903e79026952564b476ae2fc8815cb496aa99325202df168dc81817fffefe`

```dockerfile
```

-	Layers:
	-	`sha256:0f9533902ea9559a22709bc43f2a139e5fe0a9b0cf67f4c62e4cecbbe6d555e0`  
		Last Modified: Mon, 02 Nov 2026 20:11:24 GMT  
		Size: 5.6 MB (5632717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57bc72ecf4c4ee0e5340c372fc609614a3e2a038208fa79af3efff5199c929c8`  
		Last Modified: Mon, 02 Nov 2026 20:11:24 GMT  
		Size: 9.4 KB (9358 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a61e243776077163dd1a88c51f33227e926b66ad9a441b9af8e8a184321748fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144822922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba7507a1248d3b1ce2fcf626f92495d4f88643a8e0db7d68cedad297e87bb47c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:56:42 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:56:42 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:10:38 GMT
ARG version=17.0.21.0.11-1
# Mon, 02 Nov 2026 20:10:38 GMT
ARG resource_version=17.0.21.0.11
# Mon, 02 Nov 2026 20:10:38 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 02 Nov 2026 20:10:38 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:10:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:ec84068a79e503a31a893b9fd91255e63276a7d88c803d10789070f5f0d1907a`  
		Last Modified: Mon, 02 Nov 2026 19:56:57 GMT  
		Size: 64.8 MB (64805958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:237d6085e048a3be9d87973f411da396a504d4b02da78701c186e449c04c8f49`  
		Last Modified: Mon, 02 Nov 2026 20:10:55 GMT  
		Size: 80.0 MB (80016964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5545b431c6320bf79f8408ec842a89e96e11e8835f89a4417524cef2aa180ec1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5458430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d279773293ea862d9721036361acd582d579d80f3d504d74d5d6405f388a0be6`

```dockerfile
```

-	Layers:
	-	`sha256:57a5a40816590f606526796c78c1e561d7a0c834ee6eac4a07f41d34b0370a17`  
		Last Modified: Mon, 02 Nov 2026 20:10:53 GMT  
		Size: 5.4 MB (5448994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b84cd02b97a74fb0d2a94c23cf45b779c58a5ccaeec7804789133096307c9c3`  
		Last Modified: Mon, 02 Nov 2026 20:10:53 GMT  
		Size: 9.4 KB (9436 bytes)  
		MIME: application/vnd.in-toto+json
