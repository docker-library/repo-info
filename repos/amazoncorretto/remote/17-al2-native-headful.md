## `amazoncorretto:17-al2-native-headful`

```console
$ docker pull amazoncorretto@sha256:f44a9996369df61aa021dc7adac9acf92ab1fe977ceab233b3727baab2feb906
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:6e770cbb770051836393cd7e4c763644fc4da841b51b9a53a048f3de92869480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.4 MB (154389238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730b8712f1329c61e3820ecaaaf736d130ec16561cf422721bf85ecbf231f4c0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:58 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:58 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:08:36 GMT
ARG version=17.0.21.0.10-1
# Fri, 23 Oct 2026 18:08:36 GMT
ARG resource_version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:36 GMT
# ARGS: version=17.0.21.0.10-1 resource_version=17.0.21.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 23 Oct 2026 18:08:36 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:9653aa1582ef32674aa011f26c881e60e6136564952476129f41b0f5fee0c8ae`  
		Last Modified: Fri, 23 Oct 2026 00:42:11 GMT  
		Size: 63.0 MB (62973900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:212326b7cd3a677f4c530b5a4040658b9940a1ab9f59d6dbd1ee198583cac13c`  
		Last Modified: Fri, 23 Oct 2026 18:08:54 GMT  
		Size: 91.4 MB (91415338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b88fa4c603faf42cba04de22a20769ae58fb26cbf2e2d0da081d38e76d140d19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5876260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:764fc77107a43f3fb5629bd0e3fbb0552e04047ebde6af350ed85aa7e94316e8`

```dockerfile
```

-	Layers:
	-	`sha256:feb048d67322390816934bb877fcb14ae353cd0199219d9e6c04bc9916ff7494`  
		Last Modified: Fri, 23 Oct 2026 18:08:53 GMT  
		Size: 5.9 MB (5866780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c570ae9a01a6509f4584f1b008a4330e3057fe9996a6840f8c4dcb20dc8f915`  
		Last Modified: Fri, 23 Oct 2026 18:08:52 GMT  
		Size: 9.5 KB (9480 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7ee75e0846d9d097a15987a0584e5a063a47619376bd4453aef147473781b165
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.0 MB (146999659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:319e63734118c1642efe814c164938825188da68ab4bf27010727f63506089dc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:41 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:41 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:08:23 GMT
ARG version=17.0.21.0.10-1
# Fri, 23 Oct 2026 18:08:23 GMT
ARG resource_version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:23 GMT
# ARGS: version=17.0.21.0.10-1 resource_version=17.0.21.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 23 Oct 2026 18:08:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:90a41cb984a9307d13eb248c95fd13ac0a0631a9e189ff342b8a62cd0d8a0d7d`  
		Last Modified: Fri, 23 Oct 2026 00:41:56 GMT  
		Size: 64.8 MB (64835719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42cc0e2493f3eb1fa653721923d1fb1e10d0c6f18a2ea6306bc5588b4ec1133`  
		Last Modified: Fri, 23 Oct 2026 18:08:41 GMT  
		Size: 82.2 MB (82163940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b7cb020fba277e3ac5ecd47b3a9911a5cebd5c3b2193ef5f7ac6a678907a7ee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5668085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d354fd8a7a33a6ecc369500b358882e719bb59f93c0a11a41676666e994bf17`

```dockerfile
```

-	Layers:
	-	`sha256:f99bebc68fae6711ddce3f8d3a1f7f0beba6ab400418dde49c49231abfc556f7`  
		Last Modified: Fri, 23 Oct 2026 18:08:39 GMT  
		Size: 5.7 MB (5658524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cb0599b863dfaa33e59de85a449f9deb5893673205cb7cf7b454ee185c1908a`  
		Last Modified: Fri, 23 Oct 2026 18:08:39 GMT  
		Size: 9.6 KB (9561 bytes)  
		MIME: application/vnd.in-toto+json
