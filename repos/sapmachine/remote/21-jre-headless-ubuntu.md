## `sapmachine:21-jre-headless-ubuntu`

```console
$ docker pull sapmachine@sha256:b19d450917f07d9eb5b1d420e6c1aeb7175935688ae6bff16521d284e6aa2351
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-headless-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:a56fe1031d23cf438aadd9bdb5997ee9920875533297858a6a479c40042c7cb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (92024346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f51d41b3d1473bde20fa3f886c4e91748941116b1a7b227ba2265f89162513be`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:39:40 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:39:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Sat, 17 Oct 2026 00:39:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0231f03f4425bbd7113b8aec4ab253cb7442e2bd529d8e06e50618cd733643e4`  
		Last Modified: Sat, 17 Oct 2026 00:39:54 GMT  
		Size: 62.3 MB (62258588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4b2e9cf5dcbd853898023c43da2414f87b66cef8770a7bb7c4f0d41d8cde9962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2285691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4df4f0c3291db56ab4a1b1487ee151454c7a94a6018e007eed092e1403dff0ae`

```dockerfile
```

-	Layers:
	-	`sha256:1f6971ca859e3e1f443c107087e47432d33fd43c9ad791d84b508b17063351c6`  
		Last Modified: Sat, 17 Oct 2026 00:39:52 GMT  
		Size: 2.3 MB (2274706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:396b786bb6a8ed98eae6c3396dd4e3ce69de6f04c70e68f5a135421016992c27`  
		Last Modified: Sat, 17 Oct 2026 00:39:52 GMT  
		Size: 11.0 KB (10985 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:911573100dc7e0db64bde64832a38163a16288284ca24415652e860c21124a5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90372565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e452513860b881c8878a805253cf3d22888a997a3f65f6ba00a53f4894f04701`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:39:20 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:39:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Sat, 17 Oct 2026 00:39:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc4399808c293d4a22b46f5845a2df0ca80a3a256fda96d54c6deb0512ec22a`  
		Last Modified: Sat, 17 Oct 2026 00:39:34 GMT  
		Size: 61.4 MB (61432804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c277433406f0587f72c295ada4ba5ac9251f024b851f08404cd7d9227aef4bff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2286350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33092ddd872a5223e9a2f9e262022208b97c8cefbe42a3e5163f893e94167a85`

```dockerfile
```

-	Layers:
	-	`sha256:a8fa881124d76999ff546786a70f36379ec233886a8e1c37889aabec9e90c6a4`  
		Last Modified: Sat, 17 Oct 2026 00:39:33 GMT  
		Size: 2.3 MB (2275213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5c9eab5b5caeb01986de4d09dec3df843ac31e6a3a41d64666042e9a2c0ec49`  
		Last Modified: Sat, 17 Oct 2026 00:39:33 GMT  
		Size: 11.1 KB (11137 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:618dd9797689c44efa404dc9fd2588b32942bbe3224d6b3f119f0834ab8f13c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.2 MB (96242140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24e16a495da2fff614cbb54bb9ee2a1280d4d1b736e788f9399389d1e5e3df3b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 02:40:24 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 02:40:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Sat, 17 Oct 2026 02:40:24 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae7284f55ab548eecb454a2dca8d3164f82a6095d489d808558c39ade969f76`  
		Last Modified: Sat, 17 Oct 2026 02:41:00 GMT  
		Size: 61.9 MB (61864150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1f2f8bbcc1fb88532581135d1caf793bd2221888f9b25acb364afa1fffa77455
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2285175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d0e2a90108a10b0425a3cac5624e9b69016b69cb4efbf134a627d3c98584372`

```dockerfile
```

-	Layers:
	-	`sha256:979cf0ef535bfd1ab6b7d082d458b85d97b5e378b17fcb26462b1268e379755f`  
		Last Modified: Sat, 17 Oct 2026 02:40:58 GMT  
		Size: 2.3 MB (2274123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b2662ba65a53706c90aa9de7db0c85fb9eca7eb1c4aea4971b3dac53fcef437`  
		Last Modified: Sat, 17 Oct 2026 02:40:58 GMT  
		Size: 11.1 KB (11052 bytes)  
		MIME: application/vnd.in-toto+json
