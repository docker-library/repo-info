## `amazoncorretto:8-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:b20e2b026700884d23d1b5591300371dc81107cfaac4200f363904bd27f0f57d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:160a7b07a34fc42c1d62854a8498340d4ebdb1c914708b4d4b3086467d418765
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (139028149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f555d9bbe762fa74cdb3350e1a3a48cdfad4f3103d32ac8978b4a4f6d570a2ef`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:58 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:58 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:43:41 GMT
ARG version=1.8.0_512.b09-1
# Fri, 30 Oct 2026 19:43:41 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 30 Oct 2026 19:43:41 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:43:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:9653aa1582ef32674aa011f26c881e60e6136564952476129f41b0f5fee0c8ae`  
		Last Modified: Fri, 23 Oct 2026 00:42:11 GMT  
		Size: 63.0 MB (62973900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51c0ddb9d6844fee9537d2f77e5a38c84e6a782b42eb10fa4494f488fe1a0d5f`  
		Last Modified: Fri, 30 Oct 2026 19:43:58 GMT  
		Size: 76.1 MB (76054249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b49a4e863e9fa926acac074116622456695fa948f9685e3bb2cea6ca79a20b75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6333272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3844616c91f3178e242ebeb3893a2f655fa60eece858fdd74c647405b2c3696d`

```dockerfile
```

-	Layers:
	-	`sha256:dc02c178f5f6f2b36f3abb24809da83d571e8420497e8d10c6300b58277ac113`  
		Last Modified: Fri, 30 Oct 2026 19:43:56 GMT  
		Size: 6.3 MB (6323435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0c40074826a8bdd0f418aaa1efd547d681b89ce226b00f4c54bc66481843cd8`  
		Last Modified: Fri, 30 Oct 2026 19:43:56 GMT  
		Size: 9.8 KB (9837 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a01aa6421374e867457f53de19dcf0dee4e39235b3796d56ea67cd7440ab9409
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.8 MB (133778225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d32018572f395f509454df91f3952e3dcd00ebdb7fa28dba9f39038543eb1a3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:41 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:41 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:43:28 GMT
ARG version=1.8.0_512.b09-1
# Fri, 30 Oct 2026 19:43:28 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Fri, 30 Oct 2026 19:43:28 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:43:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:90a41cb984a9307d13eb248c95fd13ac0a0631a9e189ff342b8a62cd0d8a0d7d`  
		Last Modified: Fri, 23 Oct 2026 00:41:56 GMT  
		Size: 64.8 MB (64835719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf603f810fedffbd179e77b02c4f40bdb780c761803bc3bcdb1dde79352b1d9`  
		Last Modified: Fri, 30 Oct 2026 19:43:44 GMT  
		Size: 68.9 MB (68942506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:45046448637c402b17564ed5201889867a18a33c0d78cbed05a49f301597e12e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6135854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e88bea11dcaa668fdd7f701d7e130080a7112700cc7c3ecf9e60d2fdb0c0002`

```dockerfile
```

-	Layers:
	-	`sha256:b58a124ce4d873ec11ed4b3ed737731ce0a56fe81ad963d0c3dbea164b82ed87`  
		Last Modified: Fri, 30 Oct 2026 19:43:43 GMT  
		Size: 6.1 MB (6125937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b131fc8705456a6ef0e80b7fcc06b74e8b7cee3564e219aa0b8fd8b0d1b37fef`  
		Last Modified: Fri, 30 Oct 2026 19:43:42 GMT  
		Size: 9.9 KB (9917 bytes)  
		MIME: application/vnd.in-toto+json
