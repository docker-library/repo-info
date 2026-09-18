## `amazoncorretto:17-al2023-headless`

```console
$ docker pull amazoncorretto@sha256:9d33ff52b0f01aaed8e1fb3bdfefb50f258c9f0082b6934dcbbbd43e1bc767ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2023-headless` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:538b9c21ea73d7246b7866b480c86a9a16d895e5d4bfd44424dab7258a40fe54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.1 MB (137054361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3590ab608ea182763889b64d944221a27993b25e72e25679b878dbd635889e14`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:13:04 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:13:04 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:22:09 GMT
ARG version=17.0.20.10-1
# Thu, 17 Sep 2026 22:22:09 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:22:09 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:22:09 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:22:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:0f0cc63a5845e28f771c9fceda4decc68b806470b009dae4085b441df0329b69`  
		Last Modified: Mon, 31 Aug 2026 23:14:18 GMT  
		Size: 54.6 MB (54586282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:043d90d1dc1a668080b9e24392f47865b7c932489e7d57d0ead5a47209072029`  
		Last Modified: Thu, 17 Sep 2026 22:22:27 GMT  
		Size: 82.5 MB (82468079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:cda8b25c5cab651fc2417fd347655f3210e15c46e049afcf71cd01ab58013405
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5206317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78d2dd27d465439ccc1766d48bee237445b078b548b39f2ac9239c02a4366bb1`

```dockerfile
```

-	Layers:
	-	`sha256:953e9f069be1e61a1f9f3f8058b010d602a79f9156f12d5fac087792eae65aaa`  
		Last Modified: Thu, 17 Sep 2026 22:22:26 GMT  
		Size: 5.2 MB (5197111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa1c3f67e9bd629709edac90ace3bf2103806f617411de82fb3f7e727f6617c7`  
		Last Modified: Thu, 17 Sep 2026 22:22:25 GMT  
		Size: 9.2 KB (9206 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2023-headless` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:698884dd5030224fc072103685c7dc53536368820a1d601044809d02d15dcfa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135327845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe54c6b8ff7d29aec9dc4f82fceadac013067d7e9f1f8067c80c4106ac1ad38e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 17 Sep 2026 21:12:44 GMT
COPY /rootfs/ / # buildkit
# Thu, 17 Sep 2026 21:12:44 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 22:46:33 GMT
ARG version=17.0.20.10-1
# Thu, 17 Sep 2026 22:46:33 GMT
ARG package_version=1
# Thu, 17 Sep 2026 22:46:33 GMT
# ARGS: version=17.0.20.10-1 package_version=1
RUN set -eux     && ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)"     && rpm --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-linux-2023     && echo "localpkg_gpgcheck=1" >> /etc/dnf/dnf.conf     && CORRETO_TEMP=$(mktemp -d)     && pushd ${CORRETO_TEMP}     && RPM_LIST=("java-17-amazon-corretto-headless-$version.amzn2023.${package_version}.${ARCH}.rpm")     && for rpm in ${RPM_LIST[@]}; do     curl --fail -O https://corretto.aws/downloads/resources/$(echo $version | tr '-' '.')/${rpm}     && rpm -K "${CORRETO_TEMP}/${rpm}" | grep -F "${CORRETO_TEMP}/${rpm}: digests signatures OK" || exit 1;     done     && dnf install -y ${CORRETO_TEMP}/*.rpm     && popd     && rm -rf /usr/lib/jvm/java-17-amazon-corretto.${ARCH}/lib/src.zip     && rm -rf ${CORRETO_TEMP}     && dnf clean all     && sed -i '/localpkg_gpgcheck=1/d' /etc/dnf/dnf.conf # buildkit
# Thu, 17 Sep 2026 22:46:33 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:46:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:6b98cf5afd5c5e1a58de351abf0b1ec3a4a61b63fd5a86c62edc6367d59ac249`  
		Last Modified: Mon, 31 Aug 2026 23:14:33 GMT  
		Size: 53.5 MB (53452573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef85cb3b97202960f2e8c6045be3ef2ee82867b352b264653fd18c6e7826f84d`  
		Last Modified: Thu, 17 Sep 2026 22:46:52 GMT  
		Size: 81.9 MB (81875272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2023-headless` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ff400ae781dd04d0d3acdaebed298d5c40504bef9559abb8644a53571c6c5756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5205209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1865960f442417b42321a8f96fa4740cb9ba54f57ffce0c3b7201bfe852cdf97`

```dockerfile
```

-	Layers:
	-	`sha256:3831141f31c0df29232bf14514810c1efb9d997dcbe77a91c80c0a73fbd2325f`  
		Last Modified: Thu, 17 Sep 2026 22:46:50 GMT  
		Size: 5.2 MB (5195912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85bf5b012384933d533b2d2e1d28bf8e66757322f67077c6ab3f9111e639cf9f`  
		Last Modified: Thu, 17 Sep 2026 22:46:49 GMT  
		Size: 9.3 KB (9297 bytes)  
		MIME: application/vnd.in-toto+json
