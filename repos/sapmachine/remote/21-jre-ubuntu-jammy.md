## `sapmachine:21-jre-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:0ef509fe1bfd7a1c136c6bccb35b3e18ae035e5ed9272642e32a25af47920973
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:c49ff01b00395fff78ac4f9bf7624d7de76b7fa9490591c5bdeb323c9da21628
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93646018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46779a8a8881caf162965eae6904638009281232eab059cae0f8fea3fadd3c62`
-	Default Command: `["bash"]`

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
# Wed, 11 Nov 2026 23:41:08 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 11 Nov 2026 23:41:08 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a9381eed0d3479c7a3d09bf0dda04c10d68edf03af0a517d4aba8e00bd4306b`  
		Last Modified: Wed, 11 Nov 2026 23:41:22 GMT  
		Size: 63.6 MB (63576485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:810c06089cf2c7c914701ee4a121f44e1d0f09c4c324fe6402bd13fae73208fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2558867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e42a01317ce1852c53b1fe5e5ed05cd123927adabc83f48ed0a8c92fcd27ea`

```dockerfile
```

-	Layers:
	-	`sha256:7a41e1e9d5a8c06afbc193ba0506b476de9faa9d860e13e54adbaf3cab354c50`  
		Last Modified: Wed, 11 Nov 2026 23:41:20 GMT  
		Size: 2.5 MB (2549331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d00c70bcd0e5d12d63667022b58ce693cdbdadf745e09b7a581a725ca2a3fbd9`  
		Last Modified: Wed, 11 Nov 2026 23:41:20 GMT  
		Size: 9.5 KB (9536 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:ee291ac9c520589ff850e92b5a3b1bfff7f295a60eeb2f2e06787929ac30ab5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90732389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aaef3bbad005ddc5392121e339c5c76ab6b37e0859e9643a7e4d1ece822fccc`
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
# Wed, 11 Nov 2026 23:43:54 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:43:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 11 Nov 2026 23:43:54 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:974c4ef94b32b1d4e79a9f4b03ff03329a8e5d001a2c2f81e64a73e863745508`  
		Last Modified: Wed, 11 Nov 2026 23:44:09 GMT  
		Size: 62.7 MB (62730977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d3272667203e91cccccf29f539770f3440a046397b49c5fc089fcc3bd922c010
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2558653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f44473fc444eed31f49c6df39029b611343205978740205fd3113a0d9eb22f9c`

```dockerfile
```

-	Layers:
	-	`sha256:0bf2b6b7db18f826af5c0490d23c77f19eee488708d462accf5f14ecd2aa7723`  
		Last Modified: Wed, 11 Nov 2026 23:44:07 GMT  
		Size: 2.5 MB (2549013 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd48e7f47d031377c76ebb5620a31609e80adb887db0eea868fbc1dc7034a6a3`  
		Last Modified: Wed, 11 Nov 2026 23:44:07 GMT  
		Size: 9.6 KB (9640 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:aaa06984bfcb946b041e28546c1cd66140fbde4919cd717d8d58d3b16d26de24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.0 MB (98008654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390ffaa74b2ee87692440a470c51d005741a2948eaeb3f905c64e3182a9b2503`
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
# Tue, 27 Oct 2026 07:41:36 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.13.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:41:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Tue, 27 Oct 2026 07:41:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8f018a5a2acab966ca4e7a98422ebd9c5113430dc173e16eddd8ea016705c52b`  
		Last Modified: Sun, 25 Oct 2026 20:45:41 GMT  
		Size: 34.7 MB (34703933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e92a1528c5f288aa2b227918994a4b7715e35cd2dde16dd1e56ba08790957d4`  
		Last Modified: Tue, 27 Oct 2026 07:42:07 GMT  
		Size: 63.3 MB (63304721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ec77b40053a83bf6d02bea8a37109c2cb1a1ff331f548beb110ca70710463e68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2557835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ecd389005e23e85f14a1ab89fdc00217b25a899d13342693379018f956757d5`

```dockerfile
```

-	Layers:
	-	`sha256:44141fe75c9b8327f4892b432476d742f90593762cf5d7a8f792abf91d5c124e`  
		Last Modified: Tue, 27 Oct 2026 07:42:05 GMT  
		Size: 2.5 MB (2548255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2ccbc48912253d8bc2f15ee34c2d948d39d5218648232f8904f521ecfef3813`  
		Last Modified: Tue, 27 Oct 2026 07:42:05 GMT  
		Size: 9.6 KB (9580 bytes)  
		MIME: application/vnd.in-toto+json
