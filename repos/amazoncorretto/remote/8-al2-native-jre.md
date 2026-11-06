## `amazoncorretto:8-al2-native-jre`

```console
$ docker pull amazoncorretto@sha256:dcb069ab940169badc0757b764c095de3336c1a366d9082dcc7260f453b98ac1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-native-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:8f6c52c1360379cf1c0e49514a3bacf7de21cedb6566ae1be6806919eb9548cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123529218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd2c735805e7540a6ada8c65c82015df7abb427cab1629f5257225ec868f51e5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:38 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:38 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:58:24 GMT
ARG version=1.8.0_512.b09-1
# Thu, 05 Nov 2026 19:58:24 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 05 Nov 2026 19:58:24 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:58:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:0495c25dad2c432d2725b987a8e120fbea60c2f52ab965d1194495d66bd54a79`  
		Last Modified: Sat, 31 Oct 2026 04:10:58 GMT  
		Size: 62.9 MB (62938853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a2ccece660b1681e4f498c00ac2d2d54a3effe78e09bb3822540cafc4acb2d`  
		Last Modified: Thu, 05 Nov 2026 19:58:40 GMT  
		Size: 60.6 MB (60590365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2d2e5e7b0a4b2e5358f1922f329188e35c4d30b408e3088db3e5b04436c43c6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d4305495b8baa4612249f9e26d21536fb4a789d611e9b28fa8e039a305afcd6`

```dockerfile
```

-	Layers:
	-	`sha256:e224575a77ce037125bc095b6eb8c32f51f87f080f49fffde790cef24bad8580`  
		Last Modified: Thu, 05 Nov 2026 19:58:38 GMT  
		Size: 5.9 MB (5859918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d36e0c17c98ffb75f7c95dfd9a0927549040d44d217e79e6d6b1b3a1c7d694e0`  
		Last Modified: Thu, 05 Nov 2026 19:58:38 GMT  
		Size: 9.8 KB (9797 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-native-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:8b55ae653e8112f02d1db81924c578bae3242052e28f3d3d3ac14cea24598a19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118124182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a97dedb7a69e54f5eac46bd9a29ae585f1464b478e2d9c298cfb511314a30307`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:41 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:41 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:14:42 GMT
ARG version=1.8.0_512.b09-1
# Thu, 05 Nov 2026 20:14:42 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 05 Nov 2026 20:14:42 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:14:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:ec84068a79e503a31a893b9fd91255e63276a7d88c803d10789070f5f0d1907a`  
		Last Modified: Mon, 02 Nov 2026 19:56:57 GMT  
		Size: 64.8 MB (64805958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dea71918c982d7ca9b396cdc3f7b353b815801decb321c4ca8a62576534564e`  
		Last Modified: Thu, 05 Nov 2026 20:14:56 GMT  
		Size: 53.3 MB (53318224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:494e915fe6492bcd95a3367316810159dd597468964a1ee3010d5b9696699fa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5671767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb360cdf9ec1a6f0aa136cdaf0956004faa6e1936134c2c551b76a4faa1e6c95`

```dockerfile
```

-	Layers:
	-	`sha256:e25ca0c7c2a2f96a90408c8b977ab3ca2b43990c9f5e988e0335150f31b32d2f`  
		Last Modified: Thu, 05 Nov 2026 20:14:55 GMT  
		Size: 5.7 MB (5661887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17163c0e1052ff363baa186e8b9e42905b3f084c7c60083562f63c73fb4e0285`  
		Last Modified: Thu, 05 Nov 2026 20:14:55 GMT  
		Size: 9.9 KB (9880 bytes)  
		MIME: application/vnd.in-toto+json
