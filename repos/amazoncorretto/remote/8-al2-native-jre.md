## `amazoncorretto:8-al2-native-jre`

```console
$ docker pull amazoncorretto@sha256:0b5061cbbaab0a3ceb706a524deff16d4f7e6492a267b95bcbfc208ca41229a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-native-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b109a7639b546c249c620337a5866976578f5a2110184ec1c70e0d9db894b00e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123564122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:118d4737c9615f6ed30bfeda5132025fe03ba57da789d879b44c983121da63f5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 27 Aug 2026 18:29:06 GMT
COPY /rootfs/ / # buildkit
# Thu, 27 Aug 2026 18:29:06 GMT
CMD ["/bin/bash"]
# Thu, 27 Aug 2026 19:11:01 GMT
ARG version=1.8.0_504.b01-1
# Thu, 27 Aug 2026 19:11:01 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 27 Aug 2026 19:11:01 GMT
ENV LANG=C.UTF-8
# Thu, 27 Aug 2026 19:11:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:7b5924e8d322730e9c4e8894d8783a6efb8f7553b1186599f35e97dfa4b7372d`  
		Last Modified: Thu, 27 Aug 2026 17:56:29 GMT  
		Size: 63.0 MB (62973824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29102e3aa2ae9059d18ed80fd9b3628c786cf8432d01b7e8c3842f015b658858`  
		Last Modified: Thu, 27 Aug 2026 19:11:16 GMT  
		Size: 60.6 MB (60590298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c60e1a3bedbe8dd8f5a0bc3dd8877e9d000e497e7ecb9c6dd1a97abcebcf85fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:646363e7365ce3aeaf3b8516009affd6bc0e862b1c87df76df3f0ebc9bc57444`

```dockerfile
```

-	Layers:
	-	`sha256:0b68f5bd24acdebed0f0d3866457ae07d7f3e086830d183d4594f95d3295ad03`  
		Last Modified: Thu, 27 Aug 2026 19:11:14 GMT  
		Size: 5.9 MB (5859904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66df37cdd042a414627da8599b220640abf7b7b38f670a82ef6c11a3bf15af07`  
		Last Modified: Thu, 27 Aug 2026 19:11:14 GMT  
		Size: 9.8 KB (9799 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-native-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7c42fa9176d5e8f086f5bbc47158e941c060963c3c182f0ba95e91c7d508ef74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (118002161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16598ebdd2a926409ab15f0fb41bfdec3dd4bf0ba1b203f5efa46b358c7f3c61`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 27 Aug 2026 18:28:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 27 Aug 2026 18:28:04 GMT
CMD ["/bin/bash"]
# Thu, 27 Aug 2026 19:10:46 GMT
ARG version=1.8.0_504.b01-1
# Thu, 27 Aug 2026 19:10:46 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 27 Aug 2026 19:10:46 GMT
ENV LANG=C.UTF-8
# Thu, 27 Aug 2026 19:10:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:2b41bf6c0b7311e7e581c43ef89dcfd7673d76db2f93fc00703cb6394c88ccf2`  
		Last Modified: Thu, 27 Aug 2026 18:15:57 GMT  
		Size: 64.8 MB (64790556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7248878459c717032860e693756cea73d50908c8fc9a1d77575364ecf18c4ec8`  
		Last Modified: Thu, 27 Aug 2026 19:11:01 GMT  
		Size: 53.2 MB (53211605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:809b1a5aca7973581b5cb65747cb8b1fc589c833e5a1cb02bf10e73a5d225277
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5671753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0da9d856b5803046e7bde15057844756c8e76999639e361cdc09c32ac773296`

```dockerfile
```

-	Layers:
	-	`sha256:0dc817f97efebfe4e708e17f297c99c20c0bfabb7d92a45278a812b15a0cbc5f`  
		Last Modified: Thu, 27 Aug 2026 19:11:00 GMT  
		Size: 5.7 MB (5661873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37d0b0041db3fefeb5c5762de13dc02a4808a3850422b430d66b2228c13ce493`  
		Last Modified: Thu, 27 Aug 2026 19:11:00 GMT  
		Size: 9.9 KB (9880 bytes)  
		MIME: application/vnd.in-toto+json
