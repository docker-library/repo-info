## `amazoncorretto:11-al2-native-headless`

```console
$ docker pull amazoncorretto@sha256:3d8f7d77a269e395fb9b718fd77e633c0492de6ffa08b4df16e3e35b9630daf3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-native-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:dc204cfcd15428305977aad3af1622b9e1b2936a5dec7372abb8f589f3ac00b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.4 MB (217364941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c072c46607e1291c5dc8721411e5f825a9ca7a541d12584456f2b5296dc91682`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:47 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:47 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:12:12 GMT
ARG version=11.0.31.11-1
# Sat, 18 Jul 2026 00:12:12 GMT
# ARGS: version=11.0.31.11-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Sat, 18 Jul 2026 00:12:12 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:12:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:06aa8a8412ddcd11af3d73b72c1ed58ba902c9428472a38c780460385a530107`  
		Last Modified: Sat, 11 Jul 2026 02:13:53 GMT  
		Size: 63.0 MB (62957295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6a33be91762e944e9a41ce5ae5c3f7ebf0c6caf039a81a1c2268c0a6812af1a`  
		Last Modified: Sat, 18 Jul 2026 00:12:34 GMT  
		Size: 154.4 MB (154407646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b697ec912db72da20b7292672b8d253d44b0eaa0685fdbf842045d3f18db512c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5692868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed7e54fbd0bccafc89786e54606d3e1f6e1166738c155c37f59e3e22e87be5f1`

```dockerfile
```

-	Layers:
	-	`sha256:f482f78b2ffb77ba02a738c145c998cc8a68dc68cc02d038b6037ff5490b2153`  
		Last Modified: Sat, 18 Jul 2026 00:12:30 GMT  
		Size: 5.7 MB (5683406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47a9431bab19d262c3399c5a1a6a32f4d7f9ef4576251f04fea223f88aca9d02`  
		Last Modified: Sat, 18 Jul 2026 00:12:30 GMT  
		Size: 9.5 KB (9462 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-native-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:56737b26a3a7e16212e83112234a30cf02804ba071e52c045dff85b2f935a5a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.4 MB (211374981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bbb34b8267822b8804b4205a1e866230d8b955ba5fc01cd952a9117b12d2402`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:40 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:40 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:11:58 GMT
ARG version=11.0.31.11-1
# Sat, 18 Jul 2026 00:11:58 GMT
# ARGS: version=11.0.31.11-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Sat, 18 Jul 2026 00:11:58 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:11:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:7da2ddf99845df800b9ce1ec0c9889076ad3ba27fd4e61b3ef728e424f1672f1`  
		Last Modified: Mon, 13 Jul 2026 18:19:45 GMT  
		Size: 64.8 MB (64790249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfce70fe1bdd8bcd96d272194a3b4e2e98316ca719786773b8c97f4c5ea79653`  
		Last Modified: Sat, 18 Jul 2026 00:12:19 GMT  
		Size: 146.6 MB (146584732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6efe6a78678e6e352a88a8b498ad495d71309aa042134264f3675fae0ebafca7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5511416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0786b21ec1f381705c0c3d71fd3baa7a02120a538f8d860aaa2be867f6e3b806`

```dockerfile
```

-	Layers:
	-	`sha256:35d9e584a611d6297a35625308e253761d0b76805e7b0f0742382767bf0e3fd2`  
		Last Modified: Sat, 18 Jul 2026 00:12:16 GMT  
		Size: 5.5 MB (5501874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40450e65a695f99a2327b20c5f54b78186ec8f048481e80cf3536fa546e42700`  
		Last Modified: Sat, 18 Jul 2026 00:12:15 GMT  
		Size: 9.5 KB (9542 bytes)  
		MIME: application/vnd.in-toto+json
