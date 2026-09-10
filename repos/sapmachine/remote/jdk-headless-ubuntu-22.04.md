## `sapmachine:jdk-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:b238aef1b1a5f8c5a97e03f3df4de2f060976c75b8c0501cd804e389d99f302d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jdk-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:8c2901709097c02c22346077f461af1f08b0a6a1916dcee1bb37b01b11dfa51a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169121044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c67a0793d100f6cae7b67f51a8b4a35f074dd4c74d1008a9fdd92ece5cb354`
-	Default Command: `["jshell"]`

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
# Wed, 09 Sep 2026 02:40:28 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:40:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 02:40:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a49b7decad61ab7aa805ee4f94c958cf59f1daa2f8c20bfa0fe84f027444dfa`  
		Last Modified: Wed, 09 Sep 2026 02:40:46 GMT  
		Size: 139.4 MB (139370793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:50af2d04e4888f136fec25907e588e0a9b6437bf37f65b6f786d6db4392b8834
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2333476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16282517965905018a7de13fb35725f5276b6d1099d4e92d1e040c3218fd88ef`

```dockerfile
```

-	Layers:
	-	`sha256:9ec60b5bdd26842c1a3a4141e0928816722913623be88a0b3058663b1954b2a6`  
		Last Modified: Wed, 09 Sep 2026 02:40:43 GMT  
		Size: 2.3 MB (2323159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4c65beb170a5fad2ce09fe09777a330c2b4a1f74ed7721111d39ab39d57511d`  
		Last Modified: Wed, 09 Sep 2026 02:40:43 GMT  
		Size: 10.3 KB (10317 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:e4ab9c3829e6b4a2a4dbef3cb8217bb48a7dd244e5623e76d2f1d0f4dc57a097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.1 MB (166071201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a5ea958f16aec76d19e85086e1a3e3c57b3ef0a7cab602ece45dce34234a833`
-	Default Command: `["jshell"]`

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
# Wed, 09 Sep 2026 01:56:39 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:56:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 01:56:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c062c36c4f086f594e0bcecf1aa9792ba0ccbc57d0b8498175c4efb5781726e`  
		Last Modified: Wed, 09 Sep 2026 01:56:58 GMT  
		Size: 138.4 MB (138388454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5a8ad12915a763aa6e8195af4a404d4b3b817e668898739d72736ce7979ad97f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2333295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fde6d788d50dd208e2e8f90aa0c02c14c84cf7e0c5fd366dc3ce18ede00a269`

```dockerfile
```

-	Layers:
	-	`sha256:66794307f944ede8252beffe41c1250c07e687beee085be3171f9e59ff5ff708`  
		Last Modified: Wed, 09 Sep 2026 01:56:55 GMT  
		Size: 2.3 MB (2322852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d54f8b9b428691019fd06205b3377307ce79ea608a01d0c9f918837b8fb61353`  
		Last Modified: Wed, 09 Sep 2026 01:56:54 GMT  
		Size: 10.4 KB (10443 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:1d9efd28b72432babac3e304a940c1d4c5a538b0c33923281f42c81152cdecb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172865293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab4f8b5f97a46ca44a30e85db07f2e388f364719364603e4ebf575eab8f333e`
-	Default Command: `["jshell"]`

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
# Wed, 09 Sep 2026 03:52:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:52:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 03:52:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40a4ed7ad5094902dafc4eff2052e643a474290abdffa855f054dc45b59c4c6`  
		Last Modified: Wed, 09 Sep 2026 03:53:52 GMT  
		Size: 138.2 MB (138162614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:278be5891073c76d2344e768b41d26a28ba69bf6db291a7327532f9e4f48e5d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2332356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4ce7c377e5c76a904a75e07b52078d96c099845dd14681da16d98e91e3c39b7`

```dockerfile
```

-	Layers:
	-	`sha256:f73d645a6a668454c3a02afc5be29a393737ce8fd317a091d48d811d677ae8c7`  
		Last Modified: Wed, 09 Sep 2026 03:53:49 GMT  
		Size: 2.3 MB (2321983 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37a5ec3f6ee030d716d6d8ad3fb1018a1680e336359e528f73cb0da570f015d1`  
		Last Modified: Wed, 09 Sep 2026 03:53:48 GMT  
		Size: 10.4 KB (10373 bytes)  
		MIME: application/vnd.in-toto+json
