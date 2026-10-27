## `sapmachine:lts-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:d774d2a6653f7e6c984fb4dfac876107f7bfa65da6b635ca6de13e6eea1c2276
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-ubuntu-22.04` - linux; amd64

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

### `sapmachine:lts-ubuntu-22.04` - unknown; unknown

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

### `sapmachine:lts-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:1c299d746904c1e9826c2bed389f440579f34bac8418a6d1c67250457f1017a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.2 MB (250193154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e3a222414b66ed38585df7f379e6643b27d48cf6045461ce31552eaaab0b65`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:44:54 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:44:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Mon, 26 Oct 2026 23:44:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dab4eb51138ed750a04e7b01a578c88bb5811731fabd44f9b78b52b1b66b1ba`  
		Last Modified: Mon, 26 Oct 2026 23:45:17 GMT  
		Size: 222.5 MB (222508547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4664196d59b51bbc8984e2346703693a161b58dcc14622321bce005416cd432e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2635853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83e74ffe9f38486183af2e7338c7eb29c943509000755a7e28af744d02724561`

```dockerfile
```

-	Layers:
	-	`sha256:e86f2a1c34b51ddf9136d717c42bdcd01c4bf77962d50415904573ed4de81ba9`  
		Last Modified: Mon, 26 Oct 2026 23:45:13 GMT  
		Size: 2.6 MB (2623473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d085581a9d75691c70c0d00eb74914bbabedddbc6310c5779c93702b89bbeac`  
		Last Modified: Mon, 26 Oct 2026 23:45:13 GMT  
		Size: 12.4 KB (12380 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:859bebaaf0d4e47e1b3164b7b1b18a4415b6e3fc729ae985308570a39e363534
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256055108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10d5b0e1df6fd8a1f428ae3c59bd585868b7eca131839f24a216fb0461f4675e`
-	Default Command: `["jshell"]`

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
# Fri, 23 Oct 2026 19:05:46 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 19:05:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 19:05:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8b395c0c40ef31356bbedae190d8056dd90c065307103a579b2bc67f6e68c17`  
		Last Modified: Fri, 23 Oct 2026 19:06:37 GMT  
		Size: 221.4 MB (221351471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:299fc8cea23ca1b9f2a0e9f33c0fa59bfcd7e05c160204057fedfd62ca3f3e1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2632973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60a6d93ea80ff05e65d7ab8b29cf4581a3fe46e93e26ad68e2f859a39bd73629`

```dockerfile
```

-	Layers:
	-	`sha256:ebf55df643415c7f3cbf08e3ac82f32c7ecfd2ed5e20454c5495c6aee288e0fb`  
		Last Modified: Fri, 23 Oct 2026 19:06:32 GMT  
		Size: 2.6 MB (2620702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b28730c4746ca244661599a8b714e3c1c7548184b47674cd11b9d376f0658c81`  
		Last Modified: Fri, 23 Oct 2026 19:06:32 GMT  
		Size: 12.3 KB (12271 bytes)  
		MIME: application/vnd.in-toto+json
