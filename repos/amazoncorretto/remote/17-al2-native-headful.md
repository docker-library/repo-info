## `amazoncorretto:17-al2-native-headful`

```console
$ docker pull amazoncorretto@sha256:c677addbb017fa55d7d8adcefb3bd489eab9d6e2e8731d00d6854ac3348097cd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e1793b6aa5463970158cb7601eb9b75e8161fe3230ebb29bfac438e4e8b69763
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.3 MB (155283142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeb8e8a4298e4d0beb9c53eeb7fd82551fbbb72a6618e8a4997a961ac4083b33`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:58 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:58 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:44:34 GMT
ARG version=17.0.21.0.11-1
# Fri, 30 Oct 2026 19:44:34 GMT
ARG resource_version=17.0.21.0.11
# Fri, 30 Oct 2026 19:44:34 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 30 Oct 2026 19:44:34 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:44:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:9653aa1582ef32674aa011f26c881e60e6136564952476129f41b0f5fee0c8ae`  
		Last Modified: Fri, 23 Oct 2026 00:42:11 GMT  
		Size: 63.0 MB (62973900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1561400330e3b0023a178592e7d2dc1ebbf0f46c0fd24b1681835615a40f1f4`  
		Last Modified: Fri, 30 Oct 2026 19:44:53 GMT  
		Size: 92.3 MB (92309242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8845cd6211647baede01af4a2cb534da42174f6de941d7adf51c62fa1c05ec7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5876261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:198b7282ae3841f5b2d9cae6a1fe922234dcf253e1b53fa0222cf3aba5e0fc36`

```dockerfile
```

-	Layers:
	-	`sha256:3543ab474b9bf9d6ae47c41342af5a7ed776489a4f32118312c066e4d61e553a`  
		Last Modified: Fri, 30 Oct 2026 19:44:51 GMT  
		Size: 5.9 MB (5866780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:652a955502d832e7f486cf4ff006ed8151a65bad04231fa2ee5884a9b120d023`  
		Last Modified: Fri, 30 Oct 2026 19:44:50 GMT  
		Size: 9.5 KB (9481 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:fb696e8fda6423b5ffda2476f0a9422cbec97f5f922564d4df6c0454222c5202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.9 MB (147881143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d4ef48ae09e62e18675f59757380c17e97748f3c9f7fbc76e8a9173a7dc6c2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:41 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:41 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:44:34 GMT
ARG version=17.0.21.0.11-1
# Fri, 30 Oct 2026 19:44:34 GMT
ARG resource_version=17.0.21.0.11
# Fri, 30 Oct 2026 19:44:34 GMT
# ARGS: version=17.0.21.0.11-1 resource_version=17.0.21.0.11
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 30 Oct 2026 19:44:34 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:44:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:90a41cb984a9307d13eb248c95fd13ac0a0631a9e189ff342b8a62cd0d8a0d7d`  
		Last Modified: Fri, 23 Oct 2026 00:41:56 GMT  
		Size: 64.8 MB (64835719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3cbf52656f1f6bdfa74414ac5d145085ef684a47ab6545bc7086bf3d00ecb1`  
		Last Modified: Fri, 30 Oct 2026 19:44:52 GMT  
		Size: 83.0 MB (83045424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9efde8de8d1c1f6beaf6d4b39f8485458d33002c9304cc70c75f7a6a2a85456d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5668085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0f62946fe0fb27b25b16de9c4128af8ae13d87e8ffe7ab8a7814ae288e2c62b`

```dockerfile
```

-	Layers:
	-	`sha256:973f69f98bb4f8702639e1112294a3e29fa815135d2d592f969ef1c3ade986c8`  
		Last Modified: Fri, 30 Oct 2026 19:44:50 GMT  
		Size: 5.7 MB (5658524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81bc98fbd4f6ed4ad6ae543f08368af01d9fbebc84d1a764f5347b39a869b6ad`  
		Last Modified: Fri, 30 Oct 2026 19:44:50 GMT  
		Size: 9.6 KB (9561 bytes)  
		MIME: application/vnd.in-toto+json
