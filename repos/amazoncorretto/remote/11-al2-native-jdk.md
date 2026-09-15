## `amazoncorretto:11-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:7e8a2a69f02f0240f4c984879fe38286d75fc41495ffeb3b5378364f3256d460
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:191cf3a5de3126ba8a60c65218da76647010d2a7736b0b93d83a0c0add12e063
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224643484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5888955a11210ec8f559bb1528ae022ffdcaa05af6c1c589ea9f579b8c527bd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:47:23 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:47:23 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:11:44 GMT
ARG version=11.0.32.10-1
# Tue, 15 Sep 2026 00:11:44 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Tue, 15 Sep 2026 00:11:44 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:11:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:0f31d1fce1dda0c9a2775f71f278a80f752c07ac8026cd44ad345d9d5c45de7e`  
		Last Modified: Fri, 04 Sep 2026 16:19:27 GMT  
		Size: 63.0 MB (62964596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfec8eca1d3a9bf266151de08cbe0d63344db2c4c7955e2ddebdf19ceda9275d`  
		Last Modified: Tue, 15 Sep 2026 00:12:06 GMT  
		Size: 161.7 MB (161678888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ed3a222b725446ccb529b2dad8aef490f8e516741b59d5051d79720932de1a3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6004781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e22a947c10f92d5e65c42dc149a5d7f7daf84e80d6787c22a8a0334844b99d61`

```dockerfile
```

-	Layers:
	-	`sha256:6d4d84f32fc52fe335e53a99d3e9e7f88509aea134e0497f7cd580f8718d41c7`  
		Last Modified: Tue, 15 Sep 2026 00:12:03 GMT  
		Size: 6.0 MB (5995223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5f99ce08b14bf5c95266bc370bd855357cd96b6d7b0d212c44e4254023994a8`  
		Last Modified: Tue, 15 Sep 2026 00:12:03 GMT  
		Size: 9.6 KB (9558 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:160e500e491e5d9410ad827b002320ccd8c8862d733dcb7a25da3a14d5116944
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216510328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0733b7d55b76e5d60a58a46d5992e61d64d34a8cfc58e5ed0dcd3996d04702c6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:22 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:11:19 GMT
ARG version=11.0.32.10-1
# Tue, 15 Sep 2026 00:11:19 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Tue, 15 Sep 2026 00:11:19 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:11:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:17ad0bfad52234371433d04d036616a4bd4db51019fc530e40379ee1fcd6957a`  
		Last Modified: Fri, 04 Sep 2026 16:20:29 GMT  
		Size: 64.8 MB (64805101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6022dbe7ee102057878c8d6ac1fdda94d81ab1d9dcd81573a07499a0c44c2420`  
		Last Modified: Tue, 15 Sep 2026 00:11:42 GMT  
		Size: 151.7 MB (151705227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b1f2764f060a3b1fd9c876f007f61ec6bd08eb0c161c0bbb230f478c34daaa97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5797576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9e22abbeb644975aeaa7b1180b7a75d20fd7b2c1bc1e4129db5eb36a0fbb7d2`

```dockerfile
```

-	Layers:
	-	`sha256:857d2a596e1ee2b3b0d9c33523d75a831d62bacb0d0e9109978098f6a02a7025`  
		Last Modified: Tue, 15 Sep 2026 00:11:37 GMT  
		Size: 5.8 MB (5787937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68a66984f55f617cf88def609e74f30de493e5eab61b70683e20442f3b4a3866`  
		Last Modified: Tue, 15 Sep 2026 00:11:37 GMT  
		Size: 9.6 KB (9639 bytes)  
		MIME: application/vnd.in-toto+json
