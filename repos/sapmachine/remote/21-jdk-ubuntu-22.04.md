## `sapmachine:21-jdk-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:5bc0bd1260304dc5bf0c07ff8c8c600582af14bcc3a8b7a4d89e2a8e5af2f222
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:9f9d68eaa555120257edb416ae45ad87dfa17a6e2c71c703e852bf2edc775e48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250137637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb5aaeefba766f1194a236949f66aac823c6b307ecd7c54f09e5810be2ef439b`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:33:44 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:33:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 20 Nov 2026 03:33:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5dd15af27a233ee1bdb519a65dfc28eb4c193afd966ac9b36490634c3a1fd15`  
		Last Modified: Fri, 20 Nov 2026 03:34:08 GMT  
		Size: 220.1 MB (220067822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:618af40082f88229b5d6f6dac9faf83d55ed849ae7cb5ecd85d9ea96393255d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2645011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07a38abe09ae863008dc65769656407c3631b2be30fe9d6bf8c56d89be9fe667`

```dockerfile
```

-	Layers:
	-	`sha256:0a6c4c073c3726dfe7985100ba13f87dbe3122315a40bf40a3f97405e0846f6d`  
		Last Modified: Fri, 20 Nov 2026 03:34:04 GMT  
		Size: 2.6 MB (2634160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52980f2d517854952e066edb0ffa5910e74760f8c4ac40937d28df0a55b9ba69`  
		Last Modified: Fri, 20 Nov 2026 03:34:03 GMT  
		Size: 10.9 KB (10851 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:b461adb57acd4f43a0409df2caed2eb1aba39af0fee05b7ac851ce4b77c60b8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.2 MB (246238867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01f9c3bbe575bc99bb3ae4bafc8e5b18cdad8ee5e77a699968d37ac1914e0e99`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:35:35 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:35:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 20 Nov 2026 03:35:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8732feab67098007e33e11254be3359f2843f718888a282d3d41f36a9c3da540`  
		Last Modified: Fri, 20 Nov 2026 03:35:58 GMT  
		Size: 218.2 MB (218237466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:330195b9f3d2c8998033381e7257f6cd86f4a773f34aac7052b8445af1e70921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2644893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ad6b1bf4e4dd552ffd38704135cab5f21030c36505977f45a20bf0f91026d6a`

```dockerfile
```

-	Layers:
	-	`sha256:562a63cab8c6cc34951374ddbbfac5119a4fd1f95887ff4f7ef2b884594247e0`  
		Last Modified: Fri, 20 Nov 2026 03:35:54 GMT  
		Size: 2.6 MB (2633890 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fcd525f5d28335d8aebad12ef3d9f6de8b3ad4690df729c0d3ad766eb3081dd`  
		Last Modified: Fri, 20 Nov 2026 03:35:54 GMT  
		Size: 11.0 KB (11003 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:8359ef6db225655d1f8f91031e9f2964b73750222cc798b1caeda7af0b59b7e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254924747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9da7f7e764f2936947b69aed5fade7e7a771c19008f182be4cccf4e8fb3ea2`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Nov 2026 09:20:22 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:20:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:20:22 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:25 GMT
ADD file:864e29ad8b1d92dce321e0401fe4ef4bbac836267e9967e73cb6394dc831cccb in / 
# Tue, 17 Nov 2026 09:20:26 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 05:21:04 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk=21.0.13.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:21:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 20 Nov 2026 05:21:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea8bb7a5f736bb561e2644790c0392a90ea347c51c0c6774b078c00e6b435e4e`  
		Last Modified: Fri, 20 Nov 2026 05:21:51 GMT  
		Size: 219.9 MB (219903085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1ef47e154bf433847069d16d6b631f6b422cc1a310e16cea3ac4c1563e1e06b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2642689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ef3becc76ab3082fb52464c9b03906a4269bd8fbfcc5ae6160d4bbb924ebbd9`

```dockerfile
```

-	Layers:
	-	`sha256:d2ae23f84ffb8fa3023d725c5caba65d1e067d862beb178b5dd6e733f724a02d`  
		Last Modified: Fri, 20 Nov 2026 05:21:46 GMT  
		Size: 2.6 MB (2631770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eba4de297b39effdc9fa4a55c41d609cb5a1f205ff70b641d58150bfb15820b6`  
		Last Modified: Fri, 20 Nov 2026 05:21:46 GMT  
		Size: 10.9 KB (10919 bytes)  
		MIME: application/vnd.in-toto+json
