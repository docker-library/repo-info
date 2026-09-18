## `amazoncorretto:21-headless`

```console
$ docker pull amazoncorretto@sha256:ce13b01f01e589c7738ab6cf09647b78314f27c9f0b6df42ac0e4a6042970522
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ff3ca8adea989f1402dc3c28f2b74fce5db173cf2f0999f3e5c667fe4ce62d76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.9 MB (143926481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cdda097a2079edab16174d98b79141c22d98739767ddece881bf0624b938dc0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:16 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:12:27 GMT
ARG version=21.0.12.9-1
# Tue, 15 Sep 2026 00:12:27 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:12:27 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:12:27 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:12:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fc9cf6c8d8ccedf27923abdc1274487f84f4999412c548c4dc2126d6dc22dac`  
		Last Modified: Tue, 15 Sep 2026 00:12:45 GMT  
		Size: 89.3 MB (89340199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d960d5fe7c97c1645b6b9dc3d5d53998dff6508431b0f8926cf03e125eaff4a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5207934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5671b8eebd53ca4c394b73ded09572a122d9cc20ce17521e7ccaeb610e07bb4d`

```dockerfile
```

-	Layers:
	-	`sha256:e6b1b0a1937fcd213e175afa1ac490ead87b5a5fd87029a57a918dc48d6a92e7`  
		Last Modified: Tue, 15 Sep 2026 00:12:43 GMT  
		Size: 5.2 MB (5198733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5586bb890abb911f1b1c9f8513754c88b691412db7bbdc144b2cb61d72108ca3`  
		Last Modified: Tue, 15 Sep 2026 00:12:43 GMT  
		Size: 9.2 KB (9201 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:ed171379165bbd8a24cafd498a2ea9f9d7547a173ea27ef648bfce6542ec346d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.9 MB (141929448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b6b9803cda0f7fcb3202f6c06a083fc0a257ada54036dd94590c20640a318d1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:47:00 GMT
ARG version=21.0.12.9-1
# Thu, 17 Sep 2026 22:47:00 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:47:00 GMT
# ARGS: version=21.0.12.9-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:47:00 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:47:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f828c3128a696b5f807290a7c9e7912a4d93598073165d8d803603b92c185aa4`  
		Last Modified: Thu, 17 Sep 2026 22:47:19 GMT  
		Size: 88.5 MB (88476875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c0bc5cc4f175e8ccbdb895d86f828ac9f4dd39dd29002c8e3500fba66340ab31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87376d07b834186e7f5cbbbbdc98fdf7f29824de9e676ba781ac3ed0966b9604`

```dockerfile
```

-	Layers:
	-	`sha256:94237d520dd4f4f7e753e80a14942509ca97f969bc2d5a1a1a114e92ee7eaf0e`  
		Last Modified: Thu, 17 Sep 2026 22:47:17 GMT  
		Size: 5.2 MB (5197536 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0795f979c276deed212845bea5f2758e47cc73ef2c18038e37ab5d0f6eeac34`  
		Last Modified: Thu, 17 Sep 2026 22:47:17 GMT  
		Size: 9.3 KB (9293 bytes)  
		MIME: application/vnd.in-toto+json
