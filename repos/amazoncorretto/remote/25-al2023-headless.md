## `amazoncorretto:25-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:3bb634c3d7ef0545d13e2fca5470046b4a86e6b1451a385c1c2aae6f8399c261
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:25-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:9ef9fb9a5a3ad2645c4357cd7da58bc9cd3c4c6a16376b1d52e9112a61c67655
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.5 MB (158505659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9cbd2b933e1151d6e97fa26bacdb1f7c5ed91613937933d4eb4d4cc96f9e4a1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:03 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:03 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:45:07 GMT
ARG version=25.0.5.0.10-1
# Fri, 30 Oct 2026 19:45:07 GMT
ARG resource_version=25.0.5.0.10
# Fri, 30 Oct 2026 19:45:07 GMT
ARG package_version=1
# Fri, 30 Oct 2026 19:45:07 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:45:07 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:45:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:da3e7a9e0d7ce8bd2e34f464f7fc47c97dde7880b26078690ed76ef5809d8b69`  
		Last Modified: Thu, 22 Oct 2026 01:38:41 GMT  
		Size: 54.6 MB (54648920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c58851876d0372f756bd399f0b5a143abfb82fe8d5de4d0a9facf696680be3d`  
		Last Modified: Fri, 30 Oct 2026 19:45:26 GMT  
		Size: 103.9 MB (103856739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:73e1598f59b423c6b10acab5a5568eb6b1c9b7723d97a1221630afb6f13c6b66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5217940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2b9962565a468551155fe0421747a7274c718eaa53ac1b8dd29a74df2e2b473`

```dockerfile
```

-	Layers:
	-	`sha256:f8f46cd3e97e17e0692ddfe57a88907de84841ddf4b108945d645c2dea68bf67`  
		Last Modified: Fri, 30 Oct 2026 19:45:24 GMT  
		Size: 5.2 MB (5208679 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fde539c8a25065ff1da78d19535f3f3b9c272fe267487ed37830e8c6527c5bb0`  
		Last Modified: Fri, 30 Oct 2026 19:45:24 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:25-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:0f1a78616e0dd4c73a3b3fe30d6e670419e51ad514b2d21cf3c599f8a3420add
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.3 MB (156296958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:106e4029dd35c9df760f56a1e5757c0a9e1db8b90d3f01f142239a2434e5c61b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:40:43 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:40:43 GMT
CMD ["/bin/bash"]
# Fri, 30 Oct 2026 19:45:06 GMT
ARG version=25.0.5.0.10-1
# Fri, 30 Oct 2026 19:45:06 GMT
ARG resource_version=25.0.5.0.10
# Fri, 30 Oct 2026 19:45:06 GMT
ARG package_version=1
# Fri, 30 Oct 2026 19:45:06 GMT
# ARGS: version=25.0.5.0.10-1 resource_version=25.0.5.0.10 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-25-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-25-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Fri, 30 Oct 2026 19:45:06 GMT
ENV LANG=C.UTF-8
# Fri, 30 Oct 2026 19:45:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-amazon-corretto
```

-	Layers:
	-	`sha256:b9de6aa56dd75608aa129f8d7c4af23dae5b1bb2a5a2edb4e9acfd307a0af336`  
		Last Modified: Thu, 22 Oct 2026 02:52:33 GMT  
		Size: 53.5 MB (53529316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d1877e984a49353bfa0a7a775fc5fef48e6356660e3b77a946fddb3817aa841`  
		Last Modified: Fri, 30 Oct 2026 19:45:27 GMT  
		Size: 102.8 MB (102767642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:25-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5f3b0661bdcbfc4c73199369cb0469310ed2f459f958a30eaad88bb8634abc2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5216843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ce3ac8e1dd9b105fb7f60e3cd5421924612157a06becc7752dffad9e095ec7c`

```dockerfile
```

-	Layers:
	-	`sha256:f7391a54e77fe83ef62b0c8c350153ed883cdee4fdf689ebe6036d4b25e7b9b7`  
		Last Modified: Fri, 30 Oct 2026 19:45:25 GMT  
		Size: 5.2 MB (5207491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec624a38fbdac8fce54fcfb446e286c8ae732fa8a46ffe13310e93b99ff4078f`  
		Last Modified: Fri, 30 Oct 2026 19:45:24 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json
