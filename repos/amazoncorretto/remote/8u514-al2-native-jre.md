## `amazoncorretto:8u514-al2-native-jre`

```console
$ docker pull amazoncorretto@sha256:9ba367f42a3fb774deb64126d86dc339f8aa3706ecdf4268cc2ecb4bf81b0603
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u514-al2-native-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ab823de5ff772811044e27f2ff7336a06a891090f7f343b54d3f47165e97a5aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123479326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcf73f52798d13e7b569ec70f6ba9e6cfc317d2e22b9cd7962a6a4d0e5c79b87`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:31 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:45:45 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 02:45:45 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Wed, 18 Nov 2026 02:45:45 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:b4fd738aaa080ce3c70f1d92c80440b4bf31c13437f6276731da3fd6a37e3dd2`  
		Last Modified: Sat, 14 Nov 2026 04:13:58 GMT  
		Size: 62.9 MB (62929597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f403a8dca62111436b76dbd0b2dca0a9470d1343068b2f6e39bf42307ee1df`  
		Last Modified: Wed, 18 Nov 2026 02:46:01 GMT  
		Size: 60.5 MB (60549729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u514-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:65cb06007ca75b667557184aca3cad5dbf6668ed738afb37c7c6927d19488d51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e328f5bff5a0713df94377804bb74eb2ec7542ae4a4b757ec3ae639157a5c031`

```dockerfile
```

-	Layers:
	-	`sha256:78f18081f3fa1f01693487a5c7d8fcafa80858bf3aa107f61d12fc4fe9020bf9`  
		Last Modified: Wed, 18 Nov 2026 02:46:00 GMT  
		Size: 5.9 MB (5859918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d7f6a5eeb3e37f9c9237150c49fc9756902a42f39ef70a77cfbde5a68873c64`  
		Last Modified: Wed, 18 Nov 2026 02:46:00 GMT  
		Size: 9.8 KB (9800 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u514-al2-native-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7d397bef6ce245ad485226f27943ac9459ea8842dde864d5874e8afdd8bbd651
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (118029494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94444490cb1d1031ffc2b5b0a739c06a98497bd65c32131110f5023f78cc0133`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:53 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:53 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:45:48 GMT
ARG version=1.8.0_514.b01-1
# Wed, 18 Nov 2026 02:45:48 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Wed, 18 Nov 2026 02:45:48 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:45:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:440cc69e8f9d2c85d2f689d3242bc99b93cac55a936a1cbebf5a197a5e006a99`  
		Last Modified: Mon, 16 Nov 2026 22:30:09 GMT  
		Size: 64.8 MB (64776402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7192abae6d3ee368b7ba66eb8c3688e9bde6845a5bf0b4d4acb49616d727ddd6`  
		Last Modified: Wed, 18 Nov 2026 02:46:03 GMT  
		Size: 53.3 MB (53253092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u514-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:00faa00f72066012dfcce737f3595c04928bd9f5dbd6e072e190b36549a65fcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5671767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d72791ae9cdcb98897b56c833bc4b63b765395e092156c6a228a927b9c9345e`

```dockerfile
```

-	Layers:
	-	`sha256:8521550e9d284aa39d522188693ebb5d343e94312a4690dc9e9a829b1640c27f`  
		Last Modified: Wed, 18 Nov 2026 02:46:01 GMT  
		Size: 5.7 MB (5661887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:455bc94e0db604d330f43a3963ae5296dc4f64c6d4d28d051319c9f4ca11c761`  
		Last Modified: Wed, 18 Nov 2026 02:46:01 GMT  
		Size: 9.9 KB (9880 bytes)  
		MIME: application/vnd.in-toto+json
