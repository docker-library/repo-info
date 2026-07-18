## `amazoncorretto:8-al2-native-jre`

```console
$ docker pull amazoncorretto@sha256:5c14f30ad5dc066c2dc7fd369c38da85007e976a1b6ee132efbac11acfa8542b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-native-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:cb5733a72e6b05053bc16d693dc57800dcf89242dbbff1ce7c7e2366f183ec7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.1 MB (172111872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fe2474f9730c60a2a050f7b44cb4bc474e48759df17c5f2603ae9cbe90896db`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:47 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:47 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:09:41 GMT
ARG version=1.8.0_492.b09-2
# Sat, 18 Jul 2026 00:09:41 GMT
# ARGS: version=1.8.0_492.b09-2
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Sat, 18 Jul 2026 00:09:41 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:09:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:06aa8a8412ddcd11af3d73b72c1ed58ba902c9428472a38c780460385a530107`  
		Last Modified: Sat, 11 Jul 2026 02:13:53 GMT  
		Size: 63.0 MB (62957295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:229b67f161d38ecea7555f46fac3b56e16e8c2cd9d311aea3cf0de78aa1b54ba`  
		Last Modified: Sat, 18 Jul 2026 00:10:02 GMT  
		Size: 109.2 MB (109154577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:82d217cc0bc9c76dbadb5e7ad6a41eefdb0fa31c73b35268834930f9ca710a22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7513903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79f4891b93e7d52ffe7444f170eaa97a0495bdfaeaf47edfa9c7030f3151f24b`

```dockerfile
```

-	Layers:
	-	`sha256:ed5acba304b3165083430d724d81f5a656a34194c8b77a0ced5d776f21a1779d`  
		Last Modified: Sat, 18 Jul 2026 00:09:59 GMT  
		Size: 7.5 MB (7504229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9e5fd5c2118c19b1e41ff0976c6c3b6a20a3a455a99f632619bdf2f7612bc19`  
		Last Modified: Sat, 18 Jul 2026 00:09:59 GMT  
		Size: 9.7 KB (9674 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-native-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:68f459868fc0a7163659a34bec5e48575624c30f80903ce2d1a8c8923775296a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117687159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc11269170aaa0a88e6c816e9cdf793bfc247551b6775212fd3472e1119a1ac`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 18 Jul 2026 00:04:40 GMT
COPY /rootfs/ / # buildkit
# Sat, 18 Jul 2026 00:04:40 GMT
CMD ["/bin/bash"]
# Sat, 18 Jul 2026 00:08:33 GMT
ARG version=1.8.0_492.b09-2
# Sat, 18 Jul 2026 00:08:33 GMT
# ARGS: version=1.8.0_492.b09-2
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Sat, 18 Jul 2026 00:08:33 GMT
ENV LANG=C.UTF-8
# Sat, 18 Jul 2026 00:08:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:7da2ddf99845df800b9ce1ec0c9889076ad3ba27fd4e61b3ef728e424f1672f1`  
		Last Modified: Mon, 13 Jul 2026 18:19:45 GMT  
		Size: 64.8 MB (64790249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3417178120ac8355abaa03cab30429912cf2c8e306c48768d860704e381295`  
		Last Modified: Sat, 18 Jul 2026 00:08:47 GMT  
		Size: 52.9 MB (52896910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:dc28cb1c086b901e96a0a4fdc4585f811634b4c0010fdfb77b9b4089ad1ca80b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5628741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69ce4b96810925fa9d1f8b8603b3e754548ec92f471dac497a504a60198927e2`

```dockerfile
```

-	Layers:
	-	`sha256:7283a3074cca487130c328b467f65952db470dfb1dbbaa5647615a1073e60828`  
		Last Modified: Sat, 18 Jul 2026 00:08:46 GMT  
		Size: 5.6 MB (5618988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fca034b72ccef41877ef94639953308382016bfada28ca43ded4a5e4d05956ef`  
		Last Modified: Sat, 18 Jul 2026 00:08:45 GMT  
		Size: 9.8 KB (9753 bytes)  
		MIME: application/vnd.in-toto+json
