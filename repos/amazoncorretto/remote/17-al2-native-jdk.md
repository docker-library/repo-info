## `amazoncorretto:17-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:add5015e857258002726ac76f4ee04b40435f9eb0c9887c7f903b2d742cf9835
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:110dc65bf5b4b3cb52aa0f553fbd2e39b2bcb8fa716200306a01ef3131033573
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.0 MB (228988309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54e418e877bc236127839a5c0ff993329d848e2f70e3b097c4fef4e10ac34f1e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:28:09 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:28:09 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:11:10 GMT
ARG version=17.0.21.1.2-1
# Mon, 23 Nov 2026 21:11:10 GMT
ARG resource_version=17.0.21.1.2
# Mon, 23 Nov 2026 21:11:10 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && if [[ ${rpm} != *jmods* ]]; then       yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );       fi;       done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 23 Nov 2026 21:11:10 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:11:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:5578d26df6c6bdfe9ec366cb0917de223c7478cae192d8015a93c8b38b37ab17`  
		Last Modified: Sat, 21 Nov 2026 04:12:27 GMT  
		Size: 62.9 MB (62930101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b673731c4d637c630a5ae005b36b704e166b78973c3dedd64943f61a2c8dba0`  
		Last Modified: Mon, 23 Nov 2026 21:11:32 GMT  
		Size: 166.1 MB (166058208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a5bd080671e1abf88c466626ec7653de2ad6f01297f8ad5607e375f823363438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5982727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:174a6ffbe984baf2b902d029a974ee0319487560ba767b49e4b249dbb1c96f40`

```dockerfile
```

-	Layers:
	-	`sha256:270f0b6e76daafac4257fed35dfe0140b547932cc6d7550002f16830bc101cf7`  
		Last Modified: Mon, 23 Nov 2026 21:11:28 GMT  
		Size: 6.0 MB (5972778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:142331d861a1b9a23f4894e7b9350315015a3ae65396b6629e5e67f48f20edc7`  
		Last Modified: Mon, 23 Nov 2026 21:11:28 GMT  
		Size: 9.9 KB (9949 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:baed318cf5dbc7dc45e6f73afe12b41f3c59025c51ae66f159fdbe824242ee48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.4 MB (221377733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5632a97aeea0f63d6b4cdf75f9c13f1ad1501f63c1c7b5600ad51a7ec22e78d2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:28:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:28:16 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:11:16 GMT
ARG version=17.0.21.1.2-1
# Mon, 23 Nov 2026 21:11:16 GMT
ARG resource_version=17.0.21.1.2
# Mon, 23 Nov 2026 21:11:16 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && if [[ ${rpm} != *jmods* ]]; then       yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );       fi;       done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 23 Nov 2026 21:11:16 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:11:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:6260f7832ff0690923da519c8d6fed973ab9207dae75750f3de443c494a4ff4f`  
		Last Modified: Mon, 23 Nov 2026 20:28:32 GMT  
		Size: 64.8 MB (64796591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd1e8a2554d846bdc47c8f2af99525fe6184493bc95ced5d2d0737232387c74`  
		Last Modified: Mon, 23 Nov 2026 21:11:38 GMT  
		Size: 156.6 MB (156581142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c7c5812b17ad648d3e8f2bb23f7f6409d1fd2e8be4a61dea5ce0d25be2aedf2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5774678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e7abb70aefebddededd4c9d511ff868f6d809e2a3e82244ef99d3a861a8c5a3`

```dockerfile
```

-	Layers:
	-	`sha256:109736bffe66b492b4f67e178732a41cdfe9ba34a4801ea8f65c0de64fde7775`  
		Last Modified: Mon, 23 Nov 2026 21:11:34 GMT  
		Size: 5.8 MB (5764649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53f7fc4f7ea4e590f0369170b4fd3a5e1a7501b5265ff970f477fb4f10c5ec82`  
		Last Modified: Mon, 23 Nov 2026 21:11:34 GMT  
		Size: 10.0 KB (10029 bytes)  
		MIME: application/vnd.in-toto+json
