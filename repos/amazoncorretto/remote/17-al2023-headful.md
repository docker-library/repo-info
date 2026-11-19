## `amazoncorretto:17-al2023-headful`

```console
$ docker pull amazoncorretto@sha256:5431aa09d5fbae465b2619b424724a4c2e5e207b0fa72e2992915c4991b2473e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2023-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:933e0584160a1ab1827031e15149e879a9b4bfbcd1bb68af4ce2d686d361f521
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.9 MB (137918863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5915a60463be5b150d93a60d37648071d7edb63dd2f6d8005bfc7957513562f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:24 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:24 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:34:01 GMT
ARG version=17.0.21.1.2-1
# Wed, 18 Nov 2026 21:34:01 GMT
ARG resource_version=17.0.21.1.2
# Wed, 18 Nov 2026 21:34:01 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:34:01 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:34:01 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:34:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:48c7a3aa33f84b2fa7af701f558c0a97251fe0ca6790119c6f912decc8cad76d`  
		Last Modified: Tue, 17 Nov 2026 23:01:37 GMT  
		Size: 54.6 MB (54569091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3367f2709f91a7b2c1e536edee8e561754fdbb3ec7bdbb5cb93c91452786b7c2`  
		Last Modified: Wed, 18 Nov 2026 21:34:18 GMT  
		Size: 83.3 MB (83349772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:0b53b6298f4494f62d600f5a5f1f67e82fb6706cd58ec18ff545cea512baf057
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb0f134e18faaad3a6dc777b73518da538c1f422f6f80c6f8ae9791ae5426d9a`

```dockerfile
```

-	Layers:
	-	`sha256:44f6996e6cb58fef70af987844dba25ea3097365710af71f080e809293ebdee2`  
		Last Modified: Wed, 18 Nov 2026 21:34:16 GMT  
		Size: 5.2 MB (5222557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e80e0c9972661d6801c80584210f466f02438c3de84402f43c6d74aa8188a156`  
		Last Modified: Wed, 18 Nov 2026 21:34:15 GMT  
		Size: 9.4 KB (9431 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2023-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:adbdd285e80413fe764c9a4af634e3bf69f486c554b9de960b30baf6a1a994fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.3 MB (136250038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7f84b5f7ac480cdd3631d482c958d0e65f301360b68172f2de62abd8eb49f4b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 18 Nov 2026 21:16:23 GMT
COPY /rootfs/ / # buildkit
# Wed, 18 Nov 2026 21:16:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 21:34:35 GMT
ARG version=17.0.21.1.2-1
# Wed, 18 Nov 2026 21:34:35 GMT
ARG resource_version=17.0.21.1.2
# Wed, 18 Nov 2026 21:34:35 GMT
ARG package_version=1
# Wed, 18 Nov 2026 21:34:35 GMT
# ARGS: version=17.0.21.1.2-1 resource_version=17.0.21.1.2 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-17-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/${resource_version}/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Wed, 18 Nov 2026 21:34:35 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 21:34:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:7dd5afb185e9abad9919aa0d5eaa430bb9babdb805532cdb871320227597f486`  
		Last Modified: Wed, 18 Nov 2026 01:44:00 GMT  
		Size: 53.5 MB (53453550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e14a1f50e88d0918154c87c60044f993e29be87078f2957caac53947f85379`  
		Last Modified: Wed, 18 Nov 2026 21:34:53 GMT  
		Size: 82.8 MB (82796488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7569df5386dbfa158ca5664b5a67aba8a63a0e9227b2f22e152709eb4db96ba8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fcfd1824f428075101bff13223a7d59374acdf02434c7211a7e97fcd99efb5b`

```dockerfile
```

-	Layers:
	-	`sha256:9d6fefd0e464900004e00a1ee86e557be2a9b2d98c01a03b8344c5cb1f127943`  
		Last Modified: Wed, 18 Nov 2026 21:34:51 GMT  
		Size: 5.2 MB (5221361 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:705c01c6f6307a9078b972472b2f295a09b856addbfd1ce0badb99db1d1e0560`  
		Last Modified: Wed, 18 Nov 2026 21:34:51 GMT  
		Size: 9.5 KB (9523 bytes)  
		MIME: application/vnd.in-toto+json
