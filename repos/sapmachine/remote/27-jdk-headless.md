## `sapmachine:27-jdk-headless`

```console
$ docker pull sapmachine@sha256:0ddb16be7e91a2d1d813cdebe7d5b35b94cc2cf891d695a835f54be651f7f98d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jdk-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:eee0648821609091a205fd735294d30c4f409a61c829cdaa500e04c814b1c107
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167946686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ac94e3821c998003d47fc5c501f8165f658e1e3f19d90c9f36d697d6dad3ff4`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:37:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Mon, 26 Oct 2026 23:37:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c03969bb1c7a44bd683f4f6b3ac8cac2aba728808cd6a75d782e50bd6c3986`  
		Last Modified: Mon, 26 Oct 2026 23:38:10 GMT  
		Size: 138.2 MB (138179074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:56d5c5e02bf19226659a19093107cd3781411cf84f1422b2667fdb8e6dcfae5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb332ce148ea5a90bb8ae30136c1efb30d8bf2134cc74f7c18204cf132576084`

```dockerfile
```

-	Layers:
	-	`sha256:14b62753dc2191cecd8ad9132df397b2aed45e1a19c1dbcfe60d6de3a82663cf`  
		Last Modified: Mon, 26 Oct 2026 23:38:06 GMT  
		Size: 2.3 MB (2300703 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a886299f2de6a73f4dcee86456914eb037abc5a0cd2c3d6ce9a5c654d15deebd`  
		Last Modified: Mon, 26 Oct 2026 23:38:06 GMT  
		Size: 12.3 KB (12336 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:6c32539bf34d51026f2e2123baece8a8947f9e359492dfb300c6b222b44388f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.2 MB (166226826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63f857aeb6b1ea8b0071cc13c17ee2cd8dd49d5f006dcd738d9a583402412cfe`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:41:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 11 Nov 2026 23:41:23 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f45d02287bb95ba46d22c73e4d51aba161911144cb2cfdfda29841dd0f34c3d0`  
		Last Modified: Wed, 11 Nov 2026 23:41:42 GMT  
		Size: 137.3 MB (137261568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1a459f2c8c3e588904c9b8f5ee173c70f445d442201112a0d9887e92edd181bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2314396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:304e58d5770a0a7b4160daf8d110a3b1d41c207bc71ff54b7408a1b4d30d41cd`

```dockerfile
```

-	Layers:
	-	`sha256:2407de7feabaa8e379502476f3c8aa15d358a005630e0dda690a3de1215ae060`  
		Last Modified: Wed, 11 Nov 2026 23:41:39 GMT  
		Size: 2.3 MB (2301859 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64d9af695aea0abdc78fc790efa31a0c7d771801ee64c3890d6b6c5f869f4aed`  
		Last Modified: Wed, 11 Nov 2026 23:41:39 GMT  
		Size: 12.5 KB (12537 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:22a2900bf0afbb4feb95f9fef4fe234a9e0fa458cb9497a940d6f38a60c48aa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171597273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92cd9a0ae6200e3105a547b5f9b3a4027bed58412866582c070601c14ebebe72`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 07:25:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:25:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Tue, 27 Oct 2026 07:25:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b162253483b42d721abc28f67e514ce341dd8e81b2700605331a8818ce3ba9`  
		Last Modified: Tue, 27 Oct 2026 07:26:05 GMT  
		Size: 137.2 MB (137218965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b1c745985a5849f73a3b352baa96010ecea14268fa74713b8505bcbb0c203ce6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74c0df1f417b5401f8fd8c16fe8b1649295c3a8738a34142b5cfed6a009edb12`

```dockerfile
```

-	Layers:
	-	`sha256:0d97a3d4f699b5fb58fac09a4897888ebefed8afa8b7b06e0a531a5edd226d9e`  
		Last Modified: Tue, 27 Oct 2026 07:26:01 GMT  
		Size: 2.3 MB (2299514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4eabe72673c590ac4725e6b8f62871191cf512f47f3cf882f4e996431910cea5`  
		Last Modified: Tue, 27 Oct 2026 07:26:01 GMT  
		Size: 12.4 KB (12429 bytes)  
		MIME: application/vnd.in-toto+json
