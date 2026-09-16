## `sapmachine:17-ubuntu`

```console
$ docker pull sapmachine@sha256:33b2cb749cf6f1b20eab14118c27fed64dcf3f450b1fe5d598b5d8c4e8be60d1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:53c58750a8bf51baadfd24aec66d92917466580b867457999dce786e67944e68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234933139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb158796011facc0f11e612f64d37afb5967bd5083859d7522b48153ea7ea094`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:32:14 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:32:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 16 Sep 2026 03:32:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a501cd0b2114883eec7ed3cb3763666a57473dbab3afd12e86223cbc02a6847a`  
		Last Modified: Wed, 16 Sep 2026 03:32:36 GMT  
		Size: 205.2 MB (205169023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1babd19ec2a2b9801b9ff2921d0aca86fcb4ef5d90990161b1cd5780c8dd0a35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2619639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81d94a69a5babf34dd23a2efd0518959126a360fd5401e6b94f3335075741b15`

```dockerfile
```

-	Layers:
	-	`sha256:3e587f629fe16f513bb03d324d312a28407c4d4724dd29ca4e157e4648ab0eea`  
		Last Modified: Wed, 16 Sep 2026 03:32:32 GMT  
		Size: 2.6 MB (2606260 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7bf79854fe1c62944e0b8a02d7a98a6a63d749ec05f1d87557c45faa3d06522`  
		Last Modified: Wed, 16 Sep 2026 03:32:32 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:0f2c38a4035ef6099338524e736fce1d38a585ebb0f4d5ca6818c1b03be7f6ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232890403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:782b5e64454a0ed451c3629609c04cc7d0f6a00577b84d2448b6e0ca9b0f8214`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:31:56 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:31:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 16 Sep 2026 03:31:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d22e2edb797127884dc299862f7f1004c6870768d6b299a7a7cab992596197`  
		Last Modified: Wed, 16 Sep 2026 03:32:19 GMT  
		Size: 203.9 MB (203948823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:970f28dd7d40e6014a27d0bff1c07ddbfdc2f01c0a508fb448acf58c8aeb4816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2620499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:781f2296d3797fca66ec557002d919c4c4057c3711fa11e18a7144e3bb58013d`

```dockerfile
```

-	Layers:
	-	`sha256:f8ef17f3a27da2749cb83d828509b553abd975d7e26bb32e6f14ea4cde9eec97`  
		Last Modified: Wed, 16 Sep 2026 03:32:14 GMT  
		Size: 2.6 MB (2606872 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4cb6fbb208c94ffc264c63fb58710b378edf3460b2e806cd6a67cb2b102bdc6e`  
		Last Modified: Wed, 16 Sep 2026 03:32:14 GMT  
		Size: 13.6 KB (13627 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:67f3516178f2bd3b906c706f203d69073aeb3f5360dc9093b23632e7a48ed446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.7 MB (238674392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0621465bc94ba54badf41e5541e35f695162f3d6a55fab76a822ba8f0f1c7aa`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 08:36:59 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 08:36:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 09 Sep 2026 08:36:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:024615285ce808c350ecdc3d8ed2251a1c9be59f4eed757151b55fe88856e422`  
		Last Modified: Wed, 09 Sep 2026 08:37:45 GMT  
		Size: 204.3 MB (204297513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:119246def43fa27de676f1d5ee8a73a126fce0c0d13dc054f20a5834a2f67959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2617355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f131e464a0e8e079e641ce7b2b2eb326b5335f2e3d35fe1ae1ef4d83dd9361e7`

```dockerfile
```

-	Layers:
	-	`sha256:381f109db2228bc331a8ac4fed10c29db77ab2358b78a9137e7f99b115cb3a59`  
		Last Modified: Wed, 09 Sep 2026 08:37:41 GMT  
		Size: 2.6 MB (2603860 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:116d154242a5dea241c21c4108d2c8812a754472e2451eb0f3516c938613a66d`  
		Last Modified: Wed, 09 Sep 2026 08:37:40 GMT  
		Size: 13.5 KB (13495 bytes)  
		MIME: application/vnd.in-toto+json
