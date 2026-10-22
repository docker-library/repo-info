## `amazoncorretto:8u504-al2-native-jre`

```console
$ docker pull amazoncorretto@sha256:3a571658fed346f059ca6df96ab74d1e89ebbc5099745a8d28342a50659fa911
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-al2-native-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:0b7a9fc91887e7db8f0b2e78928a37ee1f691add29e7b8d98281a00d210ad94e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123536848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d851e5b8c93989600b588767e49c93885148612fbf578152de8961a6ddf3850a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 22:45:15 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 22:45:15 GMT
CMD ["/bin/bash"]
# Wed, 21 Oct 2026 23:27:19 GMT
ARG version=1.8.0_504.b04-1
# Wed, 21 Oct 2026 23:27:19 GMT
# ARGS: version=1.8.0_504.b04-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Wed, 21 Oct 2026 23:27:19 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:27:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:b96e0f346050b07fd2eef645589e3fcc5352909944ef2fcfa77ed05856b71920`  
		Last Modified: Thu, 01 Oct 2026 15:50:42 GMT  
		Size: 63.0 MB (62964912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35f783ba50b066d4c2ebc25b2848b411a9c3727978803cc81ea13333ec70067`  
		Last Modified: Wed, 21 Oct 2026 23:27:34 GMT  
		Size: 60.6 MB (60571936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:71481bf297f3121992b00ad34e30bf7a1dfae3c6257ef5cc0e4f427de98542b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2beaa2772dcb3a2183eb492b1e338688d94630633342e3462b22c943065bf6e`

```dockerfile
```

-	Layers:
	-	`sha256:a95b4ee4ca8e98bfc7623603a04a1fd29f47af48946a06ae1298949bd9a8a7bc`  
		Last Modified: Wed, 21 Oct 2026 23:27:32 GMT  
		Size: 5.9 MB (5859918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:110312c76dbeb8b2f89c075caff35d63315acd0fd9ec916268161e71a15427db`  
		Last Modified: Wed, 21 Oct 2026 23:27:32 GMT  
		Size: 9.8 KB (9800 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u504-al2-native-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:589001b12bc6ac89b1890c13dbdd402441bc603e0c4edb959bcced8cc2e53b4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (118036559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7ba44bbe24ed085239bd7b0b999209ce1f8218f6100912a704a67e2411ceb59`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 21 Oct 2026 23:11:49 GMT
COPY /rootfs/ / # buildkit
# Wed, 21 Oct 2026 23:11:49 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 00:18:58 GMT
ARG version=1.8.0_504.b04-1
# Thu, 22 Oct 2026 00:18:58 GMT
# ARGS: version=1.8.0_504.b04-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 22 Oct 2026 00:18:58 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 00:18:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:cfa04807aef79670ea0d208983fee28fd0a0f407387f8985681ece136ad06f67`  
		Last Modified: Mon, 05 Oct 2026 18:29:41 GMT  
		Size: 64.8 MB (64807371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc3c270f69ea62989a62d9d79c0d7d01fdbe52cdce5a4ca6fdc68c635cb0063`  
		Last Modified: Thu, 22 Oct 2026 00:19:13 GMT  
		Size: 53.2 MB (53229188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9ffcb71f2f0fb7e47ba406b3a47b9b356614f5fbd8ccca491c04233acc54d00a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5671767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:679b71f8c22d8ad5464fa256338bc143ef5c0ea0ff01c9f92dfdc3cc9d3b6ae5`

```dockerfile
```

-	Layers:
	-	`sha256:3a7c0147464f75dad1de4498e62f6725bfae3191fab2500582ce077edcee58bb`  
		Last Modified: Thu, 22 Oct 2026 00:19:11 GMT  
		Size: 5.7 MB (5661887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a8adb4bb0b61b4562f366d45d3d9c3957f995f578492706361dc291591e61d2`  
		Last Modified: Thu, 22 Oct 2026 00:19:11 GMT  
		Size: 9.9 KB (9880 bytes)  
		MIME: application/vnd.in-toto+json
