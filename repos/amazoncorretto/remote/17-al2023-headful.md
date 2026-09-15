## `amazoncorretto:17-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:c72ab04dee205248bd45839ffff6562b7cbc6c1cf32466e497ab5b9e9e9469a1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:391c66a01c7d682d6ce7e5bcecdd7f08130e6cd951476229c6f82aeaace10a5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137770563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3635a22d57034c58b1be38d285eaf0868775d2a46f0ecd06dbf53ae29ab020d5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:46:16 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:46:16 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:11:41 GMT
ARG version=17.0.20.10-1
# Tue, 15 Sep 2026 00:11:41 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:11:41 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:11:41 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:11:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2f1d1d53a3f256f4f5f4fe973c5467773dc4e1f9aba12d74cd8bcc01b357db1`  
		Last Modified: Tue, 15 Sep 2026 00:11:58 GMT  
		Size: 83.2 MB (83184281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9ac2c9b008266ecca433dce25d44a88128274202f2b13cb4eed00ced62797eab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7791735c0501deab362e9c47f4124e54e8885e82c24151828b27f0f062ed112`

```dockerfile
```

-	Layers:
	-	`sha256:8955095a054ceeabac44668ecd5475f3695ede2b09788f42a45b286ea411c577`  
		Last Modified: Tue, 15 Sep 2026 00:11:56 GMT  
		Size: 5.2 MB (5222540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41f6c4b07df9090a813d80eb288ea08d4c2e8d7eef97092c5e8d8f371ef873c2`  
		Last Modified: Tue, 15 Sep 2026 00:11:56 GMT  
		Size: 9.4 KB (9375 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f389cdb1c6d9e2360a8596cda096136fe4bb55137301fd8f24f4dbdca19f1240
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.1 MB (136067428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af46ba6a535ea335aa458bb1fb54cb6eb94e77c9b2d25776c0edd3e78e7919a8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 14 Sep 2026 23:45:56 GMT
COPY /rootfs/ / # buildkit
# Mon, 14 Sep 2026 23:45:56 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 00:11:25 GMT
ARG version=17.0.20.10-1
# Tue, 15 Sep 2026 00:11:25 GMT
ARG package_version=1
# Tue, 15 Sep 2026 00:11:25 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Tue, 15 Sep 2026 00:11:25 GMT
ENV LANG=C.UTF-8
# Tue, 15 Sep 2026 00:11:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e22855dcfdfb7a583a4205b760366e192a3b3630f1459c6fd35e62a46590ae`  
		Last Modified: Tue, 15 Sep 2026 00:12:04 GMT  
		Size: 82.6 MB (82614855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:08b8cbf6ff4d55f84a0dcf95829d61b9188b138a3cedec09833663658abec90d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4a7f495914c0b4405097a2df263213c601c78f1d6e3af1fe3b7bd979bc84e0`

```dockerfile
```

-	Layers:
	-	`sha256:c4552a967f3810288b4f2343f43d255a78d2a2686002087b4a8b1411188d0ade`  
		Last Modified: Tue, 15 Sep 2026 00:11:41 GMT  
		Size: 5.2 MB (5221344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:481e9cdd206c6db22c3ed9f94483c955727414149c31c3f1c0b482eed4f40b95`  
		Last Modified: Tue, 15 Sep 2026 00:11:41 GMT  
		Size: 9.5 KB (9467 bytes)  
		MIME: application/vnd.in-toto+json
