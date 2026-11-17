## `amazoncorretto:8-al2-native-jre`

```console
$ docker pull amazoncorretto@sha256:79b5f728cc5aaf2bc0863902f61abcfe28268cff2f0911444826b0155c045195
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-al2-native-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:5899c0272d2199640277b7ad869f2ac305ee51f5cbd178d8d5dc50cfe0e51cba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123470089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b996b3bc79f37edf6349ed000ba4ef821e515f3af56d88b32c97f049815d9f4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:31 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:09:24 GMT
ARG version=1.8.0_512.b09-1
# Mon, 16 Nov 2026 23:09:24 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 16 Nov 2026 23:09:24 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:09:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:b4fd738aaa080ce3c70f1d92c80440b4bf31c13437f6276731da3fd6a37e3dd2`  
		Last Modified: Sat, 14 Nov 2026 04:13:58 GMT  
		Size: 62.9 MB (62929597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c9c726e356c32fddd8a658a9d95c4cba7557b4e7149feece92a7bd72ee2fe0d`  
		Last Modified: Mon, 16 Nov 2026 23:09:39 GMT  
		Size: 60.5 MB (60540492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4d14fe1ea270637a336adf02371d5ad783c5eb5e68a37ca4d37d7556dae1276f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5869718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3f7b9b671988a0fe2b7f7cb2ed1751e6bcf04718c596e83453c1d35a93cee80`

```dockerfile
```

-	Layers:
	-	`sha256:2eacfa44f3cba3abbd0d6f133d48afc21a22a920a8a5381be5d1e41335d4618a`  
		Last Modified: Mon, 16 Nov 2026 23:09:38 GMT  
		Size: 5.9 MB (5859918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f4cc56fac72f67b0183eeb532246b1d2698b2bd516196920fbf0c57ed347915`  
		Last Modified: Mon, 16 Nov 2026 23:09:38 GMT  
		Size: 9.8 KB (9800 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-al2-native-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:d6a7ae5caade682a9a79ffa4c3fcadc62122e1ad0b21002458b1ae25dfeed8c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (118026536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a586eead616cd3a42a3881a073d97b50c0e66dbddf0098ba0aa51c11900f80af`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:53 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:53 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:09:07 GMT
ARG version=1.8.0_512.b09-1
# Mon, 16 Nov 2026 23:09:07 GMT
# ARGS: version=1.8.0_512.b09-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && echo $(rpm -K "${CORRETO_TEMP}/${rpm}")     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1;     done     && yum install -y $(yum deplist ${CORRETO_TEMP}/*.rpm |grep provider | grep -v log4j-cve | tr -s ' ' |cut -d ' ' -f 3 )     && yum install -y fontconfig     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 16 Nov 2026 23:09:07 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:09:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:440cc69e8f9d2c85d2f689d3242bc99b93cac55a936a1cbebf5a197a5e006a99`  
		Last Modified: Mon, 16 Nov 2026 22:30:09 GMT  
		Size: 64.8 MB (64776402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1e05f7836331012a985046d505e595c4500a61ba575d7d16e31b33b8f56ec67`  
		Last Modified: Mon, 16 Nov 2026 23:09:22 GMT  
		Size: 53.3 MB (53250134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-al2-native-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b322b11a26a729bb478ab91f94a39ae0446916fd7e1f7fa76176b40397c08bda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5671767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2261c9c43c53849470bb24e5d8e91827054275a7ce6c68833257bc28a7e3025b`

```dockerfile
```

-	Layers:
	-	`sha256:1285d02abdf360906b2237a0e5cdbb95be409b797b13e3fe8d6a5461790c2b33`  
		Last Modified: Mon, 16 Nov 2026 23:09:20 GMT  
		Size: 5.7 MB (5661887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00b327efa85fb7ed50caea0316d8fd9fe864b2c1cea5b65f314564cc75dfc529`  
		Last Modified: Mon, 16 Nov 2026 23:09:20 GMT  
		Size: 9.9 KB (9880 bytes)  
		MIME: application/vnd.in-toto+json
