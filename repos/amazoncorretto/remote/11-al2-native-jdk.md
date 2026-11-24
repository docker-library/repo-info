## `amazoncorretto:11-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:2c12dfdefb8d0d1814ff1966eb2d499c2d2f089d605cda5e212c0b533152fc78
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:4e0e911d5c1f8745e34b598b886684301a6058024c041db0489c1caaca43a956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224619400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3c62afb304958952d4f3ebef36f847ca115c0546fcc28bc27c62d85c177e143`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:28:09 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:28:09 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:10:22 GMT
ARG version=11.0.33.1.1-1
# Mon, 23 Nov 2026 21:10:22 GMT
ARG resource_version=11.0.33.1.1
# Mon, 23 Nov 2026 21:10:22 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 23 Nov 2026 21:10:22 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:10:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:5578d26df6c6bdfe9ec366cb0917de223c7478cae192d8015a93c8b38b37ab17`  
		Last Modified: Sat, 21 Nov 2026 04:12:27 GMT  
		Size: 62.9 MB (62930101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efda2263fdf3982c6ada58ab2046b7e6521d35c98f5c4367814a9c9765e90613`  
		Last Modified: Mon, 23 Nov 2026 21:10:42 GMT  
		Size: 161.7 MB (161689299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5ab7bf2a0e98f3810e55abfbd349f6e4209491f400740f6d1834fccb8d7f698b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6004671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74848651d0bf243ac47c9fddf7fc8e4e1e129b66e5966c8a258b43476e2ba103`

```dockerfile
```

-	Layers:
	-	`sha256:d44f3feac6b60339d8e89c60ebe5bc91bb41a2f709bb302c1b154ffcea933965`  
		Last Modified: Mon, 23 Nov 2026 21:10:39 GMT  
		Size: 6.0 MB (5995223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:969c0aadec85430a66d00676873ea345927852752d825c699a5bae62a73ae054`  
		Last Modified: Mon, 23 Nov 2026 21:10:38 GMT  
		Size: 9.4 KB (9448 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:2e9c3ba5b37cb75eb4824814cefa8ce6f3e36a187be7cdf2d7b1c686d7636f4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.6 MB (216567419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd37569cdae12051dc38716b361087e0cb3a1d61a39c65b1ca6cb31d99efadf9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 23 Nov 2026 20:28:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 23 Nov 2026 20:28:16 GMT
CMD ["/bin/bash"]
# Mon, 23 Nov 2026 21:10:25 GMT
ARG version=11.0.33.1.1-1
# Mon, 23 Nov 2026 21:10:25 GMT
ARG resource_version=11.0.33.1.1
# Mon, 23 Nov 2026 21:10:25 GMT
# ARGS: version=11.0.33.1.1-1 resource_version=11.0.33.1.1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm" "java-11-amazon-corretto-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Mon, 23 Nov 2026 21:10:25 GMT
ENV LANG=C.UTF-8
# Mon, 23 Nov 2026 21:10:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:6260f7832ff0690923da519c8d6fed973ab9207dae75750f3de443c494a4ff4f`  
		Last Modified: Mon, 23 Nov 2026 20:28:32 GMT  
		Size: 64.8 MB (64796591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b43ed5233a0cc3027226a448fce0f2ef228ec87e05e6169bf5c8453ac696d393`  
		Last Modified: Mon, 23 Nov 2026 21:10:46 GMT  
		Size: 151.8 MB (151770828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e067b8c6938de4b629e9ac2f909c31ec4240f13b3c3923d5252a09c2e5a160c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5797465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1151a4e4c04bcee639aacad6f0d6cc0f404522598d16dfa0139490d69ba75498`

```dockerfile
```

-	Layers:
	-	`sha256:dc38f9ab88396d16ee281a83d67a4c8d2dd7761ef70710c9bf06f9334c67d122`  
		Last Modified: Mon, 23 Nov 2026 21:10:43 GMT  
		Size: 5.8 MB (5787937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0a63b2e590439f75aa0dad9691ca48c5d0da5aa3ff1c886bbef90a9d6e9a1ca`  
		Last Modified: Mon, 23 Nov 2026 21:10:43 GMT  
		Size: 9.5 KB (9528 bytes)  
		MIME: application/vnd.in-toto+json
