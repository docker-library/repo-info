## `amazoncorretto:17-al2-native-headless`

```console
$ docker pull amazoncorretto@sha256:55d796831155ebc0d29741003110a02a747ed9e26ebc5233e01ae0feb56ef7cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:e82d0008a030d623b67f78f2429f2841c949c5c1922d28a3d15e17b147893886
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.7 MB (150729303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e11ad36688e0c53031800bf6db01f3bc5968b5e1970330fdcaf673afdf1f344`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:58 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:58 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:08:33 GMT
ARG version=17.0.21.0.10-1
# Fri, 23 Oct 2026 18:08:33 GMT
ARG resource_version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:33 GMT
# ARGS: version=17.0.21.0.10-1 resource_version=17.0.21.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 23 Oct 2026 18:08:33 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:9653aa1582ef32674aa011f26c881e60e6136564952476129f41b0f5fee0c8ae`  
		Last Modified: Fri, 23 Oct 2026 00:42:11 GMT  
		Size: 63.0 MB (62973900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a705ad393534d763d02775abc2d6aca5ddc15fed7a17a8b1beec4ce18765bad`  
		Last Modified: Fri, 23 Oct 2026 18:08:51 GMT  
		Size: 87.8 MB (87755403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:69dce3404a4b4993d13abfc6ecdfe4c7c12b613c49f8a5e70651734386e9ed13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5642075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8901c1dac6df2d333f8f5fb37fcb58faf46bf2be1a2c8f2dd4220fc9c303766`

```dockerfile
```

-	Layers:
	-	`sha256:14011a7c8f1712888e6b8ffbf6718abda9d199aa7e9fd9feab72417be2d0e44a`  
		Last Modified: Fri, 23 Oct 2026 18:08:49 GMT  
		Size: 5.6 MB (5632717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae4c2767e0d18f12501afb150a5e9be2beb0b617eecacdc46a66031992729804`  
		Last Modified: Fri, 23 Oct 2026 18:08:49 GMT  
		Size: 9.4 KB (9358 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3777368a1673f16f097452a9fba1c8ccf8d81646dfedda18836a3412009af8c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144852948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d116ef79425e22da88522ed1f7b941ce51ed05aadea2e289bead298b849cb558`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:41 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:41 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:08:12 GMT
ARG version=17.0.21.0.10-1
# Fri, 23 Oct 2026 18:08:12 GMT
ARG resource_version=17.0.21.0.10
# Fri, 23 Oct 2026 18:08:12 GMT
# ARGS: version=17.0.21.0.10-1 resource_version=17.0.21.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 23 Oct 2026 18:08:12 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:08:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:90a41cb984a9307d13eb248c95fd13ac0a0631a9e189ff342b8a62cd0d8a0d7d`  
		Last Modified: Fri, 23 Oct 2026 00:41:56 GMT  
		Size: 64.8 MB (64835719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acee79f61c82f8e9da0e4832755ba31729efde9660156ef24cbbaa2c4793ad7`  
		Last Modified: Fri, 23 Oct 2026 18:08:28 GMT  
		Size: 80.0 MB (80017229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:22e20d08de20f591a63a37e1278c265060e9c74d6720cdf1a170b4f3bb52c08a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5458432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a738f0cb5d4dbbb177ea89c571c251c899d23c04d3adb74bd1ecfdc373b6b257`

```dockerfile
```

-	Layers:
	-	`sha256:17d552835e78cd629f1d732bb1f993222afb8e2ef80c267a5659350dc54790a5`  
		Last Modified: Fri, 23 Oct 2026 18:08:27 GMT  
		Size: 5.4 MB (5448994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fbca9aa18011922d3c29f48b73c2719a384acd0ec89deaf81ee7acd4e67b44f`  
		Last Modified: Fri, 23 Oct 2026 18:08:26 GMT  
		Size: 9.4 KB (9438 bytes)  
		MIME: application/vnd.in-toto+json
