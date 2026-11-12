## `sapmachine:lts-jdk-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:c36dba15b933f4108b278a5856ee646121e183348e60173d52a2913d8367c613
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jdk-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:7d64fd872b5e73ab2e0ced3b26de0be2b19738ec42309b5cca81787c773839cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254857651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a867b837de1d4530dfa270d6586b3d0fd6f140d1bc61b1f86f527fdb11344f6`
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
# Wed, 11 Nov 2026 23:40:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 11 Nov 2026 23:40:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55b133e775d56467087bc3bc986fdf94cbb9ee7ec3bc8c09a332d6a6579b4d2e`  
		Last Modified: Wed, 11 Nov 2026 23:41:16 GMT  
		Size: 224.8 MB (224788118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:fedc0bb4a21ceb9008019d5f3f661c6bfab233d53df521b973fa1013280a57d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2636486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b81fce6a995c894b679ce26ebcd48f84ab953d911f542c72869d170b4eebc8fc`

```dockerfile
```

-	Layers:
	-	`sha256:408ce5ff69525a108833e43ee623da86b726b7ca66c571896b19d8028cbb6dc8`  
		Last Modified: Wed, 11 Nov 2026 23:41:12 GMT  
		Size: 2.6 MB (2624306 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:121cb91ccf45a330be2ee899673733e7914ccaa7b85054feacc2399d9e785481`  
		Last Modified: Wed, 11 Nov 2026 23:41:11 GMT  
		Size: 12.2 KB (12180 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:17cc1640086c903ea2611a1f31903014facb6e941080898b445cec052c7bc044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250510609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4eae90d39c070d8c8b531ed94efc611ef68adb55b1f291d442719616f320ce`
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
# Wed, 11 Nov 2026 23:43:28 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:43:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 11 Nov 2026 23:43:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e89d24fa2144db07c1e88fd55b8882d6dae791f6b0b14652babecdac2ad185`  
		Last Modified: Wed, 11 Nov 2026 23:43:53 GMT  
		Size: 222.5 MB (222509197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c3dee2667680a45e5d0a7837369690545389534cdfbdb87e271e2c3487c0471f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2636461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bda10ac5803e3056bf77951bc5821e49df47cfc499d1f2f60a590c399bd73a2`

```dockerfile
```

-	Layers:
	-	`sha256:f04ca70b363a13935f0f27e6ce353926f4db69f8d3a5f80be42a99bc7b2d40b6`  
		Last Modified: Wed, 11 Nov 2026 23:43:48 GMT  
		Size: 2.6 MB (2624081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99e676125d37a205037b304fd2ab8c014a0ef3b4fd76e5338e712a6c0b4da6eb`  
		Last Modified: Wed, 11 Nov 2026 23:43:48 GMT  
		Size: 12.4 KB (12380 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:7af9c451e2ffe990c338faa66201a9c1d692689f18b72fa6f598b970a967bd60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.4 MB (256361604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd90330a69e9c6a7b27ce7e0e0f3ed68a6d5726cf7631b814bb41e5e258a8968`
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
# Thu, 12 Nov 2026 05:01:22 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 05:01:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 12 Nov 2026 05:01:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:930bdfdd5d19974adb0ba597663b144584e8fa18e103e857a3dd3eb2cd73ec5e`  
		Last Modified: Tue, 10 Nov 2026 08:55:08 GMT  
		Size: 35.0 MB (35018100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e24606ff01bdbb318c56457e1bcd57c1a8125ce72bc4a171ac40ce6e42c451`  
		Last Modified: Thu, 12 Nov 2026 05:02:34 GMT  
		Size: 221.3 MB (221343504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a892d0ab8218c1a158da87a1f0453a5e3db1d2f09790b83b88498d2cba4032a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2633594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5d65525eb240b0daca4096b7163de93f4c643b399004fab6e5a17e7100de15e`

```dockerfile
```

-	Layers:
	-	`sha256:c3e9fc810ae684d6a34e6e9a7c3edb59869a9aa56834ecb6d1167da79fc51bac`  
		Last Modified: Thu, 12 Nov 2026 05:02:28 GMT  
		Size: 2.6 MB (2621322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ea4bfddbe3d278a883063ad02bdfdedf14a47de09b2052e542e90e734dbaff2`  
		Last Modified: Thu, 12 Nov 2026 05:02:28 GMT  
		Size: 12.3 KB (12272 bytes)  
		MIME: application/vnd.in-toto+json
