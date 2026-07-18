## `amazoncorretto:11-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:b18ee955e2a8bcf66f4295d1403f13d32124cd3ada563885a6ac1f313877001c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:0cd6c07406e89af880c0289fb1cd2e0679cbc528cfa213f67079c7b6a1beaed7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224629649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd81a4c2793337e8ab9dea24f28eb4f1758b068f685bec2661973240fe6ec05a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:47 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:47 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:12:19 GMT
ARG version=11.0.31.11-1
# Sat, 18 Jul 2026 00:12:19 GMT
# ARGS: version=11.0.31.11-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Sat, 18 Jul 2026 00:12:19 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:12:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:06aa8a8412ddcd11af3d73b72c1ed58ba902c9428472a38c780460385a530107`  
		Last Modified: Sat, 11 Jul 2026 02:13:53 GMT  
		Size: 63.0 MB (62957295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4a897924720e6af35de2208faadc0e8b27eee0a945af99a038b0901cc93f69`  
		Last Modified: Sat, 18 Jul 2026 00:12:43 GMT  
		Size: 161.7 MB (161672354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8e8b660d12b29bbf05ed1b903decbd1afeb33dfb6cab668b23e8194559ab7ef6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6004744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa2d1e3c30dca7f979b8802f07f478fcdedac0a4bc4904596dd184281e3d799`

```dockerfile
```

-	Layers:
	-	`sha256:d7139b1fcb4ec1a5c8974e74bc7652a8c95a0f4ab88169ad346093dd54fc7943`  
		Last Modified: Sat, 18 Jul 2026 00:12:39 GMT  
		Size: 6.0 MB (5995185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4753de7d91e11ff24ba07840993e484afff8de89de82b2f21f9993952fa2ad2e`  
		Last Modified: Sat, 18 Jul 2026 00:12:39 GMT  
		Size: 9.6 KB (9559 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:cef0aa893811b9cf49f5a44b8b4fc3627b7f05bb4109ef00eadadcfcf9cf9a6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216480299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2d908eb501aa387bf7ffaed01ca49aedfa6a7138d45c96e24e3c2e1d92e1db3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:40 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:40 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:12:02 GMT
ARG version=11.0.31.11-1
# Sat, 18 Jul 2026 00:12:02 GMT
# ARGS: version=11.0.31.11-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Sat, 18 Jul 2026 00:12:02 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:12:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:7da2ddf99845df800b9ce1ec0c9889076ad3ba27fd4e61b3ef728e424f1672f1`  
		Last Modified: Mon, 13 Jul 2026 18:19:45 GMT  
		Size: 64.8 MB (64790249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0314bbedbc678b27c8aca1963ca52efbb91fb8aedc34346c1dd6e3540d44b39f`  
		Last Modified: Sat, 18 Jul 2026 00:12:23 GMT  
		Size: 151.7 MB (151690050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d7b191dba4637df449aecfb7d1eb594fd75ff8dc1f5fb51894334fadf3920464
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5797538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d051fe60618ce45f997c72faf06ef89ed64d25b8c8aff19bdaff23fdb77e06d4`

```dockerfile
```

-	Layers:
	-	`sha256:5af732175fdd999f5792efa6813feefb5cd49b960e4b6fd58ca841d7f0707ddc`  
		Last Modified: Sat, 18 Jul 2026 00:12:20 GMT  
		Size: 5.8 MB (5787899 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04ec13def3fae976bf14bb8d7035e9b933957ffc468c32939bb319a5e8946205`  
		Last Modified: Sat, 18 Jul 2026 00:12:19 GMT  
		Size: 9.6 KB (9639 bytes)  
		MIME: application/vnd.in-toto+json
