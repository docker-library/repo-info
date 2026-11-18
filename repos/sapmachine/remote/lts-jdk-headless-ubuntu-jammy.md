## `sapmachine:lts-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:6fbf30084b255d15e1455d41b776755cfcffb64ca80a1e83ca23916cd539aef9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:9fedb2e87d82aaa45ad08ce2259b0a723f263ef7419f0bc916033152afafed87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166907822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:372853923a1ce6ffd0fddf07b2a08125c6b559d6b13fb809a388ada7571ecf2d`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 16:40:48 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:40:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 18 Nov 2026 16:40:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca53bee0d5bdeb2b9927083ced730e90d58827887a196a025dc08f7f2a2200b`  
		Last Modified: Wed, 18 Nov 2026 16:41:05 GMT  
		Size: 136.8 MB (136838289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:afec6659dfaa9a1ad845339c4c1a6fab7236baabb4d54c2e6ba3d49c35fc5268
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2335430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d5615eb250ae46aeb7375812bb25381577420a02cc827ec6317fddd4fb60c4d`

```dockerfile
```

-	Layers:
	-	`sha256:fc08f78b1f167eaff49117c6ac9d3d5057429f5c79e7cedd30f88e6ef1ffe77b`  
		Last Modified: Wed, 18 Nov 2026 16:41:02 GMT  
		Size: 2.3 MB (2325097 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2db74f4df0c7b280a1e2b4cf54afa57a5608560e8d22a42c879d82f0cd9e7943`  
		Last Modified: Wed, 18 Nov 2026 16:41:02 GMT  
		Size: 10.3 KB (10333 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:c3c7f5ec7249e865a3b8e9691b326a312e2344589203f820bf85f1b7c3b7acfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.8 MB (163784545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16ef3bd738d1b015c43ac348009ac0e66db8c5649b1b1871ef655f79b72efda5`
-	Default Command: `["jshell"]`

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
# Wed, 18 Nov 2026 16:39:42 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:39:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 18 Nov 2026 16:39:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c8df6ca5b71a315b29a4ce7859414f39b54ecb9ae05e1d7eb320394a9c72a3`  
		Last Modified: Wed, 18 Nov 2026 16:40:00 GMT  
		Size: 135.8 MB (135783133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a15de161177b93e604ceced635785162adf4229beac5999bae33a2b06aa02b3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2335251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f8613281ffd1246e2f8d1278b0093f10c4d0970eefbe6a32153a22617a180bf`

```dockerfile
```

-	Layers:
	-	`sha256:c294907f85c3436975f4d9007c059f6c5578df7d63c65b0e118dd1f593849992`  
		Last Modified: Wed, 18 Nov 2026 16:39:57 GMT  
		Size: 2.3 MB (2324790 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf2dbb6881f36ea8a2a0aac58908581397bc86992871c7a7ff81e6b1b30897a9`  
		Last Modified: Wed, 18 Nov 2026 16:39:57 GMT  
		Size: 10.5 KB (10461 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:0e0efa88ef8fbfdb73d23635ba3d849597293826cb6f41cf1e9ccd07d0928b48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169464489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa7fb9f334b1f81e05b6437e3c546ce6386c52cd2e6a11d4d57219004c4e3c4`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 08:09:23 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:09:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:09:23 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:09:28 GMT
ADD file:385fbf5f6ded013bc8053d3b154b3dafc78f1addd59a1388bd56f2253ef77d18 in / 
# Tue, 10 Nov 2026 08:09:29 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 17:04:10 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk-headless=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 17:04:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 18 Nov 2026 17:04:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:930bdfdd5d19974adb0ba597663b144584e8fa18e103e857a3dd3eb2cd73ec5e`  
		Last Modified: Tue, 10 Nov 2026 08:55:08 GMT  
		Size: 35.0 MB (35018100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f2c4d996616060076b9aa6ff65dc6554a37bbbfa5157fb819172f91afde617`  
		Last Modified: Wed, 18 Nov 2026 17:04:49 GMT  
		Size: 134.4 MB (134446389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1b956cb017bfeca413a5a22a819e8e9ca79221638fb9629e4250d2e69347052e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2334310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d693c13620592d8a5762c3da4314863c9d3260d26a79f11ed88d478af299acc0`

```dockerfile
```

-	Layers:
	-	`sha256:2b0512a375c4e2523ddff516cbf83978f6f9d80fe37611f4b1f82d1ef79481f3`  
		Last Modified: Wed, 18 Nov 2026 17:04:46 GMT  
		Size: 2.3 MB (2323921 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:631075a21ab6ad43236f88d92a6b385ee4b7af0174c8a486779cbd49b75a9e71`  
		Last Modified: Wed, 18 Nov 2026 17:04:46 GMT  
		Size: 10.4 KB (10389 bytes)  
		MIME: application/vnd.in-toto+json
