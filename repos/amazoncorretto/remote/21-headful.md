## `amazoncorretto:21-headful`

```console
$ docker pull amazoncorretto@sha256:d3e0d38d244b22f6cf6cbdae8fddb61d324d4b874f58fbd8e0a58015448bb274
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:8535fdb2eb399e0d7c930b540399d87bd2a7e6316930ba4ad9a5e95b9f48c726
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144812969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:787d553454705b7e812bbccbca2a0522a1bc1fb85ee4b32b5532b4e815698a73`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:52:15 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:52:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 19:59:52 GMT
ARG version=21.0.13.0.11-1
# Thu, 05 Nov 2026 19:59:52 GMT
ARG resource_version=21.0.13.0.11
# Thu, 05 Nov 2026 19:59:52 GMT
ARG package_version=1
# Thu, 05 Nov 2026 19:59:52 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 19:59:52 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:59:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:36d0e51e1ea56325505d833f7d87567b6720c396e9a5742de0f157b063545163`  
		Last Modified: Sat, 31 Oct 2026 02:35:05 GMT  
		Size: 54.6 MB (54569615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d51e451fe7e642c5d3ef085e8c7ce10e0931e39b272fc173c7715e4b64084902`  
		Last Modified: Thu, 05 Nov 2026 20:00:13 GMT  
		Size: 90.2 MB (90243354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:f815f10e69a54b717100161155c06a6ec3a81f7154da43851759d4202b349425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5233608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35788383ecabfe4edbe89796cc86d178460f51fe34739590d373fbae6ed49035`

```dockerfile
```

-	Layers:
	-	`sha256:aa00bded8f053ea58969176861706f4e92fa160425dc9624cf76f534efe52368`  
		Last Modified: Thu, 05 Nov 2026 20:00:11 GMT  
		Size: 5.2 MB (5224175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d9ef128a0accb663b0635888614d22fd53e9472fe644a0d1e33e8e946642af5`  
		Last Modified: Thu, 05 Nov 2026 20:00:11 GMT  
		Size: 9.4 KB (9433 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:126bd70fbfe316859baf64079f70e018d4a8626ea2a3e219aa5f83f9ef8ae719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142844171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bd29b8b2c3560bfc1bb50d843d9c2c41b2d81d8248c2cb3d1eef3d45e4055c8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 02 Nov 2026 19:55:47 GMT
COPY /rootfs/ / # buildkit
# Mon, 02 Nov 2026 19:55:47 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 20:11:12 GMT
ARG version=21.0.13.0.11-1
# Mon, 02 Nov 2026 20:11:12 GMT
ARG resource_version=21.0.13.0.11
# Mon, 02 Nov 2026 20:11:12 GMT
ARG package_version=1
# Mon, 02 Nov 2026 20:11:12 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Mon, 02 Nov 2026 20:11:12 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 20:11:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b8e61038d8376d5ddd35dbfa758ef5111f4b4a25d9f7bb1251f26920aa8b15b`  
		Last Modified: Mon, 02 Nov 2026 20:11:31 GMT  
		Size: 89.4 MB (89388048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:836fb3c52a44745896e42273cb10dace3821f168aff01ab4a10b24cb1b7835e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9c7db580d02b73eed6991bf8049414c9e8e109b9bf805d09bfe9e82e0d66592`

```dockerfile
```

-	Layers:
	-	`sha256:cf37f75008e493d6077701ddf50d273422fb3bdcf2193c1f98d5bda4527e5709`  
		Last Modified: Mon, 02 Nov 2026 20:11:29 GMT  
		Size: 5.2 MB (5222981 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e973d25f1dd62457377bd68f9da16a98af50d52ec671c812064e8247f932a735`  
		Last Modified: Mon, 02 Nov 2026 20:11:29 GMT  
		Size: 9.5 KB (9525 bytes)  
		MIME: application/vnd.in-toto+json
