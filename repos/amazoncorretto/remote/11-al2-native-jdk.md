## `amazoncorretto:11-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:b0aaad4a26d516a5e665797ae8419ae5e230970ed2d9cfa3d005673557a163a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:74c70c299dc01a0fed8ebbff36d21b4e3b45a5b35764c07b08aed0066f905fe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.7 MB (224664270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c579b0d984869b4b4371f94a36113aaec7d4e50fbd01763d1b1926aafab71ca1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:38 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:38 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:58:54 GMT
ARG version=11.0.33.0.10-1
# Thu, 05 Nov 2026 19:58:54 GMT
ARG resource_version=11.0.33.0.10
# Thu, 05 Nov 2026 19:58:54 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 05 Nov 2026 19:58:54 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:58:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:0495c25dad2c432d2725b987a8e120fbea60c2f52ab965d1194495d66bd54a79`  
		Last Modified: Sat, 31 Oct 2026 04:10:58 GMT  
		Size: 62.9 MB (62938853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c4b0cd63df734a815c24c56ff4630f11bc31468016147b135f7441a1328dd19`  
		Last Modified: Thu, 05 Nov 2026 19:59:16 GMT  
		Size: 161.7 MB (161725417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9fbce80aef2eec4ca1710cbb2397ea44966c576c38f2d2e053c4c22e7d30a7fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6004674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f86862bff632fc203f7b7c2d5e678c88eada0ff0a413fe0360bb0a0e96fc3af3`

```dockerfile
```

-	Layers:
	-	`sha256:0fc64dd9ed521b9673bc0c9df656549ff99f4b51b0e93d74578d665278a9d5c2`  
		Last Modified: Thu, 05 Nov 2026 19:59:12 GMT  
		Size: 6.0 MB (5995225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38df53dcc3032e29070ec12b7617f0c96bb9b0df0f406b066d2222265872822a`  
		Last Modified: Thu, 05 Nov 2026 19:59:12 GMT  
		Size: 9.4 KB (9449 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:2eee6d19ffc49375818a9cd28c1f8eb46d5e4bccdf39e8feb63c5e0c92b9c6ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.6 MB (216649378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d88759e41a10c64d3726f5e8210da8f4b42a88d24b840c358067a43532bc0d5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:41 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:41 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:15:32 GMT
ARG version=11.0.33.0.10-1
# Thu, 05 Nov 2026 20:15:32 GMT
ARG resource_version=11.0.33.0.10
# Thu, 05 Nov 2026 20:15:32 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 05 Nov 2026 20:15:32 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:15:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:ec84068a79e503a31a893b9fd91255e63276a7d88c803d10789070f5f0d1907a`  
		Last Modified: Mon, 02 Nov 2026 19:56:57 GMT  
		Size: 64.8 MB (64805958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef31b99c717ca3158aaed8fab644f900d582116ae66d61ed1a3312b3dbcd3639`  
		Last Modified: Thu, 05 Nov 2026 20:15:54 GMT  
		Size: 151.8 MB (151843420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ca618c1f885bb13e18824b8d0617376aaafbb2a7e754fb6037fb8f685768bb5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5797469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f256d1c07f126166ac73147e375e6d8d5300af7bced00a1b23d3e94ab09fe90`

```dockerfile
```

-	Layers:
	-	`sha256:b17ecbd4767bf13db8484a12d1976196a9ddc525f3424521957de9fe8ed23480`  
		Last Modified: Thu, 05 Nov 2026 20:15:50 GMT  
		Size: 5.8 MB (5787939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b62f8d864583117d12fae7bfe78f9675b396ab044b5ab436b7782c2effd096dc`  
		Last Modified: Thu, 05 Nov 2026 20:15:50 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.in-toto+json
