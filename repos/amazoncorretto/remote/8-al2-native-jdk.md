## `amazoncorretto:8-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:87f1df47604f477a8124c560182508fa60ea3f15c1dc37dcaf10166665c8dda2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:90d9ec3c64441f06662bb1cdd0c108eebb361559ec93fe7054bce361a26e56e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138146702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d95a5083add3a1ffb1357fbc39f726124388b4ebd4fd188435250c10ed753d48`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 27 Aug 2026 18:29:06 GMT
COPY /rootfs/ / # buildkit
# Thu, 27 Aug 2026 18:29:06 GMT
CMD ["/bin/bash"]
# Thu, 27 Aug 2026 19:11:09 GMT
ARG version=1.8.0_504.b01-1
# Thu, 27 Aug 2026 19:11:09 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 27 Aug 2026 19:11:09 GMT
ENV LANG=C.UTF-8
# Thu, 27 Aug 2026 19:11:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:7b5924e8d322730e9c4e8894d8783a6efb8f7553b1186599f35e97dfa4b7372d`  
		Last Modified: Thu, 27 Aug 2026 17:56:29 GMT  
		Size: 63.0 MB (62973824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5beb81daabd79d86975d81eda1d74296ed287fcb2fb53b0f5531f4d0879b16`  
		Last Modified: Thu, 27 Aug 2026 19:11:24 GMT  
		Size: 75.2 MB (75172878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:02fa9103fa769c537b8505d26ca7b15df8a2849be748032c1b426d639da8bbf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6333256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d117894771d138dcd6869f0eb3f1dd3a7080ee03c16d4b318c3786404047e4`

```dockerfile
```

-	Layers:
	-	`sha256:5ecb7a96fd982b442ec7b599ba24de83aea0513218ab32248f97f2995aca6165`  
		Last Modified: Thu, 27 Aug 2026 19:11:23 GMT  
		Size: 6.3 MB (6323421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1971c1abb6dd8150b54c49ab3768179739adc477f6a78e5b8466d9e4562b5d31`  
		Last Modified: Thu, 27 Aug 2026 19:11:22 GMT  
		Size: 9.8 KB (9835 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:8cf242188f1ffbfae3b43f9268108bd5da81d43c55b3f66d3dd1c327973c88a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132750818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c8a9fe1bb6189da9c243e39cf7dda4f2f648b556e53c710bd6313af8feea270`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 27 Aug 2026 18:28:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 27 Aug 2026 18:28:04 GMT
CMD ["/bin/bash"]
# Thu, 27 Aug 2026 19:11:07 GMT
ARG version=1.8.0_504.b01-1
# Thu, 27 Aug 2026 19:11:07 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 27 Aug 2026 19:11:07 GMT
ENV LANG=C.UTF-8
# Thu, 27 Aug 2026 19:11:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:2b41bf6c0b7311e7e581c43ef89dcfd7673d76db2f93fc00703cb6394c88ccf2`  
		Last Modified: Thu, 27 Aug 2026 18:15:57 GMT  
		Size: 64.8 MB (64790556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8508fb98ad914cfce79de1e52b44ae62a060a280a9dc25fbc876293391911b7`  
		Last Modified: Thu, 27 Aug 2026 19:11:24 GMT  
		Size: 68.0 MB (67960262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:13c6a64e53d588a891e3b9a0e6ad4090d26fddc80a6bb55aa5c0c623ec72086f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6135840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6f06b2bfdbfca831c8cd551a62aa31b7cefa8bf4837beee779a842624cf409d`

```dockerfile
```

-	Layers:
	-	`sha256:53e0bae6fa1b3d109f1484ad9350717db3e05006b8990aa1472207ed41bcb75b`  
		Last Modified: Thu, 27 Aug 2026 19:11:22 GMT  
		Size: 6.1 MB (6125923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84e2e25ce313d0f71cd579d16905cff503ac57bebe40761b77a044c65fa076fd`  
		Last Modified: Thu, 27 Aug 2026 19:11:22 GMT  
		Size: 9.9 KB (9917 bytes)  
		MIME: application/vnd.in-toto+json
