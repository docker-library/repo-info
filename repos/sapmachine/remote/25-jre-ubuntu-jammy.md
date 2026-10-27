## `sapmachine:25-jre-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:48e0905de345edb3e4ef65a7ea0a4d717228d3d4127cb902265368668a5c8576
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-ubuntu-jammy` - linux; amd64

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

### `sapmachine:25-jre-ubuntu-jammy` - unknown; unknown

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

### `sapmachine:25-jre-ubuntu-jammy` - linux; arm64 variant v8

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

### `sapmachine:25-jre-ubuntu-jammy` - unknown; unknown

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

### `sapmachine:25-jre-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:1401551b43a9fde338107d7c2c543fa49989a6ea8ae4797a505bfd599a32fbf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93576809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:948341593c16f929f52198390eddbf59d3aa07e0b74fffeba388c9b4f11bbd6c`
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
# Tue, 27 Oct 2026 07:34:19 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:34:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 27 Oct 2026 07:34:19 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8f018a5a2acab966ca4e7a98422ebd9c5113430dc173e16eddd8ea016705c52b`  
		Last Modified: Sun, 25 Oct 2026 20:45:41 GMT  
		Size: 34.7 MB (34703933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3012dcc98ce920309488b8e644dd31e38b8475ebbae2b850a18e349543cacab9`  
		Last Modified: Tue, 27 Oct 2026 07:34:48 GMT  
		Size: 58.9 MB (58872876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cdd388c23c2c216e759414746c9c9ceaeb6f3ea47bd19a1a4f6ada6fab5d6135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2563044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fefc0ba2e3b65895956b6251e575a8db4521acd6dafd9caba541961983a9e8f9`

```dockerfile
```

-	Layers:
	-	`sha256:1b38a21f15b5d724e7ae3707239fbbe8271aff7332e69e673934ce103f9d0f16`  
		Last Modified: Tue, 27 Oct 2026 07:34:47 GMT  
		Size: 2.6 MB (2552793 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab9dcd6d386393b1b8f9b3e284a8231fad3c7fb5f5ac382c56f42838b9690c4`  
		Last Modified: Tue, 27 Oct 2026 07:34:47 GMT  
		Size: 10.3 KB (10251 bytes)  
		MIME: application/vnd.in-toto+json
