## `amazoncorretto:17-al2-native-jdk`

```console
$ docker pull amazoncorretto@sha256:4f09f9bae945fa0e4bc64f5988a73e1a9d666fd83636ead9c18d0af202131844
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:4b0d0e446cff00dc9a154e867a6f3629e582d5cc864713c25d04a9877804e5fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.8 MB (228819855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9529b90eae6cc51a37050454526a1d39aa25ce10e877abd67083e2d198debc3e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 27 Aug 2026 18:29:06 GMT
COPY /rootfs/ / # buildkit
# Thu, 27 Aug 2026 18:29:06 GMT
CMD ["/bin/bash"]
# Thu, 27 Aug 2026 19:12:05 GMT
ARG version=17.0.20.10-1
# Thu, 27 Aug 2026 19:12:05 GMT
# ARGS: version=17.0.20.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && if [[ ${rpm} != *jmods* ]]; then       yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );       fi;       done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 27 Aug 2026 19:12:05 GMT
ENV LANG=C.UTF-8
# Thu, 27 Aug 2026 19:12:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:7b5924e8d322730e9c4e8894d8783a6efb8f7553b1186599f35e97dfa4b7372d`  
		Last Modified: Thu, 27 Aug 2026 17:56:29 GMT  
		Size: 63.0 MB (62973824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6b38cfa8c6f5274f43b7b3cf8e0314d89e0641331ec1a09ed4627f140ba042`  
		Last Modified: Thu, 27 Aug 2026 19:12:28 GMT  
		Size: 165.8 MB (165846031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0b61f88dfbd84f29dd2ffd61362564ee991d3385dd33845ade909130e34cd118
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5982824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0defe68d9e24ed83fad3181554558b079bbd379b790d9e862d327554c219e629`

```dockerfile
```

-	Layers:
	-	`sha256:ea4f30b1b0b958320b8222dada407d142e7dbe4fe26efffd1b1cfd8d4e6229f7`  
		Last Modified: Thu, 27 Aug 2026 19:12:25 GMT  
		Size: 6.0 MB (5972764 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b193d5a8c2efc03fe6924e5d00f4652b5a3ce312119001909e17cb4d3e34141`  
		Last Modified: Thu, 27 Aug 2026 19:12:24 GMT  
		Size: 10.1 KB (10060 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7d6c0cd19c8fc9adc840841368f9b75f8084811a0232123f77dfcc748fe2f465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221059669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88f90660bb6f5ab890b5ed99109b0bd8dec5ff48605b7583c05c7c8682eab3e3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 27 Aug 2026 18:28:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 27 Aug 2026 18:28:04 GMT
CMD ["/bin/bash"]
# Thu, 27 Aug 2026 19:11:44 GMT
ARG version=17.0.20.10-1
# Thu, 27 Aug 2026 19:11:44 GMT
# ARGS: version=17.0.20.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-devel-$version.amzn2.1.${ARCH}.rpm" "java-17-amazon-corretto-jmods-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && if [[ ${rpm} != *jmods* ]]; then       yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );       fi;       done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 27 Aug 2026 19:11:44 GMT
ENV LANG=C.UTF-8
# Thu, 27 Aug 2026 19:11:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:2b41bf6c0b7311e7e581c43ef89dcfd7673d76db2f93fc00703cb6394c88ccf2`  
		Last Modified: Thu, 27 Aug 2026 18:15:57 GMT  
		Size: 64.8 MB (64790556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7333edebcc2844866e187cb1106231419b486b6a9585d95b41ad9345cc46bc62`  
		Last Modified: Thu, 27 Aug 2026 19:12:06 GMT  
		Size: 156.3 MB (156269113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9a138971f1a275345c46477082c1c48a551aedc05dbe2524c087c543799638e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5774775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f90bf9cd2c9cd931410fb61327f8c219036c657e2b7a9d5f7114aab671fac0c`

```dockerfile
```

-	Layers:
	-	`sha256:56ae42efeb8beb2b8d255ba4547c63f36f66bc246936436a11077e0b58a9b53f`  
		Last Modified: Thu, 27 Aug 2026 19:12:03 GMT  
		Size: 5.8 MB (5764635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f852e4e857bb4f2f3a2872c751c81cbf9f34f0d7e35fb38e0205492260fd1463`  
		Last Modified: Thu, 27 Aug 2026 19:12:03 GMT  
		Size: 10.1 KB (10140 bytes)  
		MIME: application/vnd.in-toto+json
