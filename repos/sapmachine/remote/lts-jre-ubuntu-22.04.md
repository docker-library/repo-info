## `sapmachine:lts-jre-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:adec239cf5a142fcc32ffb8e3d0f5297f0186893feb30ba8762f0a0ecc4596d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jre-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:e26513a3a768a6d9e915edad418152cb3a04cfe1f20ef782447ac8266c5ec4f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90335726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70c6c5fbb5729a716d1e3c56bc416c4f41ed86696e264df0373adbd9cb49127c`
-	Default Command: `["bash"]`

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
# Mon, 26 Oct 2026 23:39:20 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:39:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Mon, 26 Oct 2026 23:39:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e990839fa2bd81ddad2a361aecbb56032aa2a1cb24d4b14922e64899c5536f`  
		Last Modified: Mon, 26 Oct 2026 23:39:34 GMT  
		Size: 60.6 MB (60583238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5604108fd3378a1d56a48b70848c796da23dbfb67466cb12393e6f2e076b7bcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2564074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1027b5d8c24db3e0bcef1686e8a9de55a38ec21b7161fa5bc768eacc526296a4`

```dockerfile
```

-	Layers:
	-	`sha256:77104af2118ecb27dddb2b11769f11ddb60b93e2f3817ce4d6f603737ba06aff`  
		Last Modified: Mon, 26 Oct 2026 23:39:32 GMT  
		Size: 2.6 MB (2553879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3afe572438e4900cd5c434762ef0b18c3f748649c831426add93ed7b8707254`  
		Last Modified: Mon, 26 Oct 2026 23:39:32 GMT  
		Size: 10.2 KB (10195 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:8131f054ec26a63d86059b1e212b01590a4ab10a815ab6b1344ff1fa8e1e0245
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87178109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33d08ab94603a48d6842c63f4c2511cd42a0516c5be8b401bb98a75bd095ade7`
-	Default Command: `["bash"]`

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
# Mon, 26 Oct 2026 23:44:26 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:44:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Mon, 26 Oct 2026 23:44:26 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f0faec1fb96506655257a4b8c2ef2fdabaf5c9d11b00952f798e73e70e1ac50`  
		Last Modified: Mon, 26 Oct 2026 23:44:40 GMT  
		Size: 59.5 MB (59493502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b501cb91f98e8115c4a0aac803dc414f1085f3bb073c0b8c1ca8fac6102fe70b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2563904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc7c19b0fec1bcc349d38bbd3cfd89ba4b50776c040736bc38d4c093e070fe41`

```dockerfile
```

-	Layers:
	-	`sha256:e69059fbb3cb04eb933bc35f64f72da3975d1823d09791b35743d78474b7a585`  
		Last Modified: Mon, 26 Oct 2026 23:44:38 GMT  
		Size: 2.6 MB (2553582 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d39258e3ee2d0f4cae3577b609b88b0d4a7888a0d674272835eae66c7ba8fbc7`  
		Last Modified: Mon, 26 Oct 2026 23:44:38 GMT  
		Size: 10.3 KB (10322 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:f718a14d832280795f5327cb08fb0a0ff722523974b794b02e75735191ae6f58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93578668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e702da152fb0de26a5e34804e42c87ffcdce2cc7b8ec6ca359b494906b7e42df`
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
# Fri, 23 Oct 2026 19:02:54 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 19:02:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 19:02:54 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:250a563ddfb346fc6a6c8d953059952ea0cf1ab520aee2e2699fcdbfa6eb3752`  
		Last Modified: Fri, 23 Oct 2026 19:03:48 GMT  
		Size: 58.9 MB (58875031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:932fc28c990d26722916c0a1d61a96d8b808aca2b865cdca9d4e90abfae65a5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2563032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2974eaeb1118a5405434c0aa850cbf71d8c18d71ae65af38067391738dcb5023`

```dockerfile
```

-	Layers:
	-	`sha256:49d9610ffe7b707f07c0a171470ed0c2752489f409b159b70e76878e2abeba75`  
		Last Modified: Fri, 23 Oct 2026 19:03:47 GMT  
		Size: 2.6 MB (2552781 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c9978d3bd53c9792178d7b383948c64bbd7804ee227432d23e4e8a9d51be786`  
		Last Modified: Fri, 23 Oct 2026 19:03:46 GMT  
		Size: 10.3 KB (10251 bytes)  
		MIME: application/vnd.in-toto+json
