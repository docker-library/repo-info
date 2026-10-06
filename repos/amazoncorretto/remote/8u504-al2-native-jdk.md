## `amazoncorretto:8u504-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:4d961dc54c605f701e4880418afd481f53a1985868e8d303f22dd6766f0e7f5d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u504-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:dbaea86195219fba34e11217db1ab638273bdcd925c1dde490607d61f6dba2de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138113576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:534fefc49530011ecadd9be3aa7e78699ab3f5fd2214490570e79a237ac637a2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:29 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:29 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 21:36:04 GMT
ARG version=1.8.0_504.b04-1
# Mon, 05 Oct 2026 21:36:04 GMT
# ARGS: version=1.8.0_504.b04-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 05 Oct 2026 21:36:04 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:36:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:b96e0f346050b07fd2eef645589e3fcc5352909944ef2fcfa77ed05856b71920`  
		Last Modified: Thu, 01 Oct 2026 15:50:42 GMT  
		Size: 63.0 MB (62964912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:837224acd0f1d04e6cd0578f347ae91ac43e9e879925a0c5c6e72776f20e5476`  
		Last Modified: Mon, 05 Oct 2026 21:36:19 GMT  
		Size: 75.1 MB (75148664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:1bf079d3d7c1ae474f2f1ce63f281ac4fe3af2df1ac21a00dcd5065ae4f333a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6333272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bec22fdc9bda80c3c8338393b27024a5a36f3fc1e918461c91ae2f4509ccc50`

```dockerfile
```

-	Layers:
	-	`sha256:13422d5abd11111665d29f07ed5a7fa1b3232c58432889b547e385ea3af9a939`  
		Last Modified: Mon, 05 Oct 2026 21:36:18 GMT  
		Size: 6.3 MB (6323435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa6db201fb43b741bba80f2e0dc4a994a5d7becd5ea9a5804787cd57d399aeec`  
		Last Modified: Mon, 05 Oct 2026 21:36:17 GMT  
		Size: 9.8 KB (9837 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u504-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:0710471eb91262d90490735bde19f679e22dcca8c9931fcefd61e3fe4c4a8471
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132768518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb958533da207503f7fc90d94be2d79b5fafd3744dae24416c480fb19fd75405`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:25 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:25 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 21:41:18 GMT
ARG version=1.8.0_504.b04-1
# Mon, 05 Oct 2026 21:41:18 GMT
# ARGS: version=1.8.0_504.b04-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 05 Oct 2026 21:41:18 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:41:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:cfa04807aef79670ea0d208983fee28fd0a0f407387f8985681ece136ad06f67`  
		Last Modified: Mon, 05 Oct 2026 18:29:41 GMT  
		Size: 64.8 MB (64807371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a7180954d7392bbf5ad7c4a019811c4c7c0382b3ea21ea2480067b711458da`  
		Last Modified: Mon, 05 Oct 2026 21:41:34 GMT  
		Size: 68.0 MB (67961147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u504-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:92830895f8374e6ac18c72891f3a6255864534eaff538422383fd39140602b5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6135854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9527b4ddb268b1565c4eaf735956444fc87e60dae144170d8b3fb61f0c7800a`

```dockerfile
```

-	Layers:
	-	`sha256:ddd2e1875acacf38b625bddde96d40b94907ce9ada0b584b17defe623b242003`  
		Last Modified: Mon, 05 Oct 2026 21:41:33 GMT  
		Size: 6.1 MB (6125937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8007d3e617d6f62bb0dab5c76bf874f2c61ba1c0ff9fd554d5a0c2eb7043e863`  
		Last Modified: Mon, 05 Oct 2026 21:41:32 GMT  
		Size: 9.9 KB (9917 bytes)  
		MIME: application/vnd.in-toto+json
