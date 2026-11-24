## `amazoncorretto:8u514-al2-native-jre`

```console
$ docker pull amazoncorretto@sha256:3a2e3cce5a1fb3e7456b48c0eb6a4eb70f18b1d82fa0f190f5f27588381d1a6f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u514-al2-native-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:51a84be0278cfe8e71562be410a538afa4e1757f3c92b8934a8dcbafa6eb9838
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123478716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4faee11b4d6dbe5f4031a7c49b0ed37a1f537ddd3e2b77a8137e4991377e48b3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:28:09 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:28:09 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:09:36 GMT
ARG version=1.8.0_514.b01-1
# Mon, 23 Nov 2026 21:09:36 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 23 Nov 2026 21:09:36 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:09:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:5578d26df6c6bdfe9ec366cb0917de223c7478cae192d8015a93c8b38b37ab17`  
		Last Modified: Sat, 21 Nov 2026 04:12:27 GMT  
		Size: 62.9 MB (62930101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cbffec6c61d93aa01c2f60a3b54481ccf424557ce712e1830c8c84def52da78`  
		Last Modified: Mon, 23 Nov 2026 21:09:50 GMT  
		Size: 60.5 MB (60548615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u514-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b3b06123c11c2e5d01848eda4ebe88c81ac16f1e4b64078774e68687dd8fff85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c63226b2eb4e9430c3d411c08880507dd4357e09f08e51531329d8ae993240f1`

```dockerfile
```

-	Layers:
	-	`sha256:ad60be79f0bad00bcc4fbcfea637adcdb3122658adc40535d75bd5ebac8a79a8`  
		Last Modified: Mon, 23 Nov 2026 21:09:49 GMT  
		Size: 5.9 MB (5859918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86b5215517b8237948a72048657fec755d63a318e788f0c1fae8358892b6b61c`  
		Last Modified: Mon, 23 Nov 2026 21:09:48 GMT  
		Size: 9.8 KB (9799 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u514-al2-native-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3d7b41dd89948bee9e8a8e23ea49c13e8eef8978c4d65a75a8184c17ab1aa7af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118053238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa16d172e2252bf4db94b1d0038316b50a290eca1453c9efed66aff747c8f2f7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:28:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:28:16 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:09:30 GMT
ARG version=1.8.0_514.b01-1
# Mon, 23 Nov 2026 21:09:30 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 23 Nov 2026 21:09:30 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:09:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:6260f7832ff0690923da519c8d6fed973ab9207dae75750f3de443c494a4ff4f`  
		Last Modified: Mon, 23 Nov 2026 20:28:32 GMT  
		Size: 64.8 MB (64796591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c762af3215d7b0c0d469c0198f51da411c16ef63401002abece2490f7c04185`  
		Last Modified: Mon, 23 Nov 2026 21:09:44 GMT  
		Size: 53.3 MB (53256647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u514-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:71d77674f5ffc84e9544a46f49247d7ae4a74e2e67443034595f2f1446ebff75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5671767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0bddb167aebc84892fed64b5ed5420489c15028a253f1d75a22ee4bdca4e4d`

```dockerfile
```

-	Layers:
	-	`sha256:3c07b779e1b185cd19f507302b52f6c8ef19d2f73118448101e25850583072c2`  
		Last Modified: Mon, 23 Nov 2026 21:09:43 GMT  
		Size: 5.7 MB (5661887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08c9a3a9a7b76bba96ad74725ba546e79dd799981534025c08007bb856a21b89`  
		Last Modified: Mon, 23 Nov 2026 21:09:43 GMT  
		Size: 9.9 KB (9880 bytes)  
		MIME: application/vnd.in-toto+json
