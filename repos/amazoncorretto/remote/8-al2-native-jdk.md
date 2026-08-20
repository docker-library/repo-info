## `amazoncorretto:8-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:7c9940aa1a059267ba94d8f61d81409172ab0623b4a1c42a0efaf96256d2571a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:5d3e11c00f868904f441f0e829eac53f2bf351d46853f6770020d9cd098647f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138146497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd3a8b026a62d1644472379e0c09cbb32174612cdb0b59389f563a767ecc577b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:56:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:56:04 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:19:04 GMT
ARG version=1.8.0_504.b01-1
# Thu, 20 Aug 2026 17:19:04 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 20 Aug 2026 17:19:04 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:19:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:7c706b7b88f32b6151af294498eecab3a3d1918791c514fd83c5da5c67eb0115`  
		Last Modified: Tue, 18 Aug 2026 22:35:39 GMT  
		Size: 63.0 MB (62974016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4b8f768e94d56863fcdccf9b1bb0b9dae4a65688c133aade4bd48c6c658118f`  
		Last Modified: Thu, 20 Aug 2026 17:19:21 GMT  
		Size: 75.2 MB (75172481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a0d71dbbb0c09156aeb10ffeda9dad5dda051a70b5f3abff991cc8afeb5eaada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6333256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab90fd4317376b8e07292be393ecf4367d906cc48432b3472a79b71e8007cac`

```dockerfile
```

-	Layers:
	-	`sha256:5f3234cbbc51eb6b86885f38645ab4212b3ec6e7fc584d2e5af982a214952300`  
		Last Modified: Thu, 20 Aug 2026 17:19:19 GMT  
		Size: 6.3 MB (6323421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cdc0dac0addc59f9d6c62d7d6aed9aea6ebccff675db80428ca1993566d2b81`  
		Last Modified: Thu, 20 Aug 2026 17:19:19 GMT  
		Size: 9.8 KB (9835 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:05f915a057f06e4d5c08ee3ee347cb34944f547ebb7bf415ad368ff16da611d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.7 MB (132749456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd03b8b30645fc8d6c66624246509c6503c00ce97af0e535c0fd4c1eee0460d2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:50 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:50 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:15:46 GMT
ARG version=1.8.0_504.b01-1
# Thu, 20 Aug 2026 17:15:46 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 20 Aug 2026 17:15:46 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:15:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:487930dafcbd912a1d47c9e792c2aea4e910496ba2af16620c70488227a4b1e7`  
		Last Modified: Wed, 19 Aug 2026 14:14:07 GMT  
		Size: 64.8 MB (64789116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fc74267f6d17e4fa8a4158637ef5c75784e5271da405ae0e4bf27567295169a`  
		Last Modified: Thu, 20 Aug 2026 17:16:02 GMT  
		Size: 68.0 MB (67960340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f032a3ce3f376045558f42d0d467a6b6c5b6494d41f50e8e4973cd8d6544a9fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6135838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b57ca4ea85dced8a6fe21ad0b8ed9a1f629c189477c884d11630c23efb0193`

```dockerfile
```

-	Layers:
	-	`sha256:e6e1f9e4c42914d89bc493451237f8629af9cb0bfac6562138224e331aab8327`  
		Last Modified: Thu, 20 Aug 2026 17:16:00 GMT  
		Size: 6.1 MB (6125923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11ad4af04a6adf6e6f866426d325850e1ff82f25073a6fdef35a29fc446e21ff`  
		Last Modified: Thu, 20 Aug 2026 17:16:00 GMT  
		Size: 9.9 KB (9915 bytes)  
		MIME: application/vnd.in-toto+json
