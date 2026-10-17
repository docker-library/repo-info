## `sapmachine:lts-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:4c658726c0daaa7156475475efae5bf8b711d8f16e1b04022a839e8ee9e51ce0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:a6135ead89e15856043f5ce8d4fc3caf0148900fb6c31f19639a2d7f09d8b06a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.5 MB (254454587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8e2476acc80efc0fb9071c893ebab543f1c648f330358b4bac91ff7e8d9019b`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:39:48 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:39:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 00:39:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d055baae54ef6f1ca1c83dcfe6b0ae901275414a2e116458ecebf4c41ef1e9e`  
		Last Modified: Sat, 17 Oct 2026 00:40:12 GMT  
		Size: 224.7 MB (224702111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4230ddbf393cf85f289d82e1f8fa8bfe7965b5e051267e6f1ae7a739c37cbabb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2635784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c9adcbc60fc9c840ec867c92ef61e9366d11d5f9b13d6668f559fa6959423f1`

```dockerfile
```

-	Layers:
	-	`sha256:20fa3b8564a154f295e19ecdb9349f70f706fd761fb5dc99a4e76a97ae8ae7a9`  
		Last Modified: Sat, 17 Oct 2026 00:40:07 GMT  
		Size: 2.6 MB (2623626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5020c18615ee91bcc02f40bf81e94c335345957a80141d74f36591d276f3089d`  
		Last Modified: Sat, 17 Oct 2026 00:40:07 GMT  
		Size: 12.2 KB (12158 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:441c93a989c011fccde97601da6c4156985092c902eea9e56d2477b875250142
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250116172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1094dd740ea9d8e5be9fd559043e390eec9d50d85baadd19fc59ecbc0461e5e7`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:39:21 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:39:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 00:39:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d242447bda22eeab5bc34981d87aedefda21ca86fee80b0f0c80a50c55d5556`  
		Last Modified: Sat, 17 Oct 2026 00:39:45 GMT  
		Size: 222.4 MB (222431449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cf98795585e43528e03d4023ebbead64785a623802027aec5d7dcbab98505b59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2635759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33d041e8c0f7deec0b027086410e7e938fff643a99f739223049a454f88fe451`

```dockerfile
```

-	Layers:
	-	`sha256:855681ac991cfff759cbdde0de6ab619b977be51d61099ebc0792f05101f4e9d`  
		Last Modified: Sat, 17 Oct 2026 00:39:40 GMT  
		Size: 2.6 MB (2623401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4c927513c072f9bc71a8055dbdc72771251d596fd23c912840a6663d7c890c5`  
		Last Modified: Sat, 17 Oct 2026 00:39:40 GMT  
		Size: 12.4 KB (12358 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:7bda6ca571316c2a68910bda76e555cb86002090a60b23ff51056b65a04b83f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.5 MB (257545925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:833b85a420cd5bb4b91040c0a5bea314d989a999c7db6321e5033777687df049`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 02:37:41 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:37:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 02:37:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6c7d7e1ea9926517511111f20eb21e4cba902164428cad489feada452aa7f6`  
		Last Modified: Sat, 17 Oct 2026 02:38:38 GMT  
		Size: 222.8 MB (222842288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:162220ab5a94dac14a4939e7bec70043d09c79751d79b35b9f15c99d1f22469e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2632892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b0564fe2c5e516d31efbed11e8d33ab749646e94230b48ebcffbe1ff4c945d3`

```dockerfile
```

-	Layers:
	-	`sha256:c7d070a9f346589ab29b734fed3346f8be6a066369691d1f9c8de91e78932b1c`  
		Last Modified: Sat, 17 Oct 2026 02:38:33 GMT  
		Size: 2.6 MB (2620642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2bd5d17bd17921da3ebe0e33aea2d3d8a67911eca6e3cf2be0098f884166aebc`  
		Last Modified: Sat, 17 Oct 2026 02:38:32 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.in-toto+json
