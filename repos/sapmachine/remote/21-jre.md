## `sapmachine:21-jre`

```console
$ docker pull sapmachine@sha256:2883a48a9784c5e5a656c20dc840a368139cc4eed47243fc6426cd27bf062848
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre` - linux; amd64

```console
$ docker pull sapmachine@sha256:34195e55132b6336f36223231bf15d847e18d3a4d6d449252dfb3e0f044fbe6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.0 MB (95997748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c9507e2d2985fa4f2ae82b2e34ca06fef563994bbf8e407d6dfdabf3cb0d0f9`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:38:38 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:38:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 02 Oct 2026 01:38:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd94018210c9757e88ee5f095acdcff3ffc2436bd439f2a63eaac58ad3eca8d9`  
		Last Modified: Fri, 02 Oct 2026 01:38:54 GMT  
		Size: 66.2 MB (66233326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c31daef2bdc83cab14ff024d3e9ec6dfd4914c67e7e4925d70b449a7cd3c44e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2532588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:216d366cb4aa50437324592b1cb4fd0e3c8ce9fb99df148598f3bc76bacf01c6`

```dockerfile
```

-	Layers:
	-	`sha256:f6adbe548841d4e39eb61073c6ae1ad5d95f5018459e833abe87fa17243b178b`  
		Last Modified: Fri, 02 Oct 2026 01:38:51 GMT  
		Size: 2.5 MB (2521786 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58748fb06404a377a091786f90dd20e0e97332880f72e202a78e33bdc2e31703`  
		Last Modified: Fri, 02 Oct 2026 01:38:51 GMT  
		Size: 10.8 KB (10802 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:b5c0323e6c104125e7595ce78d66afd9e50be25390acfd4bcc5d42a6f0815293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (91953116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53faff0f6b7e43edd244b810f3139ad96e6d9ad671df414e7e0a9f81f4d961de`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:39:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:39:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Sat, 17 Oct 2026 00:39:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47bfb2f5e6c4ae3f41aaf26f3e526326607c5055f8d01da370581f0b9113b6d0`  
		Last Modified: Sat, 17 Oct 2026 00:39:49 GMT  
		Size: 63.0 MB (63013355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8843276d970b00ee355fa1dbf5471f7e268b6a0fc855c9b903a8b0792073c0cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2533279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dba2cdfb5a08b36c6aaf456497de20722c40a6a730d4805bbece276248fc9df`

```dockerfile
```

-	Layers:
	-	`sha256:940e36cb4e41fbb91128e3f83f54ca762807935db45efea94f50cf62c674c9cc`  
		Last Modified: Sat, 17 Oct 2026 00:39:47 GMT  
		Size: 2.5 MB (2522326 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:222fdaa63c36dc9b2d4d247ea51e040f2a580d5e89da2ff58c116c470ab45cc5`  
		Last Modified: Sat, 17 Oct 2026 00:39:47 GMT  
		Size: 11.0 KB (10953 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:bcefbb45bae79b51a9766609c773045f6a74ee2c37f55c36ea92d4c2a2e723de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.7 MB (100748850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfd286461f82d316576b6d7b72aae925043b40586d18c3be511f5bbd18248258`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 05:44:10 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:44:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 02 Oct 2026 05:44:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01fa8415f1a11b9da33479e875d5982de70668032697d8457bcfd563a8ef9a94`  
		Last Modified: Fri, 02 Oct 2026 05:44:56 GMT  
		Size: 66.4 MB (66372341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b3ba53879543a3bdb5e5a261f0206259f18b56f091910ec520fbc324e23a9948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2532154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d7266e69296d263b2e89f74692024fa7b3a6bf577c89cab0544f3aa593bf6f8`

```dockerfile
```

-	Layers:
	-	`sha256:cc70de237e69fa0e93b898cf1bb06b09023732ae00f8149da0a37e9a55ad85a5`  
		Last Modified: Fri, 02 Oct 2026 05:44:54 GMT  
		Size: 2.5 MB (2521284 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09cef1bba9da70026791f72cb55494997b62666aaaca97318014c3342f38cc1b`  
		Last Modified: Fri, 02 Oct 2026 05:44:54 GMT  
		Size: 10.9 KB (10870 bytes)  
		MIME: application/vnd.in-toto+json
