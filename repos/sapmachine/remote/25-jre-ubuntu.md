## `sapmachine:25-jre-ubuntu`

```console
$ docker pull sapmachine@sha256:c5c423260151b06fd770e835efdb70ce8aa7bc97586c988bad729006cbf57860
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:e2479b2f31340f59129e506efe04d03aac008fadd6625b61bf527f839479a84f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.8 MB (90776030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4a4f6dadcb0327b0d0a9a7817f251cca8cb933b6eb3c7eb92f3ca66d606fda3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 16:41:07 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:41:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 18 Nov 2026 16:41:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbc2ffdab0c8675e49996a0eaef2bb537677d7500f60b692439458ef04ad0fd`  
		Last Modified: Wed, 18 Nov 2026 16:41:22 GMT  
		Size: 61.0 MB (60982807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d89880b09dc79e9bab27fc402830fd1bb0d4f692d725dc3c03bb19ec911f80b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2540333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d3bf1e2653622fe45e5c494fe488946be6e704561b4065c4c4d482f89e5d12`

```dockerfile
```

-	Layers:
	-	`sha256:50337ed94fad280b4126d71fcb86ca0790d5559d5447b2e7654be2385f28a042`  
		Last Modified: Wed, 18 Nov 2026 16:41:21 GMT  
		Size: 2.5 MB (2528552 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e34154c445ebf71099d05d9a8062a9c59ba00039459afb3a3237be2abd5db36d`  
		Last Modified: Wed, 18 Nov 2026 16:41:20 GMT  
		Size: 11.8 KB (11781 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:18ceb1e38d7c080be10352f8e153335303a8bcf4966432eb878ea17eec24ccef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88909117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6e6c7e897d193c2479538ee2aa7d13776adff8ddeb379640867689f9f64b6c5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 16:38:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:38:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 18 Nov 2026 16:38:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38bcba01eb7371021d07e58536f6b937da5d6ca13d87358651eaa54dd401851b`  
		Last Modified: Wed, 18 Nov 2026 16:39:07 GMT  
		Size: 59.9 MB (59943859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4b19d5fbfcf36dcfdc5b2541d83d155380aab73c8d1462e9de885c374f677ed6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2541071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3921627908b47747d373a21e04bf569cfe0d4b45b9ad22e3e08b3e67da0b123`

```dockerfile
```

-	Layers:
	-	`sha256:d85e6eac6d4ead20d00503dc91c06b4099cb1dab6f9df649d0d8715019c5cba5`  
		Last Modified: Wed, 18 Nov 2026 16:39:06 GMT  
		Size: 2.5 MB (2529101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2dfe24a99331fe6c2b720c1925a2bf0e4d3fc7653db4988bd511e95cbd5488a`  
		Last Modified: Wed, 18 Nov 2026 16:39:06 GMT  
		Size: 12.0 KB (11970 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:9292ff0ac5307440dfd98be21cd5e08829fd2c114337762cbe250c1adc0416ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.8 MB (93759778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54c0e9d4a65b672aeab08fdc3b3526e10509ddaeee83d3b1f093a677e996260c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 17:00:52 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 17:00:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 18 Nov 2026 17:00:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5935c39c70079d14f5a5d2b1b80d1c78a4c7162c4c37c403714b549566b5f463`  
		Last Modified: Wed, 18 Nov 2026 17:01:24 GMT  
		Size: 59.4 MB (59353267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:71e7706dc702dac6c317009ce07178294755004972b2e25684cc1a26f89f61db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2539307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdd3768d1efe83236bd831aa57b1ea335a0a1c1cdf4f36eaf6326862ff1d2db1`

```dockerfile
```

-	Layers:
	-	`sha256:a793aeff0b8142370de50a30f9241e75936942a423091fd2f0ce2b594e686818`  
		Last Modified: Wed, 18 Nov 2026 17:01:22 GMT  
		Size: 2.5 MB (2527438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e33d39bef356b0b1cb0deb0fa2f4dbf38e4e4c4534a134ed9c46a4ba65160271`  
		Last Modified: Wed, 18 Nov 2026 17:01:22 GMT  
		Size: 11.9 KB (11869 bytes)  
		MIME: application/vnd.in-toto+json
