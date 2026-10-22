## `sapmachine:lts-jre-headless-ubuntu`

```console
$ docker pull sapmachine@sha256:9948237e3d028bb825bcc1481406533dae0bcfb054252992e5bf4b0de539ae56
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jre-headless-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:9754ab40f2b48dbb213db97ec77a93449bafd0b661bb0a369b434b4b8d1bb545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.2 MB (89155934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70b9b45744d24e0fc2ca4235ed1e6b60d0f8f8eb0b05c34a1872ee3417757503`
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
# Wed, 21 Oct 2026 22:13:11 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.5 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:13:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 21 Oct 2026 22:13:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e9c2cb15800778aa7322a45cceaa09858afe88bf46daa8f13b28dbc76b10aab`  
		Last Modified: Wed, 21 Oct 2026 22:13:25 GMT  
		Size: 59.4 MB (59390176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:13fdc2bebfb7c96962fbc05b58863b4dd80303452399818f84758c717fbb0d5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2292866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1599270069faf4a8b26c0459b898f949eaaf49bda14b6eebc281278839e78b13`

```dockerfile
```

-	Layers:
	-	`sha256:819f91e63e1b7f5a19c0b9ec8fab33c323a82ea27f43ac9c1e6c75de0e1b5d4f`  
		Last Modified: Wed, 21 Oct 2026 22:13:23 GMT  
		Size: 2.3 MB (2280868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d05dd109bb121c452a249b19eabba1ba741997a6051c1bfafe445b75a6a10024`  
		Last Modified: Wed, 21 Oct 2026 22:13:23 GMT  
		Size: 12.0 KB (11998 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-headless-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:6c285893f085fad461237525c897154bcebcef09559b19ba6b8e94e1091c8ed9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87280129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d38da33d6d2db30145b24a9c4286dae3c151fabb1663f39192113b7b2df9ecc9`
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
# Wed, 21 Oct 2026 22:45:12 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.5 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 22:45:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 21 Oct 2026 22:45:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15c921564abcede27653f0d54fac94a68235caa01eead1a39079b627f66e8287`  
		Last Modified: Wed, 21 Oct 2026 22:45:26 GMT  
		Size: 58.3 MB (58340368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:726adb196068431d394dc013ba94f151eaac6e9af8eda14e21c0d72f77a634cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2293594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b13ef1f4b2924a15e3a8d324dc60b52d1def0a184924e916bfec6dbb652d15c`

```dockerfile
```

-	Layers:
	-	`sha256:343b8c737f5f0a5912010f9c207095f5027318812fc40805e1a71140c1889c82`  
		Last Modified: Wed, 21 Oct 2026 22:45:25 GMT  
		Size: 2.3 MB (2281408 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:967ea2cbf514ed83fbde8d81c02a01f17969d05d7af710a234d3162aed70f97a`  
		Last Modified: Wed, 21 Oct 2026 22:45:24 GMT  
		Size: 12.2 KB (12186 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-headless-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:d6cc61246a554e3666e7e77dfd42d467ea9b20dbf54c8130b0f0354d4144b73f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (91978541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d67ab06979afe4e38626ae3c95a68fc4aea62ea58dc3873121738217e1f12bd`
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
# Thu, 22 Oct 2026 09:57:07 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.5 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 09:57:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 22 Oct 2026 09:57:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2dcdb4bbf52942efa776e7d3f18da6664ffb3fc6d9b7e8bf0e75d8a4028b5cf`  
		Last Modified: Thu, 22 Oct 2026 09:57:38 GMT  
		Size: 57.6 MB (57600551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0b8a2930de9cd2feae225fcaa6405d2e004eb9ff4a541c4e53292506003b2967
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2291757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e1b45be7532aacb8ba457d5a884a5af288347f75156c8f5abb768f37f06ed2`

```dockerfile
```

-	Layers:
	-	`sha256:1b5802b7916da23b84c3d37e6683f5c87ea2dbdb2af64a18b2ead9075b1a221c`  
		Last Modified: Thu, 22 Oct 2026 09:57:36 GMT  
		Size: 2.3 MB (2279673 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5592956fa2ad07a9c5ca74b7db84fe64abc299b8bbe5a629c269f9d79e9ec465`  
		Last Modified: Thu, 22 Oct 2026 09:57:36 GMT  
		Size: 12.1 KB (12084 bytes)  
		MIME: application/vnd.in-toto+json
