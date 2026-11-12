## `sapmachine:27-jdk-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:7a1583815fdd8e8e9ef5e9a51bd0c7186efefede11498b686ccf5a9fc41290ec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jdk-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:994240b7a7f14081d74d688b43aac7ae54898a6031f1713915c85b6d12a43382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167821341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0b996794e62f67673328159fd9a824d4d4682e4094b51a999662ff8b6e04f34`
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
# Wed, 11 Nov 2026 23:39:51 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 11 Nov 2026 23:39:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e545dd501d91a08147ae925bbfecc98b93ccea17e8ba164eecb29a2356ff5ce`  
		Last Modified: Wed, 11 Nov 2026 23:40:10 GMT  
		Size: 137.8 MB (137751808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:09c38ee3320bdac9a38126feb3d570844178cb3ab392573053a9ce9383b09794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2332257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6fc572578d32d7e698c593d5ddf74f1ad8746e8e3985faae53a802d8b7945ac`

```dockerfile
```

-	Layers:
	-	`sha256:e94894d0e3381b700f589c8c6919db10e3765837ec282a2dc1a1224a7a34c739`  
		Last Modified: Wed, 11 Nov 2026 23:40:07 GMT  
		Size: 2.3 MB (2321926 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed9cb1475f85fe11f2955e74b566a76758f1fd06266451bf29a891ad68b89900`  
		Last Modified: Wed, 11 Nov 2026 23:40:06 GMT  
		Size: 10.3 KB (10331 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:be4cbb11aed05a7c15f5a4adc8bf13282a10bc9f07b538f6fa96b1467492e073
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.8 MB (164793496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29c12db8be1d954c824f121f32ce5289d697ca0f7572bf7992f7167d3a80aa4a`
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
# Wed, 11 Nov 2026 23:42:08 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 11 Nov 2026 23:42:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cbca06f240006741f48d42e045b61a901f9689229dd1f45a568ae19f809c062`  
		Last Modified: Wed, 11 Nov 2026 23:42:27 GMT  
		Size: 136.8 MB (136792084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ebba9cfc44f7374a3f61205d91b3007c46d080b6e5efa4ff6690fae046148203
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2332078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94dc592b7063381e2220f2ccbbe547fa4fcea00bdc38657b9832879154124caf`

```dockerfile
```

-	Layers:
	-	`sha256:a4c628d3ae8448bdfa4652d58ce5a9153266dae4b18e883cd2747b2a8567a282`  
		Last Modified: Wed, 11 Nov 2026 23:42:24 GMT  
		Size: 2.3 MB (2321619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67e127e4936966300b5629aa5860d22ea16e984a3c50fdbe3389eea2e3a7f54e`  
		Last Modified: Wed, 11 Nov 2026 23:42:24 GMT  
		Size: 10.5 KB (10459 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:16616a2bfe0013076955a9a0596029a28f88ef2e5a70aceaaf7080e958b83534
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.8 MB (171757390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdb79762cf68c38f102ed58c23c294f41d54540d587db0ce859080b7f3fdefce`
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
# Thu, 12 Nov 2026 04:51:56 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Thu, 12 Nov 2026 04:51:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:930bdfdd5d19974adb0ba597663b144584e8fa18e103e857a3dd3eb2cd73ec5e`  
		Last Modified: Tue, 10 Nov 2026 08:55:08 GMT  
		Size: 35.0 MB (35018100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96b6f3f5250c2941ab4ca0d6ecea959b38008a0240ca7ca8711890218454fa8f`  
		Last Modified: Thu, 12 Nov 2026 04:52:46 GMT  
		Size: 136.7 MB (136739290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:93bbff28cb39af5e11b55ee67b95b6f4ba9836327bb00e3482c32d3e56817871
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2331137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dca3f415a12e79eb6bf5184fa6874b890332432b43f06ca54f13b08d65dc5c3`

```dockerfile
```

-	Layers:
	-	`sha256:2981b886d7495dec4a7db6074e093fc645ecc46bfefd396a0dc9b22a2a091d8c`  
		Last Modified: Thu, 12 Nov 2026 04:52:42 GMT  
		Size: 2.3 MB (2320750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5e7ca5ff26ec097aefd1d4353abf8696ba43f9bcd2f9c44986ae8be7d5a9cd7`  
		Last Modified: Thu, 12 Nov 2026 04:52:42 GMT  
		Size: 10.4 KB (10387 bytes)  
		MIME: application/vnd.in-toto+json
