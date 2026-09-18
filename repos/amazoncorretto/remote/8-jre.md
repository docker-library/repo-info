## `amazoncorretto:8-jre`

```console
$ docker pull amazoncorretto@sha256:1ca2371ada764ff195fa5104a7bdacc5e285030a74644e99bd688b2f09a855c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-jre` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:20b64e0ee39a713c796a0fdcecbeabc8489dc6468a0e852b816b19b2313dcf6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.3 MB (109292169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65de175db0aa0444682acc9543eefb31ac09208b31fd5c4db6944534d77ec0a9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:16 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:10:58 GMT
ARG version=1.8.0_504.b01-1
# Tue, 15 Sep 2026 00:10:58 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && alternatives --install /usr/lib/jvm/java-1.8.0-amazon-corretto java-1.8.0-amazon-corretto /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} 100     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:10:58 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:10:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b54175b8c5f38f7b57352b1374860aab6cff5a21594c7b2cf73559edc92880c`  
		Last Modified: Tue, 15 Sep 2026 00:11:13 GMT  
		Size: 54.7 MB (54705887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:2c751f2d941b80bf3838989fff06f18aa3791c2ee648ae89b37d5f593a36d9d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5228047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aef4ced713cd780db0467a215f460020afdc41f7c760e6de08eb7ab85175b330`

```dockerfile
```

-	Layers:
	-	`sha256:af46639e8600cce0e2c990229e690a6adfb0f59d0c562789cb321d44ae31467e`  
		Last Modified: Tue, 15 Sep 2026 00:11:12 GMT  
		Size: 5.2 MB (5218260 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:365335075f9fac4dab1323d0a725c97b749834d91c64751dcc762b48341414a3`  
		Last Modified: Tue, 15 Sep 2026 00:11:11 GMT  
		Size: 9.8 KB (9787 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-jre` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:a6b8c9ee1ebccee8c4cb2245cae75f5a02893d11e14027543b1047982290383d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107889631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cdbb20dbfe3c942ee3eb5ac1ea2d9a6c132b440e6435e9a1aab9b3080b1a756`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:45:44 GMT
ARG version=1.8.0_504.b01-1
# Thu, 17 Sep 2026 22:45:44 GMT
# ARGS: version=1.8.0_504.b01-1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && export resouce_version=$(echo $version | tr '-' '.' | tr '_' '.'| tr -d "b" | awk -F. '{print $2"."$4"."$5"."$6}')     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-1.8.0-amazon-corretto-$version.amzn2023.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resouce_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && alternatives --install /usr/lib/jvm/java-1.8.0-amazon-corretto java-1.8.0-amazon-corretto /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH} 100     && popd     && rm -rf /usr/lib/jvm/java-1.8.0-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:45:44 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:45:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-amazon-corretto/jre
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa0311f9b36d3e8e37c71c647548cf6ee8c82e735ea1037aad1f0c3f2cabf6b`  
		Last Modified: Thu, 17 Sep 2026 22:45:59 GMT  
		Size: 54.4 MB (54437058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-jre` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:bd8a92deb587b87b06481ffcb37c4af3e23d4598be2c0ab8545c7a0c7a083c41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5227832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1454a1e347550a68cfb6b1e2c136265feeb6e9618c67f439159176f63ff9410`

```dockerfile
```

-	Layers:
	-	`sha256:9b6372d5c517be2099fa1c69d8a9dd6e203338a98af281909b06a4b6f5e7607b`  
		Last Modified: Thu, 17 Sep 2026 22:45:57 GMT  
		Size: 5.2 MB (5217953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:492c1d18d7c831c1879e709981bba9057207b6c8dc7acaadf96dee764ffc0974`  
		Last Modified: Thu, 17 Sep 2026 22:45:57 GMT  
		Size: 9.9 KB (9879 bytes)  
		MIME: application/vnd.in-toto+json
