## `amazoncorretto:17-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:e0610c64f7d4ad35c8a2fed1fdeb1460b80f7de5262c1ba5b71105c3bb498d24
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ec7e8edc0634fe2b6db7de75637b80d7f17fa76a91cbffe5a0060c69ab50786c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.1 MB (137054590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:908033105fa9b7119789440e8dbd5be24999e230d624c571d273d06d01eb7169`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:16 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:11:40 GMT
ARG version=17.0.20.10-1
# Tue, 15 Sep 2026 00:11:40 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:11:40 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:11:40 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:11:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a82e3f5263024cbcceaf5ab4d8088c1b4d545e415778b0b88670671f7432b0`  
		Last Modified: Tue, 15 Sep 2026 00:11:58 GMT  
		Size: 82.5 MB (82468308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:947fbeb2b1c3287f9bd72d1248362676c65031653d020a1c5b43181fb47172e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8abb8f052e4b07c7c30b5431f2529ad8923eb5c931a7ffb8d5e2d59f048c5273`

```dockerfile
```

-	Layers:
	-	`sha256:11dcc43e0802965da402f4495fa35063af89c9a9d781a3e9c71230155cd6665d`  
		Last Modified: Tue, 15 Sep 2026 00:11:56 GMT  
		Size: 5.2 MB (5197111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba50d356629f34de3664bbf787790e2652c790f3342d642ae9402c79af851c04`  
		Last Modified: Tue, 15 Sep 2026 00:11:56 GMT  
		Size: 9.2 KB (9206 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:756ed291c68ec589dd710dabcab658963a712db9ba20f68e5877973bac37119a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135327657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bfc5ee841d7adac2338bee07aefbaed8e071fb33eedc236c4ba678f3b97057f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:45:56 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:45:56 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:11:13 GMT
ARG version=17.0.20.10-1
# Tue, 15 Sep 2026 00:11:13 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:11:13 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:11:13 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:11:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8526f3b4d2d360d5462cb69dc3faeef3adaa27455468c3fe73db3608e6b629`  
		Last Modified: Tue, 15 Sep 2026 00:11:31 GMT  
		Size: 81.9 MB (81875084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c39d05fbb60085aae3ee342739295ac3b720e7e4f6a00f271e137cc6308f4585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5205210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b8eae88ba146c4b7d221fe82a55347c1358c31e14147369324a89bb7a82b3bc`

```dockerfile
```

-	Layers:
	-	`sha256:9b1ecdfe4497f6289fa1aea81a8fbb24d7186d4e203b7756cccbecbd901c6e02`  
		Last Modified: Tue, 15 Sep 2026 00:11:29 GMT  
		Size: 5.2 MB (5195912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98dc434c8d47c406bdf3ce1c24b973ba35bde6fab2d4c1fb0f33d221e0ce742b`  
		Last Modified: Tue, 15 Sep 2026 00:11:28 GMT  
		Size: 9.3 KB (9298 bytes)  
		MIME: application/vnd.in-toto+json
