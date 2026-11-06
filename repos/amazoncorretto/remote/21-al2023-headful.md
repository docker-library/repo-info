## `amazoncorretto:21-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:ae4bad5d7300df811c25d2633b935ca8e1bd1d656058e2aac38b4e59dea4d2b5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2023-headful` - linux; amd64

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

### `amazoncorretto:21-al2023-headful` - unknown; unknown

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

### `amazoncorretto:21-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:da4cb84cb2124f4182ca071b6c87c7487c0271c0d4595f26d87fe909353f618e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142844112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42c0fcdf12f5ed2c5734076deb2f52826959951e7d76c2a13a562957a47e43f8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 05 Nov 2026 18:48:16 GMT
COPY /rootfs/ / # buildkit
# Thu, 05 Nov 2026 18:48:16 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 20:16:31 GMT
ARG version=21.0.13.0.11-1
# Thu, 05 Nov 2026 20:16:31 GMT
ARG resource_version=21.0.13.0.11
# Thu, 05 Nov 2026 20:16:31 GMT
ARG package_version=1
# Thu, 05 Nov 2026 20:16:31 GMT
# ARGS: version=21.0.13.0.11-1 resource_version=21.0.13.0.11 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-21-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-21-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-21-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 05 Nov 2026 20:16:31 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:16:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:c1eee8f81fa5e953bb6eab0ff6f612967f0ef8b1dc9fac3cb2319b1021f7a245`  
		Last Modified: Sat, 31 Oct 2026 02:35:03 GMT  
		Size: 53.5 MB (53456123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de90a8d76f3d0f678171d6d35686c8aad9692395ff96ffd910c077f7b9c33b57`  
		Last Modified: Thu, 05 Nov 2026 20:16:50 GMT  
		Size: 89.4 MB (89387989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:20497edb1c279746b176b48db70a26a62833184ce93f39184af98f5d415551d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e078c5be0f0ef5a606ce04a2620a035b4199eeb4d8c906fbc193d622b5631ed`

```dockerfile
```

-	Layers:
	-	`sha256:9c4d18aec3d8817cf591ea5f4602dbf64f579703e4d8ffda246ffee56a5860ec`  
		Last Modified: Thu, 05 Nov 2026 20:16:48 GMT  
		Size: 5.2 MB (5222981 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ceb328dc749d4ec51f964abdaaf997f923ce8ba299b83d330c6c0189393756d`  
		Last Modified: Thu, 05 Nov 2026 20:16:48 GMT  
		Size: 9.5 KB (9525 bytes)  
		MIME: application/vnd.in-toto+json
