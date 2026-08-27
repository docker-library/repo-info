## `amazoncorretto:11-al2-native-headless`

```console
$ docker pull amazoncorretto@sha256:15e5ae334f304ce1f423d4ffd1b986a5dfe5c2f1c93f752432cd69563cde576e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-native-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:fcf859b5b78fbedb68d82c98e87d8cffbdcec70101dd17bb6e0b8fe73ba02533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.4 MB (217403122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb58013779029a8fc931b76c7c69e5e5bc536b946e80ebc5dafac9b5cec1a95d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 27 Aug 2026 18:29:06 GMT
COPY /rootfs/ / # buildkit
# Thu, 27 Aug 2026 18:29:06 GMT
CMD ["/bin/bash"]
# Thu, 27 Aug 2026 19:11:18 GMT
ARG version=11.0.32.10-1
# Thu, 27 Aug 2026 19:11:18 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 27 Aug 2026 19:11:18 GMT
ENV LANG=C.UTF-8
# Thu, 27 Aug 2026 19:11:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:7b5924e8d322730e9c4e8894d8783a6efb8f7553b1186599f35e97dfa4b7372d`  
		Last Modified: Thu, 27 Aug 2026 17:56:29 GMT  
		Size: 63.0 MB (62973824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45eeff8354147e2e8edcf1295d1d48be1ffa5f90f59e3fe5467d9f25a53ffa9b`  
		Last Modified: Thu, 27 Aug 2026 19:11:37 GMT  
		Size: 154.4 MB (154429298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:261aab2072dbd6f664036c64304fc3de732f7911acd1bfa2576c2c6d5f9cfc15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5692892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de5b911db673569cfc8db10a9df6b7910bef6ed141e5f0fadfaead2c14efe537`

```dockerfile
```

-	Layers:
	-	`sha256:9c3970d3b198f89ca99337ea661867381efb0b57f1ad46067d3f5a365623e497`  
		Last Modified: Thu, 27 Aug 2026 19:11:34 GMT  
		Size: 5.7 MB (5683430 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef4e8f926f7801763571129c3d7f2bcc3889c645144210d238071503026929b1`  
		Last Modified: Thu, 27 Aug 2026 19:11:33 GMT  
		Size: 9.5 KB (9462 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-native-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7b6720f8c2ae4fa417532e2f8a9cbab9bc91962cd8131a49dd26cf50428047ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.4 MB (211391242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b60dae8e186bbf955251c6640eb4c742acd1dd5df37155799bbb86d197499c27`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 27 Aug 2026 18:28:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 27 Aug 2026 18:28:04 GMT
CMD ["/bin/bash"]
# Thu, 27 Aug 2026 19:10:50 GMT
ARG version=11.0.32.10-1
# Thu, 27 Aug 2026 19:10:50 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 27 Aug 2026 19:10:50 GMT
ENV LANG=C.UTF-8
# Thu, 27 Aug 2026 19:10:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:2b41bf6c0b7311e7e581c43ef89dcfd7673d76db2f93fc00703cb6394c88ccf2`  
		Last Modified: Thu, 27 Aug 2026 18:15:57 GMT  
		Size: 64.8 MB (64790556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:834074d0077ea6e5fd714385a486ec147460b360605a59e31d21f26667f83936`  
		Last Modified: Thu, 27 Aug 2026 19:11:10 GMT  
		Size: 146.6 MB (146600686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6ef0789dbdac382db5d5b9c112dbac2c647f632952dc0082a561c6f3aefa4dcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5511440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0404234ce0bfe6e2ca00c82e13a0c60e89e0f20daac86a055276454c431c4690`

```dockerfile
```

-	Layers:
	-	`sha256:6bd697b7eb158db2e7dfb90706ce8a52b91de47f9e98ac636b0b682fac5db3bb`  
		Last Modified: Thu, 27 Aug 2026 19:11:07 GMT  
		Size: 5.5 MB (5501898 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85d362702227811e7cfe0582f6ea90c48ed3613b1603534ee600ed8fa73a9137`  
		Last Modified: Thu, 27 Aug 2026 19:11:07 GMT  
		Size: 9.5 KB (9542 bytes)  
		MIME: application/vnd.in-toto+json
