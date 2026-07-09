## `amazoncorretto:17-al2-native-headless`

```console
$ docker pull amazoncorretto@sha256:4143ed95dfd89c65fde20180ca73f9f3710cec8cb28646841040cefdaef2d420
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-native-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:cd43ff417f58b96118f7c84ec86d64817bc31415bfd2e915a4925566e6295665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.7 MB (150679404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:614cba409b798d4aa656c19327e18643cc1b47fadea3957c6db10f8b8c9e38ef`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:54 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:54 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:12:06 GMT
ARG version=17.0.19.10-1
# Wed, 08 Jul 2026 21:12:06 GMT
# ARGS: version=17.0.19.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Wed, 08 Jul 2026 21:12:06 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:12:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:900a03988e5535b8fa16eca2a88ea4d98129caeae92c97c1cb9cd28fdddbbaad`  
		Last Modified: Wed, 08 Jul 2026 10:41:40 GMT  
		Size: 63.0 MB (62958380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bfef84687d0ccccc7384218a476c5692313d2b265588b4edb1720e04ced329c`  
		Last Modified: Wed, 08 Jul 2026 21:12:24 GMT  
		Size: 87.7 MB (87721024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7ec8e630262365ec26f525c277da019e7120172dd4befe75596162b12d94e740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5642142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebefef66c304a2fe3e66db1a7641efeb0d43888f0a70c50e678b660560f71d7b`

```dockerfile
```

-	Layers:
	-	`sha256:181da86ac7f6897b98b0dfe2ac6e886aeea526e6bf8eff8ab206463b6a4c6899`  
		Last Modified: Wed, 08 Jul 2026 21:12:23 GMT  
		Size: 5.6 MB (5632679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ec60d8dc04b10ce1772d7046f3632b53c30d85969e917914e23bd34decc6b41`  
		Last Modified: Wed, 08 Jul 2026 21:12:22 GMT  
		Size: 9.5 KB (9463 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-native-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:5ac50594095e7763977cfbc8e1010811a5f9c91ff50910ebdadcbf30d448f782
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.6 MB (144644817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fd2605be88b853928b72796ef00f3e086e5a832711e545966f9f4a21b68b78b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 08 Jul 2026 20:25:16 GMT
COPY /rootfs/ / # buildkit
# Wed, 08 Jul 2026 20:25:16 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 21:11:33 GMT
ARG version=17.0.19.10-1
# Wed, 08 Jul 2026 21:11:33 GMT
# ARGS: version=17.0.19.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2.1.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-17-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Wed, 08 Jul 2026 21:11:33 GMT
ENV LANG=C.UTF-8
# Wed, 08 Jul 2026 21:11:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:2fb7467b49ea9922ec92b3b41cd0ae9ae2840cce49082c60c621e4e388aabb23`  
		Last Modified: Wed, 08 Jul 2026 20:25:31 GMT  
		Size: 64.8 MB (64787879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:658cea8e9aa294f1ac8fc040eb0d5cbdf931bbab459587568d164ed4ff503424`  
		Last Modified: Wed, 08 Jul 2026 21:11:50 GMT  
		Size: 79.9 MB (79856938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:83687bddfa8606672dfeda917d616495fadb706b42b8f8096ff57cb9c053f4c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5458499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b87ad8f63e0fbac3e0d97f58efdb83f92825b22745b6bc8d2ae87b7a91c66241`

```dockerfile
```

-	Layers:
	-	`sha256:595a1429af25da8592f63b91cab6fde1cf1d409c4a6901ef8f702f97e6e57ce7`  
		Last Modified: Wed, 08 Jul 2026 21:11:48 GMT  
		Size: 5.4 MB (5448956 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e659f3927849ef1f4c14ce3080548c6ad6dcf27e4d38171e2f385094b5d3d64`  
		Last Modified: Wed, 08 Jul 2026 21:11:48 GMT  
		Size: 9.5 KB (9543 bytes)  
		MIME: application/vnd.in-toto+json
