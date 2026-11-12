## `sapmachine:27-jre-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:31ffd66e55d0af666620b16ed896cda8f501af23c7e38dbf7555460808d954a2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jre-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:666797b081a27058e5cdabd0ab0d0b1d5a815dd183e1dbd0b3087ef987f36fb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90243098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f11f798ae27e15ee234a393d37f828f6946552632d01216002a220f2a5e0b3d`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:38:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Mon, 26 Oct 2026 23:38:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aab9ca9c1fd72044b965a58ea943216734350a897d90975f7d99b829d6cc409a`  
		Last Modified: Mon, 26 Oct 2026 23:38:48 GMT  
		Size: 60.5 MB (60490610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2d52aeca935a125da9c7825484f961aa60d02fff1b6599121adba829ba620242
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eba4e93e87c1df715a302385c903b6f2c9e012de3d5b004a291f1f4dcfa280c3`

```dockerfile
```

-	Layers:
	-	`sha256:86896330b4f325ad56459d4c28885b0fca1a7ce15f7d0b59adbe4f0aba095ea2`  
		Last Modified: Mon, 26 Oct 2026 23:38:46 GMT  
		Size: 2.6 MB (2551972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f18cc920a1273c7d949e35b492429ff23936bcb07dca9ace8ba62714df99f7cb`  
		Last Modified: Mon, 26 Oct 2026 23:38:46 GMT  
		Size: 10.2 KB (10178 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:7b4ef73d43bebf35a4a0c18a3871abd6c651a0e3c1382210d98fb529598b2049
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87499430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09dba9253f9509eba86578f7792cdde4fc79c735481eac19b6a4802467c940a8`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:41:52 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 11 Nov 2026 23:41:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec22693f4ae7f83f9de50d14dc22eaf07edb745491ac57d8aa18306ca6c2d66`  
		Last Modified: Wed, 11 Nov 2026 23:42:06 GMT  
		Size: 59.5 MB (59498018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:407536d3149f864749e1235fd70c67fa1a5a1dcf9d96c7302626bda4bb25b01f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202139b8195a592dff1ba95221dec438e87b8f1e5cdc150d410328927b424ad5`

```dockerfile
```

-	Layers:
	-	`sha256:f3e98b56a61394e9134ffdc0b429a6ccd2cbe7391c9d19d43795ce2ecdaa2b05`  
		Last Modified: Wed, 11 Nov 2026 23:42:04 GMT  
		Size: 2.6 MB (2552283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef358945e91133b2243258192da671a88f60bfb793c22909834fba7cabded1c3`  
		Last Modified: Wed, 11 Nov 2026 23:42:04 GMT  
		Size: 10.3 KB (10307 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:bc34fd0a7af8160608f3c2d00910df3bc19abe08e86d9dfc0cdf8d6f62edba66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94467383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba36c6ecbffaff9119fbc808bcf4556429823092cbf00d7017ef125a6dc74edb`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:11:53 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:11:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:11:53 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:11:58 GMT
ADD file:7feec6d52a7b8ecb88e64539851a17e874a49369018261edc3896e7f84f3b268 in / 
# Sun, 25 Oct 2026 20:11:58 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 07:27:48 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:27:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Tue, 27 Oct 2026 07:27:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8f018a5a2acab966ca4e7a98422ebd9c5113430dc173e16eddd8ea016705c52b`  
		Last Modified: Sun, 25 Oct 2026 20:45:41 GMT  
		Size: 34.7 MB (34703933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea90a444d5f78b4b9df5b671b27fda833e565ec0b51b30ab0470ba068e59a8c`  
		Last Modified: Tue, 27 Oct 2026 07:28:19 GMT  
		Size: 59.8 MB (59763450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9ebf12af09c5c6cce3f8efd9570a948d4c9cfe9f78f7e1425c2b505bbc4d881f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d09116d9b1225e5b12783322fb951e80a4af541fe93936020ec6e6d41ce438dd`

```dockerfile
```

-	Layers:
	-	`sha256:7c1e5a6832c0bb443a8b511af69c13014ecb9a688b68ffd582691988fff5bdcf`  
		Last Modified: Tue, 27 Oct 2026 07:28:18 GMT  
		Size: 2.6 MB (2550886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6c98495021d6889e04713d8d8167aa8e27e0823ce92f15f7686566034f5907d`  
		Last Modified: Tue, 27 Oct 2026 07:28:18 GMT  
		Size: 10.2 KB (10235 bytes)  
		MIME: application/vnd.in-toto+json
