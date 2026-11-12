## `sapmachine:25-jdk-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:427cdd20049920ebc66c11eb1e85c88eb8f6d6fcfe68216607a5f634c71625c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:8151e17a3ef4227a5a82fb5bab6c985c2eb3cd75bd127fce77a57bb657ba0102
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.5 MB (254540602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:408ed80d55a10f209a14e48fdea24b4940cda2c7698908d94897790ede1931f4`
-	Default Command: `["jshell"]`

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
# Mon, 26 Oct 2026 23:39:35 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:39:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Mon, 26 Oct 2026 23:39:35 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b9ec5da3fb3e1b52f16a02658ab6c7b0944f1bcdb2fb6eccabea99605108ae`  
		Last Modified: Mon, 26 Oct 2026 23:39:59 GMT  
		Size: 224.8 MB (224788114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:064033af9bc464c1c9989e145c4390fccee819ded8905aa819b40df7d5709f14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2635878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72601458a57927b40cb1b3af3e8b3a6a8f50b16f1cd9994a503465c4fcca71af`

```dockerfile
```

-	Layers:
	-	`sha256:b8bb4dc84079d59cc2f511d9e6b7d40d9d19e731ee5ac5c8ac1b5f73895951f9`  
		Last Modified: Mon, 26 Oct 2026 23:39:54 GMT  
		Size: 2.6 MB (2623698 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1d4c44fb0b3c617d4f3a97f2e36b376a0886877540b87df5e0a03409ba6d4f3`  
		Last Modified: Mon, 26 Oct 2026 23:39:54 GMT  
		Size: 12.2 KB (12180 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-ubuntu-jammy` - linux; arm64 variant v8

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

### `sapmachine:25-jdk-ubuntu-jammy` - unknown; unknown

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

### `sapmachine:25-jdk-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:f6848415601430419b4ead6536f5c4d6bfd24eefb9923b30e7bfdcd23f44fb72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.0 MB (256047515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87516310aa03f1538dff5a2da66593bc0b26a9214f743aeaf810ff3446e3a5cf`
-	Default Command: `["jshell"]`

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
# Tue, 27 Oct 2026 07:36:04 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:36:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 27 Oct 2026 07:36:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8f018a5a2acab966ca4e7a98422ebd9c5113430dc173e16eddd8ea016705c52b`  
		Last Modified: Sun, 25 Oct 2026 20:45:41 GMT  
		Size: 34.7 MB (34703933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f276135e56556d170f05d60b5a9202214d162d427f9f1c12aec4aadf82adb23`  
		Last Modified: Tue, 27 Oct 2026 07:36:48 GMT  
		Size: 221.3 MB (221343582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6112f9727dd3acc36318116b98a92f6dc3c6f3cdcb62ba2ec4d87ed855e15a34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2632985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25a02db4f4a331518fdb3ea3ff71a3c565f8803f82d27882f9a25b23fa99fe8a`

```dockerfile
```

-	Layers:
	-	`sha256:251971e8a77e31763d7bc8f9347f7ada25a77705ce54a566fceb763d1436eb28`  
		Last Modified: Tue, 27 Oct 2026 07:36:43 GMT  
		Size: 2.6 MB (2620714 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a2c6dfc7e3f932136e72bae103a9cdc891ce9876b811cf881e629d2edd56675`  
		Last Modified: Tue, 27 Oct 2026 07:36:43 GMT  
		Size: 12.3 KB (12271 bytes)  
		MIME: application/vnd.in-toto+json
