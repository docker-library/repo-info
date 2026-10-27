## `sapmachine:27-jdk-headless`

```console
$ docker pull sapmachine@sha256:6cb1c6f27372197ed4915709cd195cba9639278d6440f2eab8c98760ee45966b
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
$ docker pull sapmachine@sha256:815b2d1453d834c4f72f81a10ce1c31da5cc401885d41a2abb69856016dc9465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.2 MB (166201534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0c63976e28155e51558a903aff5070695d7d12fec2a2ee50bcf3e5cf6ea4b3c`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:42:48 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Mon, 26 Oct 2026 23:42:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36cc4568f1c01da0df80de38439c31819a1c6ebfe22a8551d12660035089bc70`  
		Last Modified: Mon, 26 Oct 2026 23:43:07 GMT  
		Size: 137.3 MB (137261408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c629412e47526780919623be2524eabb73ae5488a8af89fc3bee677c5a6cd7ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1fcd1c05030fbffebf00ed1740962da9f97d3e4fe61c752232d9a448465baa`

```dockerfile
```

-	Layers:
	-	`sha256:33d9d71745a03abca58711bc7f18e06682ec4ed3eb080589c2949a391d76e9b8`  
		Last Modified: Mon, 26 Oct 2026 23:43:04 GMT  
		Size: 2.3 MB (2301255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eeac6f7735378e166f81d4d8e3e3f54d0883fd15bef0b42cc79f343c2562eaec`  
		Last Modified: Mon, 26 Oct 2026 23:43:04 GMT  
		Size: 12.5 KB (12536 bytes)  
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
