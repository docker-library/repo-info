## `sapmachine:jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:2d817687de5bf845178fc4933f1b519f2b4c70ec2e08ef64728cd3bd56e03406
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:a6e8922283127197e57964d85d82424d1be0f3e54f91a4deb74be3f5258b26aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.7 MB (89681002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e748bd3580761333e2e6ddac4c70d84766b2bcfc58f17b7a95905a031a45b7ad`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:40:21 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 02:40:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb8598432330acde54b4b21d0ccb0cb84a83b6ba5b064553b17659168224c25f`  
		Last Modified: Wed, 09 Sep 2026 02:40:34 GMT  
		Size: 59.9 MB (59930751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ae22bbb5f27f8a287cb62e4a901f879db17df7124204a297f418ca75f8741fa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d2dc72ff6a637056c97b5c631a4099606cceeb18768566f73f9cce2ebd77a2`

```dockerfile
```

-	Layers:
	-	`sha256:b31d399ca4d01782cec51a3c49cd23a03ead21091377329771b633bbc18f7c1a`  
		Last Modified: Wed, 09 Sep 2026 02:40:32 GMT  
		Size: 2.3 MB (2299883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6cba26a06470475d2ae7fe241bda7606fb626e9b3bcab55b36db825e33b5cff`  
		Last Modified: Wed, 09 Sep 2026 02:40:32 GMT  
		Size: 10.3 KB (10316 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:2295f49a53764c67fce961aa6548578cf84c9f994eb6d129f02d6c3a74e85ee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86579692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87e3544f95bcb71eb1e2ab1f36aea8a8703d6b6c9de0953f58485cbe4d6d5eff`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:40:16 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 01:40:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df555c4be1c3d28bf5fb24777057fcf0b2da0a11bd644545e32e311f5dad398`  
		Last Modified: Wed, 09 Sep 2026 01:40:29 GMT  
		Size: 58.9 MB (58896945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a67c7d57c543f5b5bf2f86809ca8e2ea72c01f3aa865625cea6e2b3405486ed9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c10ed34a73c0aecd7edd307a547290e609d962de16a05f75cc2a7cb8188bf5`

```dockerfile
```

-	Layers:
	-	`sha256:dc262f0a2dd7dc083bc39fb02aa4c852768f3f78a7b5bc756ec2b9235d60c77c`  
		Last Modified: Wed, 09 Sep 2026 01:40:28 GMT  
		Size: 2.3 MB (2299576 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d850945bbe2802263ef611032dd3cc4155352d665cab60a25a6df4a2bf87d998`  
		Last Modified: Wed, 09 Sep 2026 01:40:28 GMT  
		Size: 10.4 KB (10444 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:5ed1af5bdea4067d55b0d8af7684a17ebe2de142bd7adfae2f0c65a13109721a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93912831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d837897ab8503e3a9cd02fc081d563475912786a859b16c8355dc6d07633779f`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:57:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:57:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:57:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:57:55 GMT
ADD file:432b9684ec0569be2be149e91ac77c16c05d7cfbb3e9cfbb7fd24d3ec4e3542c in / 
# Thu, 03 Sep 2026 12:57:55 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 03:48:41 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre-headless=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:48:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 03:48:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0856389ce4ec51bc75281fd12cfa7812f5a518ce66674ced4f3092d200cf58c`  
		Last Modified: Wed, 09 Sep 2026 03:49:48 GMT  
		Size: 59.2 MB (59210152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d533d4c2272ad09b01ea2c635d2d5f867c6715ba683bb6e6f31067a5eaabf078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:130c68c0b0f2bca33a01a325634ff57ea7e4baa1d13078ce162ef099d8665d57`

```dockerfile
```

-	Layers:
	-	`sha256:b86b0c3b3330f25607dec9a013bc50572ef5b8a3e99bfe5ed77574f44101c5fd`  
		Last Modified: Wed, 09 Sep 2026 03:49:46 GMT  
		Size: 2.3 MB (2298707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad4b99d6944d83ef833679e9fbb0a7747f8496c5715771ba8a44b072b51ee62b`  
		Last Modified: Wed, 09 Sep 2026 03:49:46 GMT  
		Size: 10.4 KB (10372 bytes)  
		MIME: application/vnd.in-toto+json
