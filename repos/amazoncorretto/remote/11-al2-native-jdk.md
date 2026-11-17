## `amazoncorretto:11-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:37346e6ce518b5724f5ebcb0111b117e6b11e779b0f0cd2c56c19f966caf704a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:002fbad88efcb6bee9412a77e2a01091dd079bedd613de059a591b2a537f9313
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224624822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e40832f9706a77ce2b5556e077a9a036c9ede27342eef694f351d7b92d3730`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:28:31 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:28:31 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:09:46 GMT
ARG version=11.0.33.0.10-1
# Mon, 16 Nov 2026 23:09:46 GMT
ARG resource_version=11.0.33.0.10
# Mon, 16 Nov 2026 23:09:46 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 16 Nov 2026 23:09:46 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:09:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:b4fd738aaa080ce3c70f1d92c80440b4bf31c13437f6276731da3fd6a37e3dd2`  
		Last Modified: Sat, 14 Nov 2026 04:13:58 GMT  
		Size: 62.9 MB (62929597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd3f13e97ae1a7138890426f61009f19b33df6c46d9f336010ff4944e067ec13`  
		Last Modified: Mon, 16 Nov 2026 23:10:08 GMT  
		Size: 161.7 MB (161695225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:8cb53fb745adf8692b1de4e6c35d89683f78d129fb083dfa7b4f92382e0fce15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6004675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db208e4cb05eda5b065981598906ddd8301bf60f135cda086ead119ad524a49c`

```dockerfile
```

-	Layers:
	-	`sha256:0e3827bc400fd354bcb3d23bcb56df11b2f109c2a42a4220018cec75b16f6387`  
		Last Modified: Mon, 16 Nov 2026 23:10:05 GMT  
		Size: 6.0 MB (5995225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0036a54847cee32bc06a2223f964de9de4bf74f6ee106ef26247608788499bd`  
		Last Modified: Mon, 16 Nov 2026 23:10:04 GMT  
		Size: 9.4 KB (9450 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:59ab1b6ca088d5504ce42848da3b9958840cd734489b0b1f68f1baba91eb79c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216530734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cb52e7cda9f1e3d6cdeaa594fcc56f55dca48a84ff7df0dbf003bf323da32cc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 22:29:53 GMT
COPY /rootfs/ / # buildkit
# Mon, 16 Nov 2026 22:29:53 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 23:09:31 GMT
ARG version=11.0.33.0.10-1
# Mon, 16 Nov 2026 23:09:31 GMT
ARG resource_version=11.0.33.0.10
# Mon, 16 Nov 2026 23:09:31 GMT
# ARGS: version=11.0.33.0.10-1 resource_version=11.0.33.0.10
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 16 Nov 2026 23:09:31 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 23:09:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:440cc69e8f9d2c85d2f689d3242bc99b93cac55a936a1cbebf5a197a5e006a99`  
		Last Modified: Mon, 16 Nov 2026 22:30:09 GMT  
		Size: 64.8 MB (64776402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a2694bfc14da91fabb33bcbcfe2ab7997deed1a151e4d1b946ca5da9368c60`  
		Last Modified: Mon, 16 Nov 2026 23:09:52 GMT  
		Size: 151.8 MB (151754332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ae6cad11a3f63dfa507556e19e422cd0ee4f887e0e44a3dad8c86760bd9cbe43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5797469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6b59c1228207f97071145d0f6bf9b8744d7df608d460518d24c8b285c0190bb`

```dockerfile
```

-	Layers:
	-	`sha256:e5804e0c07b69159b65e819ecaf15b52b084ac30d31b5756b5f556de92f9408d`  
		Last Modified: Mon, 16 Nov 2026 23:09:49 GMT  
		Size: 5.8 MB (5787939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9882e9afd53f09dab86247506e2c679ea7824e96290cccb7c54238eb64d684c4`  
		Last Modified: Mon, 16 Nov 2026 23:09:48 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.in-toto+json
