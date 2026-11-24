## `amazoncorretto:8u514-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:c99097a0492a84faeacfdb83bd94a21bcfd7d79594607dc32d0997e1d4bcc043
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8u514-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:7af295d112af8d9afd17a7d8d58cbb73639ab76f86c320e02f2ccf0535ff22cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138116788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7a05023cb39e65e02975e4667b224c5096de2101a8654da8335a26bd131a31c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:28:09 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:28:09 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:09:47 GMT
ARG version=1.8.0_514.b01-1
# Mon, 23 Nov 2026 21:09:47 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 23 Nov 2026 21:09:47 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:09:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:5578d26df6c6bdfe9ec366cb0917de223c7478cae192d8015a93c8b38b37ab17`  
		Last Modified: Sat, 21 Nov 2026 04:12:27 GMT  
		Size: 62.9 MB (62930101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fee67081bfbfcf371b631795272df41ebd1aae81ec3efa4440b60c646c712c`  
		Last Modified: Mon, 23 Nov 2026 21:10:04 GMT  
		Size: 75.2 MB (75186687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u514-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6cfe05a5f2b4296017c2094251a10b0745b85779f2e6c84b7fa1de8cfffb715f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6333271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fa79cd3cdb543787c482f2bec4ad77b8d39ac96da48c5e51d6320bee94db5f9`

```dockerfile
```

-	Layers:
	-	`sha256:f4539a1073271707b3fa94e6c96ace52be1fc1e67b2365e77f29f13f7dd3a61f`  
		Last Modified: Mon, 23 Nov 2026 21:10:02 GMT  
		Size: 6.3 MB (6323435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fad7fcb0180de822044a41fdd97843547c13bdb003b38851ede9935943179297`  
		Last Modified: Mon, 23 Nov 2026 21:10:02 GMT  
		Size: 9.8 KB (9836 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8u514-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3c16ab3f3c9868138c9279ddb46de501ab623038210b9aa937af36e19e6e6ccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132780686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a902733dc92486e559653f30e46d9620c911348be91a51ac52ebf489a029ee4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:28:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:28:16 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:09:44 GMT
ARG version=1.8.0_514.b01-1
# Mon, 23 Nov 2026 21:09:44 GMT
# ARGS: version=1.8.0_514.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm" "java-1.8.0-amazon-corretto-devel-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 );     done     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} -name "*src.zip" -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 23 Nov 2026 21:09:44 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:09:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto
```

-	Layers:
	-	`sha256:6260f7832ff0690923da519c8d6fed973ab9207dae75750f3de443c494a4ff4f`  
		Last Modified: Mon, 23 Nov 2026 20:28:32 GMT  
		Size: 64.8 MB (64796591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4f3531e547cf3c6d9b5eed2b3c5a0a028025344ccb7fa53f7a3fa7aa7e27b28`  
		Last Modified: Mon, 23 Nov 2026 21:10:00 GMT  
		Size: 68.0 MB (67984095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8u514-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:10ed23591358e0589c4659063c5fcee2584178308be5f3d7c6e3558d4c99ff9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6135854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e60d37f1ea104219c434cea412391db378c7d31ed2e714c621e9ef8a2d83115e`

```dockerfile
```

-	Layers:
	-	`sha256:b35c2a0e9d6a3324e8bedb12a18e2e4bdb40f43670c666f67d72104460d35da3`  
		Last Modified: Mon, 23 Nov 2026 21:09:59 GMT  
		Size: 6.1 MB (6125937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0908210160fe7185b0ef46317f2b5b0778b28e01d3a242bb56096c91425e92b`  
		Last Modified: Mon, 23 Nov 2026 21:09:58 GMT  
		Size: 9.9 KB (9917 bytes)  
		MIME: application/vnd.in-toto+json
