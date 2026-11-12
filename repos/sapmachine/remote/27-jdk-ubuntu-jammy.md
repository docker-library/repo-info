## `sapmachine:27-jdk-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:8361dc670ca6e792fd46a13037faaba99e42ebeb7e5c2f938ee8a3731f9e924c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jdk-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:27373f327e4caacc0e0786e00c6b707edfa12c69b662ca8956e1e24a50acc0ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169349651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2af308dd1e5617aeb271815004ed949cf4f867cbc8580d934bb5ea8b4ecb314b`
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
# Wed, 11 Nov 2026 23:39:54 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 11 Nov 2026 23:39:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de19d21db350ea9a236643a139a62f6569d433bcef1c61e286b2e7ba13d737da`  
		Last Modified: Wed, 11 Nov 2026 23:40:14 GMT  
		Size: 139.3 MB (139280118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:52d29d0c4b403c7f2157d6e1471ad99c038f8fc44e22b4b5695c75a8fc6149f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2588688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0562c59c38b6af2de31428c3d34e7a82e0e44d05243268cdc9505470f1627121`

```dockerfile
```

-	Layers:
	-	`sha256:eb18068968174d34a4e3e5d3320984943d6cbd0d83f3ea59be3479519c705f1c`  
		Last Modified: Wed, 11 Nov 2026 23:40:10 GMT  
		Size: 2.6 MB (2576540 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11b0889374d9a0f29f213010191da1eb8397d24d4454af5e2c630b612536ec7b`  
		Last Modified: Wed, 11 Nov 2026 23:40:10 GMT  
		Size: 12.1 KB (12148 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:0ce93b7f6bbad9145c07fd5785b328cf99dfeeb4e6e307bee77b2e655b845238
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.3 MB (166332775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04cbe54b339eebbcb7e0c17aac8dd7724621d430db7fc942467ba9c75194e5f3`
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
# Wed, 11 Nov 2026 23:42:22 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:42:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 11 Nov 2026 23:42:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fac6fc07f0f640eb99d07a6963aafdd552a4b52a205a1d5177b912f5e179a02`  
		Last Modified: Wed, 11 Nov 2026 23:42:42 GMT  
		Size: 138.3 MB (138331363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b677bf2e18f1cd0235b5e18b96c80d72d444824c972d859bddacf29179e62e53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2588663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d155b91b66688a5990a91bf29759326ecf2c60bd0f24f160305b3175f233fd0`

```dockerfile
```

-	Layers:
	-	`sha256:728525dc162f0d585620c459681f5caa793741a9dbe609db72e822bbacd5f77d`  
		Last Modified: Wed, 11 Nov 2026 23:42:39 GMT  
		Size: 2.6 MB (2576315 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1f7157be585ac743d420c11bb6baac1c8296df1217846b9f885b773e9362ac1`  
		Last Modified: Wed, 11 Nov 2026 23:42:39 GMT  
		Size: 12.3 KB (12348 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:c98bc1618815a93552438af02d5bea6ee1d3ba62892e77e085182485321c7c80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.5 MB (173496517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f2a63369334c56811edcd7cf79db62990afd160a7c18c94ade8acdc8a009f04`
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
# Thu, 12 Nov 2026 04:52:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:52:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Thu, 12 Nov 2026 04:52:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:930bdfdd5d19974adb0ba597663b144584e8fa18e103e857a3dd3eb2cd73ec5e`  
		Last Modified: Tue, 10 Nov 2026 08:55:08 GMT  
		Size: 35.0 MB (35018100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b63f160eee645367281a1179234f2eba1fccf0985efa6e89f46f1cd446c238c`  
		Last Modified: Thu, 12 Nov 2026 04:52:50 GMT  
		Size: 138.5 MB (138478417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4cfec7740dd1e4bd214b38ce54930dd3882bbde8f9d1c4fc18361b740598abec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7cf9a0461db14c486c8b9b3c29adbb80c95d2e7674ac0b7978829671a5f862c`

```dockerfile
```

-	Layers:
	-	`sha256:5f59fe4dd6c5383b82a0e1952642ef04a1a5b244f45723bd7e89f2ea57817dcf`  
		Last Modified: Thu, 12 Nov 2026 04:52:46 GMT  
		Size: 2.6 MB (2575490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dca9ebb8f7b2d966adc2baa5f6a407e2304010be2f7970fa8dc0ae7d800bc247`  
		Last Modified: Thu, 12 Nov 2026 04:52:45 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.in-toto+json
