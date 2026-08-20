## `amazoncorretto:26-headful`

```console
$ docker pull amazoncorretto@sha256:812d796e3a3e6cc58e6a10f5837007597e2a5d261a033956f474d13604c938cd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:26-headful` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:0a3238c4b3ee37c61a5ad0a4c3df2cc4af57c803212008ac59255c6fb9ad316e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161200145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9760ad1ff6df951ddfff441e3bdbd9029b9309236f7fb902cd3ebea4368cd483`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:21:47 GMT
ARG version=26.0.2.11-1
# Thu, 20 Aug 2026 17:21:47 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:21:47 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:21:47 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:21:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:f206cad061713321049e1fe0c85223e018266fd8bccebf3156ef94c125bbd2e0`  
		Last Modified: Mon, 17 Aug 2026 23:42:26 GMT  
		Size: 54.6 MB (54583847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee094f6527766940b9aff1d548b5e8e9c6700530fadb7ca3ff5f380dd136e4ff`  
		Last Modified: Thu, 20 Aug 2026 17:22:08 GMT  
		Size: 106.6 MB (106616298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b8efff0c2f7e5f401674594fd1b2fc332ebd709924ab40f3ce97ec39c1956367
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5241832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6da5b3b2324aef6c7f9e4f7073b2ee337e4951f06a7a4c64e99ce73020afb6a8`

```dockerfile
```

-	Layers:
	-	`sha256:43f9410510884fe3a5231042ee73db9a0017bea69d41d7e825b7713ec63449a0`  
		Last Modified: Thu, 20 Aug 2026 17:22:05 GMT  
		Size: 5.2 MB (5232463 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72b09e57af1461b520f8ded91e44153c128b3ab89fa28572f8e28661aedb107d`  
		Last Modified: Thu, 20 Aug 2026 17:22:05 GMT  
		Size: 9.4 KB (9369 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:26-headful` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:f273e53206070ffbcb4876ac383af5e7e9f9ae4b62b0780c8831087f3764c981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (158972487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef12c5935c4b28fc80cf66f6e1aa2d37e3035b291cfe8acb584c4eeb0762535b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 20 Aug 2026 16:55:33 GMT
COPY /rootfs/ / # buildkit
# Thu, 20 Aug 2026 16:55:33 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:19:00 GMT
ARG version=26.0.2.11-1
# Thu, 20 Aug 2026 17:19:00 GMT
ARG package_version=1
# Thu, 20 Aug 2026 17:19:00 GMT
# ARGS: version=26.0.2.11-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-26-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm" "java-26-amazon-corretto-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-26-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 20 Aug 2026 17:19:00 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:19:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-amazon-corretto
```

-	Layers:
	-	`sha256:108a276670f119053938f97626b5d9916306b34861b9c0cdd8d64a50bf504ad8`  
		Last Modified: Mon, 17 Aug 2026 23:42:41 GMT  
		Size: 53.5 MB (53450887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10f18757dfdacda24222270e4773de5fca8ef775dc2678a1b1c8d5b26d776bbf`  
		Last Modified: Thu, 20 Aug 2026 17:19:22 GMT  
		Size: 105.5 MB (105521600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:26-headful` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:776a94037cfc3b99882783507dd9c8beda9ced0b504a2011219c298eb4f48fac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5240736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45853887052d64f610a18fcfa902a826a1722906afb110d4aea04b631b071f64`

```dockerfile
```

-	Layers:
	-	`sha256:aec7659102c6a8a48e8bce1251a71455554cfecfac47f0ea7a737969f0a23742`  
		Last Modified: Thu, 20 Aug 2026 17:19:19 GMT  
		Size: 5.2 MB (5231276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c811b5316e00a52031eb0f2a66e5eab2ac0e393c3e8a05f1d155e35b47d94316`  
		Last Modified: Thu, 20 Aug 2026 17:19:19 GMT  
		Size: 9.5 KB (9460 bytes)  
		MIME: application/vnd.in-toto+json
