## `sapmachine:lts-jre-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:34c3bb603e5bbcc6866ab2ecec800bc9cb18f55c2b88a6be48b17ab23d516fac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jre-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:4500e464def750bd3d285b62daa6fe7317cbc430a8bd13e86201224a56b95cdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90338529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37a8ee915823ff36abd01a287df55584deada343d4d3c04f7f4c427e87aa1129`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 16:55:40 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:55:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 16:55:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42adc725bc7b0f66ca46eb2d7c54c151195586d1ac0bc941f48b4502d8210235`  
		Last Modified: Fri, 23 Oct 2026 16:55:56 GMT  
		Size: 60.6 MB (60586053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:390e6e0eb9e9d41ef544cf87d9bd26700d6c3d57eebb3ad9a83dcabf3caeea47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2564062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7e19fd3009444996fe0ae0b4650f50af3e170c8da82fc7e9e20799011849427`

```dockerfile
```

-	Layers:
	-	`sha256:9c808b16ffe73dbf259584fb84bb4299023789bf4a896d3e9e5d3426c15be954`  
		Last Modified: Fri, 23 Oct 2026 16:55:54 GMT  
		Size: 2.6 MB (2553867 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef3ece915ab2edd25e739b70cebdecad8ea0065c3ae80e6d4c69da23d19923f5`  
		Last Modified: Fri, 23 Oct 2026 16:55:54 GMT  
		Size: 10.2 KB (10195 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:f51e7f543813cca9df8fd90e8f00ae0ff758c2575c4a75ae2fdcc8dbf89aeace
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87182674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f777a798a5c44cc5bfb730140f1db0217e6b5b90d758416bbdee8d0ecdc56c65`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 16:55:19 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 16:55:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 16:55:19 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:436251aee92f4fdefc4efff6d8efe1e28bd2c1ab5e7c63559271ffb333188610`  
		Last Modified: Fri, 23 Oct 2026 16:55:33 GMT  
		Size: 59.5 MB (59497951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:088a761b8cae534b1149df7b89f726f67b94106b86f7505671623e2ede95ff5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2563890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef2dfa684e6a3f998bb77a7354ec9caa902f716a9aec2da0b3460085ec16424a`

```dockerfile
```

-	Layers:
	-	`sha256:c649632eb0529f2c6b96e64bef323de41386ff1c345e1459d9eca0ee98adb191`  
		Last Modified: Fri, 23 Oct 2026 16:55:31 GMT  
		Size: 2.6 MB (2553570 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9a9f4644e8498481a3e0d8c1cddd254dcea444de953f4b32d7a1ceebf984a64`  
		Last Modified: Fri, 23 Oct 2026 16:55:31 GMT  
		Size: 10.3 KB (10320 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:d85852a59b41cecd388f96091f10614cb9ea9adabefcd5387109cb94685240fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93568498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2826f43e3e48ac036183e13f417a6a15c899b99ff44ce635927af433f2ee797d`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Thu, 22 Oct 2026 10:01:19 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 22 Oct 2026 10:01:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 22 Oct 2026 10:01:19 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d92d5ca3b70e7a13f6f181e388911544a47334f4e696f57486155855a30f5488`  
		Last Modified: Thu, 22 Oct 2026 10:01:59 GMT  
		Size: 58.9 MB (58864861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d17dcc0c8ff6e5c9b79903c13df7daaf5c305a5d8ec46b8ac8835fae2aebbb25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e0ff02fc43d818c8e4678f96cee28be958965229e5fe00bd3ead18d6ec7ece7`

```dockerfile
```

-	Layers:
	-	`sha256:42af5ed6f2c546c1c36fc2a4f29d5013bd10d3965bb4e33fcead7388646aae9a`  
		Last Modified: Thu, 22 Oct 2026 10:01:58 GMT  
		Size: 2.6 MB (2552749 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1de134de86ab5ad8ae154ef28cf633542adeaacc977abc9d870d160986e8561d`  
		Last Modified: Thu, 22 Oct 2026 10:01:57 GMT  
		Size: 10.2 KB (10227 bytes)  
		MIME: application/vnd.in-toto+json
