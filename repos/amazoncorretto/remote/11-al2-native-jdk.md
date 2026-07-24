## `amazoncorretto:11-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:abfe7b2683564dd230d14bce6e697cfb8b08347b53776f6740aa248dcc9dc298
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:463bff3367cb5867d590e7955eca7103f43b8e742bb6f3c19deee6e25259e57d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.7 MB (224736593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5db66280f7ee4019be7756019e72b874944bbc15b7e9767ab6f13107f3bbc0b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:47 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:47 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:11:39 GMT
ARG version=11.0.32.9-1
# Thu, 23 Jul 2026 23:11:39 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 23 Jul 2026 23:11:39 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:11:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:06aa8a8412ddcd11af3d73b72c1ed58ba902c9428472a38c780460385a530107`  
		Last Modified: Sat, 11 Jul 2026 02:13:53 GMT  
		Size: 63.0 MB (62957295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4247519af250dc9062cdd0eabc6a773716cbe3a40b0b884a199d35d3b0b40535`  
		Last Modified: Thu, 23 Jul 2026 23:12:01 GMT  
		Size: 161.8 MB (161779298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b201e1f9a9985db4f380af7fa3d4f02e792c7494b4058cdcb240d808d1513ce9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6004733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736b253f43c933ff2d98a7ee9bdf96454667ac3ea8176dcf6fdd4ef5da09f37d`

```dockerfile
```

-	Layers:
	-	`sha256:0a26c80f3f988897a512556cad8e7a3f3230090acd4f395e56f2c5d3634c6a3b`  
		Last Modified: Thu, 23 Jul 2026 23:11:58 GMT  
		Size: 6.0 MB (5995179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7cc7fabb3f10af95329c52510cf074074ea2c2e23106c4d9cf76c5ef9253598c`  
		Last Modified: Thu, 23 Jul 2026 23:11:58 GMT  
		Size: 9.6 KB (9554 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:dc3a57042bd2702d70738e941aab833e5caf49fe5bc61b7aafb91a29914f5fa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216501452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e781af253398ea204e51454f207fb5b3267548041747c8e4f92ea2b95308f735`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:40 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:40 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 23:13:13 GMT
ARG version=11.0.32.9-1
# Thu, 23 Jul 2026 23:13:13 GMT
# ARGS: version=11.0.32.9-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 23 Jul 2026 23:13:13 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:13:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:7da2ddf99845df800b9ce1ec0c9889076ad3ba27fd4e61b3ef728e424f1672f1`  
		Last Modified: Mon, 13 Jul 2026 18:19:45 GMT  
		Size: 64.8 MB (64790249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bee08b50b016162bd22fb888c07ddf9ea51c4d5bdbff70388dd336a3f57b5ad`  
		Last Modified: Thu, 23 Jul 2026 23:13:34 GMT  
		Size: 151.7 MB (151711203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:427ef7ac352dd1dcf4453696c246a812286c65a7c509c04a26156f77a98bdeb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5797527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8340ab33b7f635da91a6fd79478ebf28c7358c2eaa7a508f9baf3379c49bb7c`

```dockerfile
```

-	Layers:
	-	`sha256:b5b08ead0db03ec6ad4574ab246d3619c1f777a9e23e02036318c6ede9859a3d`  
		Last Modified: Thu, 23 Jul 2026 23:13:31 GMT  
		Size: 5.8 MB (5787893 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdf9a03c6ff547159589f3c3c593087b2b505d427f897296ba7ed1eee8b699bc`  
		Last Modified: Thu, 23 Jul 2026 23:13:31 GMT  
		Size: 9.6 KB (9634 bytes)  
		MIME: application/vnd.in-toto+json
