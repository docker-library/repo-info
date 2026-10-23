## `amazoncorretto:11-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:76567c3d8477267c0091ae94a4d4a4bc7e28df9b5b5d27b817ca31a36e7e7b13
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b969e3fa6a62d086170497a7caea664d788a1212933152173e05b0399122a08d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.7 MB (224667266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9344e3531a93091382e3e3c0a61f05364e771ee48f4d582a153df81948a1160`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:58 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:58 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:09:40 GMT
ARG version=11.0.32.12-1
# Fri, 23 Oct 2026 01:09:40 GMT
# ARGS: version=11.0.32.12-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 23 Oct 2026 01:09:40 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:09:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:9653aa1582ef32674aa011f26c881e60e6136564952476129f41b0f5fee0c8ae`  
		Last Modified: Fri, 23 Oct 2026 00:42:11 GMT  
		Size: 63.0 MB (62973900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4c7a3e09ddb5a5f399987b547b55d057db8108ae5f83b33f4d7825581e2054`  
		Last Modified: Fri, 23 Oct 2026 01:10:01 GMT  
		Size: 161.7 MB (161693366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6b80af4fbec3d4c74a569ec4a9708f914b7e201882e081f30a3f150462cc5d55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6004782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00c549a7e63a399f88c4cb9c279ca5cb69c5b8a72114a302bc3df6ba25132660`

```dockerfile
```

-	Layers:
	-	`sha256:57bbd39fd977d7c7d1d9cd08061fd7e4322156961a1a8541c8b857747593710c`  
		Last Modified: Fri, 23 Oct 2026 01:09:57 GMT  
		Size: 6.0 MB (5995223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23b4c5246bcbed6bc1aa12c3fb7d82922f4dff870988546925bc0beb0ff5992c`  
		Last Modified: Fri, 23 Oct 2026 01:09:57 GMT  
		Size: 9.6 KB (9559 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:4198c8c869e2f58c82178b7c44c280b4d9b7ae3b7761c3d7fa4531ce32bbd3fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.6 MB (216620660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17f2616e45c3ecf6a92204447980f1ba516521266af7b6f5204eb6cbcba5d612`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:41 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:41 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:09:52 GMT
ARG version=11.0.32.12-1
# Fri, 23 Oct 2026 01:09:52 GMT
# ARGS: version=11.0.32.12-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 23 Oct 2026 01:09:52 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:09:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:90a41cb984a9307d13eb248c95fd13ac0a0631a9e189ff342b8a62cd0d8a0d7d`  
		Last Modified: Fri, 23 Oct 2026 00:41:56 GMT  
		Size: 64.8 MB (64835719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba61e4b258f2304dae2ba118b362ab7121f45c7930adeffe3452908fb485392c`  
		Last Modified: Fri, 23 Oct 2026 01:10:14 GMT  
		Size: 151.8 MB (151784941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:699f5219e73ec1204ed49e1c130a62f2a7edcf09a84c50f6829bcd8055df848d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5797576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4721ae2c51bedbb8cb268acfacab2e2d3c0d15ac99b7c0f0a4a731282993f7c9`

```dockerfile
```

-	Layers:
	-	`sha256:2405d6ddee39e91e780f7a30bdae541ec4450c1c398aeb01737833f5b5e6b396`  
		Last Modified: Fri, 23 Oct 2026 01:10:11 GMT  
		Size: 5.8 MB (5787937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3d914d07594e73ac5ff06dae37c1c7a7d7841637c66dfd81117495d24a42a3c`  
		Last Modified: Fri, 23 Oct 2026 01:10:10 GMT  
		Size: 9.6 KB (9639 bytes)  
		MIME: application/vnd.in-toto+json
