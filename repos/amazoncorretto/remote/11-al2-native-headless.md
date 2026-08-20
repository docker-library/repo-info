## `amazoncorretto:11-al2-native-headless`

```console
$ docker pull amazoncorretto@sha256:989bd2f0bed717eb3b177bd79e145a62b8107524ababe8a3dc7b4c379e1b160f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-native-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:300131ed389e655bf157e34b160eacb3811e870acf4a4f87dd7ab385399ae77a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.4 MB (217403186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e5e20e7ec0bf1f5d8916b6a99b757de3ff3b394c1e980a185914d38e670872`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:56:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:56:04 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:19:41 GMT
ARG version=11.0.32.10-1
# Thu, 20 Aug 2026 17:19:41 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 20 Aug 2026 17:19:41 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:19:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:7c706b7b88f32b6151af294498eecab3a3d1918791c514fd83c5da5c67eb0115`  
		Last Modified: Tue, 18 Aug 2026 22:35:39 GMT  
		Size: 63.0 MB (62974016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:219f42849b3986110f1e1f5490f7dfb6f166a5e6243c16e6e31a63bc4fb2eee4`  
		Last Modified: Thu, 20 Aug 2026 17:20:02 GMT  
		Size: 154.4 MB (154429170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:912642d2073dbdff05610869585e3bfaf53d6c169c3b4fd3565a5375b3557f3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 MB (5692892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29852d062534716ac72760f3a77e82ee3382747262bef8100dc0154b0ab206d3`

```dockerfile
```

-	Layers:
	-	`sha256:16bc361ad8193debb92b25f94e3d2767ac4b946249702bd8957880d51a1b1895`  
		Last Modified: Thu, 20 Aug 2026 17:19:59 GMT  
		Size: 5.7 MB (5683430 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81331ed06b8329d5be2500f48c4bdbbf3bcc0fb5487fcb46b6df6a1d082f69c1`  
		Last Modified: Thu, 20 Aug 2026 17:19:59 GMT  
		Size: 9.5 KB (9462 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-native-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:99213628b8e5f6557682ae52fd5e297beceea2ffefb557823614278836d2c484
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.4 MB (211389634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57f04bc4cfe14087102cca9d068e8d7f57c2b4bd6117ca1a18e441ba24cd5cb0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:50 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:50 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:16:20 GMT
ARG version=11.0.32.10-1
# Thu, 20 Aug 2026 17:16:20 GMT
# ARGS: version=11.0.32.10-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.')     && rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2     && echo "localpkg_gpgcheck=1" >> /etc/yum.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-11-amazon-corretto-headless-$version.amzn2.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: rsa sha1 (md5) pgp md5 OK" || exit 1     && yum install -y $(yum deplist "${CORRETO_TEMP}/${rpm}" |grep provider | grep -vE "log4j-cve|corretto" | tr -s ' ' |cut -d ' ' -f 3 );     done     && rpm -i --nodeps ${CORRETO_TEMP}/*.rpm     && popd     && (find /usr/lib/jvm/java-11-amazon-corretto.${ARCH} -name src.zip -delete || true)     && rm -rf ${CORRETO_TEMP}     && yum clean all     && rm -rf /var/cache/yum     && sed -i '/localpkg_gpgcheck=1/d' /etc/yum.conf # buildkit
# Thu, 20 Aug 2026 17:16:20 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:16:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:487930dafcbd912a1d47c9e792c2aea4e910496ba2af16620c70488227a4b1e7`  
		Last Modified: Wed, 19 Aug 2026 14:14:07 GMT  
		Size: 64.8 MB (64789116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c72381213fd67d73a8698cb719f115e8ece8ed1ac4cd73f5d54726bf9b1f5b8`  
		Last Modified: Thu, 20 Aug 2026 17:16:40 GMT  
		Size: 146.6 MB (146600518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-native-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7bade8cb6ee91c7741091a5fa957bfcf9a5cfa3a1dd6aac1d09d9ccf2445e201
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5511440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d283bf5e9f064a7f612cf3634caf8447ae0fd5829b189119e5521d011fcf0265`

```dockerfile
```

-	Layers:
	-	`sha256:027602a8638e3bb70b650446e9a4dfbcf5ac9bae234703946eb8a1d791c3ab6b`  
		Last Modified: Thu, 20 Aug 2026 17:16:37 GMT  
		Size: 5.5 MB (5501898 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a995b80c123f2ac28844a2387b43d6e7ad73edb886b42017e2cc055890b7d42`  
		Last Modified: Thu, 20 Aug 2026 17:16:37 GMT  
		Size: 9.5 KB (9542 bytes)  
		MIME: application/vnd.in-toto+json
