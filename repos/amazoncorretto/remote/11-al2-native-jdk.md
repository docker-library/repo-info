## `amazoncorretto:11-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:a7199597951e82b541e58c96e5cc38f36743f56001beb45a5d97292c3d1220ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:fd37f32223261b5625119bb8aaac5d6bcdae8958d1e72e30d0dd21e6da134c0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224638306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0edc5bf37ac4346a34e042a9e33cfc00ec94c11e723aa9dae696dd041a1ba730`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:29 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:29 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:20 GMT
ARG version=11.0.32.12-1
# Mon, 05 Oct 2026 18:43:20 GMT
# ARGS: version=11.0.32.12-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 05 Oct 2026 18:43:20 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:b96e0f346050b07fd2eef645589e3fcc5352909944ef2fcfa77ed05856b71920`  
		Last Modified: Thu, 01 Oct 2026 15:50:42 GMT  
		Size: 63.0 MB (62964912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e01340be31954341d11f96f40a5939714f4c2843c80dd2fa40d11241fe6d6f6`  
		Last Modified: Mon, 05 Oct 2026 18:43:42 GMT  
		Size: 161.7 MB (161673394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4afa7ebf9f7ac97fb8862e5b86d7dee9637d13a9090cc8268bd020682651f8e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6004781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731889c0efd2fc0eefcaae9af576a1de11755d3e9e4f07327a1288acc651dbb2`

```dockerfile
```

-	Layers:
	-	`sha256:d66c5ff7ae0ae2aa3694b37a386ac8c3a59a6a606f8fb1f3e1d8758a666b14b2`  
		Last Modified: Mon, 05 Oct 2026 18:43:39 GMT  
		Size: 6.0 MB (5995223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f5c464e70f1a92d7ff8666f7dcfc9799999ea2f0f8b276ee9c827d81f02acd8`  
		Last Modified: Mon, 05 Oct 2026 18:43:39 GMT  
		Size: 9.6 KB (9558 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:9cacd57a9fd1af2bfafcca6b2583e40dac2ceb61a90d03fe1408efe40a7cd09d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216506359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85a21962bc7ab4e423d5ecc79ecc1e1fd31d6ec45279aea429a37dac117e1507`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:25 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:25 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:42:20 GMT
ARG version=11.0.32.12-1
# Mon, 05 Oct 2026 18:42:20 GMT
# ARGS: version=11.0.32.12-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 05 Oct 2026 18:42:20 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:42:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:cfa04807aef79670ea0d208983fee28fd0a0f407387f8985681ece136ad06f67`  
		Last Modified: Mon, 05 Oct 2026 18:29:41 GMT  
		Size: 64.8 MB (64807371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1302ee6c22759bee06deab469f97308c00bdff9f0e52420085b42c0d2f8244a4`  
		Last Modified: Mon, 05 Oct 2026 18:42:40 GMT  
		Size: 151.7 MB (151698988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:3db51746327448395ca6b63432616ef918e718f3e0cb1194126e31464a6995ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5797576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01ff91ebbc14bbd2bf9012d5c2f0207f67a31652d49635aeb1fef10dd83e2120`

```dockerfile
```

-	Layers:
	-	`sha256:0899096f7d754d68421ffc98c88571c266ffcae8b0fae12a3052b2848a5caf6c`  
		Last Modified: Mon, 05 Oct 2026 18:42:38 GMT  
		Size: 5.8 MB (5787937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0b2041140226f1a1be97e8a27d47a87c97ebf9889247cdecc9dd92ce3ed9266`  
		Last Modified: Mon, 05 Oct 2026 18:42:37 GMT  
		Size: 9.6 KB (9639 bytes)  
		MIME: application/vnd.in-toto+json
