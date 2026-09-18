## `amazoncorretto:17-al2-native-headful`

```console
$ docker pull amazoncorretto@sha256:c14d1bc071a15764403790dec4c4e958617cb809ec918cd3a7647aa106f7ec18
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:0cd2f9bd14dd2a36891857cf2cff8c78b80a3edb38bd823b9c1060240da23e58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.3 MB (154272931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd36897ce194633f037b77ebb0d6c2545ef57f95f9274b6367ea3f90dfdea4dc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:47:23 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:47:23 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:11:51 GMT
ARG version=17.0.20.10-1
# Tue, 15 Sep 2026 00:11:51 GMT
# ARGS: version=17.0.20.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Tue, 15 Sep 2026 00:11:51 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:11:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:0f31d1fce1dda0c9a2775f71f278a80f752c07ac8026cd44ad345d9d5c45de7e`  
		Last Modified: Fri, 04 Sep 2026 16:19:27 GMT  
		Size: 63.0 MB (62964596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba9c20c45502161d3a02e3d193f913a38f00624dac609aeb076a15b15edd480d`  
		Last Modified: Tue, 15 Sep 2026 00:12:12 GMT  
		Size: 91.3 MB (91308335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5d4c178cfa22fed16a7d4cea9a14b225687eb68fc8e16ebc86b26ba471eb0f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5876368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ba3092035d7c28a1405fcca86ca249564a6e4940cfd0c45eff5a0bfffe2c53c`

```dockerfile
```

-	Layers:
	-	`sha256:c6cc8a9d9127508bf170ab75bd18924e58db3d7f191abbf38ae5246ec57d8efa`  
		Last Modified: Tue, 15 Sep 2026 00:12:07 GMT  
		Size: 5.9 MB (5866778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f22b8612da351c662b02978c4caf74126e518988696e21a8d1543c573b2cb6e9`  
		Last Modified: Tue, 15 Sep 2026 00:12:07 GMT  
		Size: 9.6 KB (9590 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:d876a6245449ff4619e426b0400980b4df8806d3ade7b6e65f124966136c8557
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.7 MB (146743057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9d651de9441c9f727d31d9235ac8987fc006cf12e90b0cb527624fbdb371b0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:18 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:18 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:46:40 GMT
ARG version=17.0.20.10-1
# Thu, 17 Sep 2026 22:46:40 GMT
# ARGS: version=17.0.20.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 17 Sep 2026 22:46:40 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:46:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:17ad0bfad52234371433d04d036616a4bd4db51019fc530e40379ee1fcd6957a`  
		Last Modified: Fri, 04 Sep 2026 16:20:29 GMT  
		Size: 64.8 MB (64805101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6bbe448b2dd330bb51ea306641291b9a305b88d279152404119825e5d87cc7`  
		Last Modified: Thu, 17 Sep 2026 22:46:57 GMT  
		Size: 81.9 MB (81937956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:619adce6aa9a18605d713aa6e57928d8f1cd69b59ca59ed54b5cb114c5543ab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5668192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14d677874a95beba773799bee8f54eb6f746b419a61fbeb84c4d36f88b268334`

```dockerfile
```

-	Layers:
	-	`sha256:e58b4dd91d982dc005cfb05ce90b4ebba02e09d128dfed178d11411a55f2d1dd`  
		Last Modified: Thu, 17 Sep 2026 22:46:55 GMT  
		Size: 5.7 MB (5658522 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb8390a515220f06ef8bbdf1ccb9433400e8570b82167eef0f27da7acc61512c`  
		Last Modified: Thu, 17 Sep 2026 22:46:55 GMT  
		Size: 9.7 KB (9670 bytes)  
		MIME: application/vnd.in-toto+json
