## `amazoncorretto:8-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:11a916d71040c4a3466a285467993688a20ecde1215c2d6919a52618e201a141
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e03d203c2fa01856e5259d8c186d59a7b5c5eccbf8b086b50d6beaf00b3c6d2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138095117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09c15330bab8cbf36563ba7282619c91a64c8f02b420cf651d442d40568292ad`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:38 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:38 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:58:37 GMT
ARG version=1.8.0_512.b09-1
# Thu, 05 Nov 2026 19:58:37 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 05 Nov 2026 19:58:37 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:58:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:0495c25dad2c432d2725b987a8e120fbea60c2f52ab965d1194495d66bd54a79`  
		Last Modified: Sat, 31 Oct 2026 04:10:58 GMT  
		Size: 62.9 MB (62938853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd32ab4a3501807f9c21cfbb8004a161557e022e5373e0af46cdb4102d816de`  
		Last Modified: Thu, 05 Nov 2026 19:58:54 GMT  
		Size: 75.2 MB (75156264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:16e590fa6a50a5daf0041bc9367cd0affd3a002ce9721d452da097938a236b05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6333272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b76a6c47e379a2bf8f61d105081a6f9d0241a7f1b1027d4f4a926af736e0b703`

```dockerfile
```

-	Layers:
	-	`sha256:8bb492cf53eaa0a6ae51ed40da788b0d65f01e90402889fdc69e625d9a17a9c9`  
		Last Modified: Thu, 05 Nov 2026 19:58:52 GMT  
		Size: 6.3 MB (6323435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39c7e8af1e14fabf9af0afb7f7f0c5419639e74f4ce9eab4ff5af7c5913c3b46`  
		Last Modified: Thu, 05 Nov 2026 19:58:52 GMT  
		Size: 9.8 KB (9837 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f3bf594ec4e8d42d9ea2041906f267f760d473e45f3f27513099850c0179c976
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132845954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfbe99e9d576f9ba41924b54c6f2d81b89a3e1445b62584d8aa1bb76488c68ba`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:41 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:41 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:14:55 GMT
ARG version=1.8.0_512.b09-1
# Thu, 05 Nov 2026 20:14:55 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 05 Nov 2026 20:14:55 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:14:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:ec84068a79e503a31a893b9fd91255e63276a7d88c803d10789070f5f0d1907a`  
		Last Modified: Mon, 02 Nov 2026 19:56:57 GMT  
		Size: 64.8 MB (64805958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abc845c36e86e73c005b8eddeac433267d72aa1ab78d3d29d0b3a72e498cec0`  
		Last Modified: Thu, 05 Nov 2026 20:15:11 GMT  
		Size: 68.0 MB (68039996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d944538e634fd46266d08328e630fdd4df2266a85415b0a27ed9fb659b1c92db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6135852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd080ea2119bad7ebe6b7d5825a955c82222993d75ef6104c5c43212b4cfe4fd`

```dockerfile
```

-	Layers:
	-	`sha256:258ece1c48df2069121e1a965311923b6714afb3b416bd063af2723df1bb327b`  
		Last Modified: Thu, 05 Nov 2026 20:15:09 GMT  
		Size: 6.1 MB (6125937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2748f6395852bc60cd3f9a1952af43cb2d1b4133d67aa6cee54b077929db037`  
		Last Modified: Thu, 05 Nov 2026 20:15:09 GMT  
		Size: 9.9 KB (9915 bytes)  
		MIME: application/vnd.in-toto+json
