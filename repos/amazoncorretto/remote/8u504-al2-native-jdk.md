## `amazoncorretto:8u504-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:1f584a3de772ab7800a2e35f2e7e6291e11c83773149c1f2d800e8312f9a2fcf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:bea14b1c51f016f0831926ad10d746f1fa8d2f138218a843bdeb6572183063fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138125070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:350e479ccc2ec00649a3be46584a502a1541a1578ac62561c31634dc8a2c30ec`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:29 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:29 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:16 GMT
ARG version=1.8.0_504.b01-1
# Mon, 05 Oct 2026 18:43:16 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 05 Oct 2026 18:43:16 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:b96e0f346050b07fd2eef645589e3fcc5352909944ef2fcfa77ed05856b71920`  
		Last Modified: Thu, 01 Oct 2026 15:50:42 GMT  
		Size: 63.0 MB (62964912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff7c52fcedb44104f3810ad0fe887fa17657cbc0e2441b4f13a9cca63205518b`  
		Last Modified: Mon, 05 Oct 2026 18:43:34 GMT  
		Size: 75.2 MB (75160158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:53d99738ca8f6501356de2adacb772f424c184bccf569a02a0e9f66d2e403fc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6333272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32472148240503043325200d698d561a81b1abf990d07af94febb2fd05a2c275`

```dockerfile
```

-	Layers:
	-	`sha256:3525c1cedb138f3876cef9b6cd56b99f8e323b01ec88eeed6c3f6eae0e281bb2`  
		Last Modified: Mon, 05 Oct 2026 18:43:32 GMT  
		Size: 6.3 MB (6323435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1270ff0a7b37b4e21b591f172cf17a7f864fff83805d58187cd5fa5dcdb22127`  
		Last Modified: Mon, 05 Oct 2026 18:43:32 GMT  
		Size: 9.8 KB (9837 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u504-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:65269ef3dc6cf16f0111cf2b6ab6797dac836b9d6406e7c502a9a3dd0d7e905e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132780139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc5a401d3da0bfda88049405e7ac7862187a93857e03b49f8c5dd7e8fbc79b4b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:25 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:25 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:42:16 GMT
ARG version=1.8.0_504.b01-1
# Mon, 05 Oct 2026 18:42:16 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 05 Oct 2026 18:42:16 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:42:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:cfa04807aef79670ea0d208983fee28fd0a0f407387f8985681ece136ad06f67`  
		Last Modified: Mon, 05 Oct 2026 18:29:41 GMT  
		Size: 64.8 MB (64807371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a93afa1926c4da2e73b33dc4b18e2c9639b1a32767875d4d904fab85e40e505`  
		Last Modified: Mon, 05 Oct 2026 18:42:33 GMT  
		Size: 68.0 MB (67972768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:626b458ac3b56a324c0132cb0d898fa0ff74f51044c1c82bbd40b9ce895efb10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6135854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cafc69e411f436505e7735b9220de6a4f27043266e9e358fefd1fd8347d22c0`

```dockerfile
```

-	Layers:
	-	`sha256:89a9a31615f6dd0d49c58ded9351c082e56221aef5fce60e48fa85374dfbef9c`  
		Last Modified: Mon, 05 Oct 2026 18:42:31 GMT  
		Size: 6.1 MB (6125937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9db2b849fedfd13e10423cc6784e464d59b80fe4b04ef95d75a4430c2fd5a1f3`  
		Last Modified: Mon, 05 Oct 2026 18:42:31 GMT  
		Size: 9.9 KB (9917 bytes)  
		MIME: application/vnd.in-toto+json
