## `sapmachine:26-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:3c79b35c4d6ba8ed8645167973c428084a2843d1ec0d4539275cc39c228e7375
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:a25581895ab46d8a823b547a78cfab80632d93c430b24520d938e0a0ff8616d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.0 MB (171035680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0df07db780d9afec5c0cc09dbf37b8665dc2b10d9f8b9f53834dc4dfdf7877fc`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:02:21 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:02:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 20 Aug 2026 18:02:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9788ef1ac44aa6db8ada384f7ca81a51a35292cb116ac9c19b441b67b0bc8bd3`  
		Last Modified: Thu, 20 Aug 2026 18:02:40 GMT  
		Size: 141.3 MB (141282873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c9859672f1ca1318ee173ceb6e3002913c2c364dafe99ba2f5f10bda8e7ca9c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2569224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d25c98e8a3373eb3f669f82fcb54a8ef49dc59647529396ed3cb892483302e`

```dockerfile
```

-	Layers:
	-	`sha256:7c9c276327003ffbb125e3ecd08c9127ff1ae441d68c2c61ed84a4fe8a9ecc9f`  
		Last Modified: Thu, 20 Aug 2026 18:02:37 GMT  
		Size: 2.6 MB (2553352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:582dc734676a6d720226bb8336a3527639c7dcba56cfe175d390af5afd40af19`  
		Last Modified: Thu, 20 Aug 2026 18:02:36 GMT  
		Size: 15.9 KB (15872 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:1b2e6529f93f9d1192d18f99de4fc610423a902027d9cb40579c39d0acb824b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.2 MB (169229020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d63464397aff97ac593768859cdcc862e1d59edefcbfb8d1683927b1516c152f`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:01:51 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:01:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 20 Aug 2026 18:01:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f3c8e6f54185b3f1e7636f513f0988d967988d6b93cda892ae3d2d46897236f`  
		Last Modified: Thu, 20 Aug 2026 18:02:11 GMT  
		Size: 140.3 MB (140341785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:943cce6b9b63b1c7ba7c24e6aeb5e7597dbd24fa7b8db26133bea4b1e4c07164
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2570273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c607195667591e0a660c8ad4ef7faaf0e6863eb5537e9b82b9abc7c658bc4626`

```dockerfile
```

-	Layers:
	-	`sha256:7cc2e53bc21b275a4d3dd1725280086b1e538e79ee22e05fb717bd1b0993d770`  
		Last Modified: Thu, 20 Aug 2026 18:02:08 GMT  
		Size: 2.6 MB (2554057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79b151fb0420c0a5967140b95101f21fc765a2e5d43ee49fb1529931fdf61563`  
		Last Modified: Thu, 20 Aug 2026 18:02:08 GMT  
		Size: 16.2 KB (16216 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:0a8d7d3b93b72c7a4045698d4377391a4973e542e066d5a4a07baab0d0798bd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.7 MB (174690524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48a75a6f1ff01089524c835a0817d5cc462eca3f60d010cb9bad0a561c107d5a`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 17:59:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 17:59:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 20 Aug 2026 17:59:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:519a8805510c07ef066d9ed7a9395bd05723618c574eb9d54ee84638cab334ea`  
		Last Modified: Thu, 20 Aug 2026 17:59:57 GMT  
		Size: 140.4 MB (140379329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c1a69af4d5068a0d7c71a2ac51692b9e53c6f151b7a5bc4c81f36c0e5daae281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2568352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78f083a8404fe566646f859b5e2b96d5105b8a3d1156080ae710f62754d20b31`

```dockerfile
```

-	Layers:
	-	`sha256:663395b2a3fe2b7b590ad29dd816e7874a1ea8aa4ba513e7a84d2b44afa287e2`  
		Last Modified: Thu, 20 Aug 2026 17:59:54 GMT  
		Size: 2.6 MB (2552316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14b9fbf96807680352fea059a6e4f9a6a25f16ccb4fdb0bc271fdcf8af9984f9`  
		Last Modified: Thu, 20 Aug 2026 17:59:54 GMT  
		Size: 16.0 KB (16036 bytes)  
		MIME: application/vnd.in-toto+json
