## `amazoncorretto:17-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:e4d6681e28bedc7e0c8da69f6684b866f8ac131263219f2a511fbb9da8ad172a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:88cf2f28596bbe15add583efff3f9d91a124dba52c416201bf0142ee2219fa40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.0 MB (228981588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1adb51bb33cb739c8a1b96a3e600ef627580cb7f23b3bd1ee1ea8084ab8fa7a8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:46 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:46 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:34:38 GMT
ARG version=17.0.21.1.2-1
# Wed, 18 Nov 2026 21:34:38 GMT
ARG resource_version=17.0.21.1.2
# Wed, 18 Nov 2026 21:34:38 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && if [[ ${rpm} != *jmods* ]]; then       yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );       fi;       done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Wed, 18 Nov 2026 21:34:38 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:34:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:9729117ae9364c6d8fe8fbf58ce55bf2d18edb4f6ae553117e8edfa824ca2755`  
		Last Modified: Wed, 18 Nov 2026 21:17:00 GMT  
		Size: 62.9 MB (62929268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c3be51c1cb78d6e1cde3ebf4bc7e6156d7c8e90c3e95ee2ebb035d64f8cc111`  
		Last Modified: Wed, 18 Nov 2026 21:35:00 GMT  
		Size: 166.1 MB (166052320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:35ef5f322922ec0805880ce20a2223c92260913fe3a16b9493500601de1dad37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5982727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dfab975ec98cff7c7a0dd3d901e499a49e55c9b17f60a01968160d85089dcfe`

```dockerfile
```

-	Layers:
	-	`sha256:bb87325e962ac63a61bf39b333740170ca208f4c80e9512cc07113b4696e1119`  
		Last Modified: Wed, 18 Nov 2026 21:34:56 GMT  
		Size: 6.0 MB (5972778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93ac9320039396f15b79ee407553e7f75b28590ca815e60fbf825ddcd207aa30`  
		Last Modified: Wed, 18 Nov 2026 21:34:56 GMT  
		Size: 9.9 KB (9949 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:e12eb3b69c0f6e48faf5a0a8ed930cd1c7f5e98eef7e475d91e1071b8691967b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221348756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5619f4fdf0cb74bcec59673dc401602ca309d3da1711c1e686439fab08906e6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:49 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:49 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:35:05 GMT
ARG version=17.0.21.1.2-1
# Wed, 18 Nov 2026 21:35:05 GMT
ARG resource_version=17.0.21.1.2
# Wed, 18 Nov 2026 21:35:05 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && if [[ ${rpm} != *jmods* ]]; then       yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );       fi;       done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Wed, 18 Nov 2026 21:35:05 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:35:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:bcb24dedbad65dfb6e85c3cf0a24a8dfb1c5baea614450ec3a4859c498def7aa`  
		Last Modified: Wed, 18 Nov 2026 21:17:05 GMT  
		Size: 64.8 MB (64776056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deedb8d5886b830edcd406f1de07fbeb417d3a9e46f04e6d2ab4ddeb96b77deb`  
		Last Modified: Wed, 18 Nov 2026 21:35:26 GMT  
		Size: 156.6 MB (156572700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:aacdc353a17963fe6ac0bece8764e9aef736855999330fd9784fc0e585eb032c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5774678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c55c733f5f45ec00561bda7df3d5272fcb0867bf9315baaa680b2f8a8f3e705`

```dockerfile
```

-	Layers:
	-	`sha256:58d72568af8e5f6845580612fe8176cebf078123b3df0f8d31b0d7091c2bae9c`  
		Last Modified: Wed, 18 Nov 2026 21:35:23 GMT  
		Size: 5.8 MB (5764649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f59f35f76ee220e2671ef658ba6beafb2ac5c7a9da9ce0eeb8b77c1f92a10260`  
		Last Modified: Wed, 18 Nov 2026 21:35:22 GMT  
		Size: 10.0 KB (10029 bytes)  
		MIME: application/vnd.in-toto+json
