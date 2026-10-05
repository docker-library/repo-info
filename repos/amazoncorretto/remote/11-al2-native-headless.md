## `amazoncorretto:11-al2-native-headless`

```console
$ docker pull amazoncorretto@sha256:9f51e6d0f41ef9fcbc21dadee70907f7949afc397b294f64599e023dc9174010
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-native-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:cfda3a1479695aa19ddb829a0ceaa8ae227de92e0a64371e9258bbf9f066ca57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.4 MB (217375494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c184ac14d8b31fb67eee0218a47e837166d1aab847d91638df56572a6095b1aa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:29 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:29 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:43:16 GMT
ARG version=11.0.32.12-1
# Mon, 05 Oct 2026 18:43:16 GMT
# ARGS: version=11.0.32.12-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 05 Oct 2026 18:43:16 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:43:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:b96e0f346050b07fd2eef645589e3fcc5352909944ef2fcfa77ed05856b71920`  
		Last Modified: Thu, 01 Oct 2026 15:50:42 GMT  
		Size: 63.0 MB (62964912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2360d8634192de3bfa8de54d3495bfe9460ecca3d4ee4ea3feab79758619853`  
		Last Modified: Mon, 05 Oct 2026 18:43:37 GMT  
		Size: 154.4 MB (154410582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:92c217138a405c7d34af3aa2d7eb454030c338ef163fbda632d9d6df955e2ed7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5692898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d27733c62ee710a56b3fa5641ee7fea795f8d5a7f42619b15feb38530cc2e5b`

```dockerfile
```

-	Layers:
	-	`sha256:0832659b361a5184fbcfe4cacd1e307d4a76098c08cd8d98deda03170d9b47fc`  
		Last Modified: Mon, 05 Oct 2026 18:43:33 GMT  
		Size: 5.7 MB (5683436 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b83fe7d8df58fddad0844804c0b8f792a658cbfcc5c1fc8687304c82a5084127`  
		Last Modified: Mon, 05 Oct 2026 18:43:33 GMT  
		Size: 9.5 KB (9462 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-native-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:9f32f5c398bb4a710fb717e60f3e492849f675bd1fe327a3bf287384e186c726
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.4 MB (211427652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38a0c340599effc32435eadad49502a7978154fcd10d03b6b6da63f2ee13c740`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 05 Oct 2026 18:29:25 GMT
COPY /rootfs/ / # buildkit
# Mon, 05 Oct 2026 18:29:25 GMT
CMD ["/bin/bash"]
# Mon, 05 Oct 2026 18:42:17 GMT
ARG version=11.0.32.12-1
# Mon, 05 Oct 2026 18:42:17 GMT
# ARGS: version=11.0.32.12-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 05 Oct 2026 18:42:17 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 18:42:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:cfa04807aef79670ea0d208983fee28fd0a0f407387f8985681ece136ad06f67`  
		Last Modified: Mon, 05 Oct 2026 18:29:41 GMT  
		Size: 64.8 MB (64807371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:828d1c9d31bbbad4f0b283761cbe57d82c95df6850c5cfb4beaed62ff6e98f98`  
		Last Modified: Mon, 05 Oct 2026 18:42:37 GMT  
		Size: 146.6 MB (146620281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2f20d0f44bf4a8ef3c18625515920970b756c28332d1d13e514ed47dde1c6565
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5511446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97119d659240c876e7f73a8841240a40de140ce07d7342e536404faccf91a22a`

```dockerfile
```

-	Layers:
	-	`sha256:9fae1639c3b68aa9140d87d08f5293eac46e1fb5d5a6729ab5d54da2d40126c8`  
		Last Modified: Mon, 05 Oct 2026 18:42:35 GMT  
		Size: 5.5 MB (5501904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6068b9b86146f0680ed21f7629dd885958cc50a7f19fc200a5907f47a4220ee4`  
		Last Modified: Mon, 05 Oct 2026 18:42:34 GMT  
		Size: 9.5 KB (9542 bytes)  
		MIME: application/vnd.in-toto+json
