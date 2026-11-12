## `sapmachine:27-jre`

```console
$ docker pull sapmachine@sha256:567a1b55849f805bd7e9306536064a39fd1659319e23ad477b521a893aa36724
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jre` - linux; amd64

```console
$ docker pull sapmachine@sha256:a5016307a9d9b2244e03720cffcfcd436ad6876aff6dbf595d795b6eefc553e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90685030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66348f0b1dd766d50d76d2294e6fc5b5a732b5a6b73ca1ecd49e91945ae663d9`
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
# Wed, 11 Nov 2026 23:37:55 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:37:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 11 Nov 2026 23:37:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:845716f17b9306894a52db26f5038832d6440faa9a579cedb1dd841bd895d0c1`  
		Last Modified: Wed, 11 Nov 2026 23:38:10 GMT  
		Size: 60.9 MB (60891807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ee814dad738cfca77fe68fd19d1522e34d303c0c78dcb003dea6ad691f65432c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2539038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2c6124c3560c6a71455d0b901dc997f94d848c46825fdf132685af530093e39`

```dockerfile
```

-	Layers:
	-	`sha256:760c74198fa6db8b2582e2dbf9172d6834da33d74586d8c1ea40cb9ac5dd34be`  
		Last Modified: Wed, 11 Nov 2026 23:38:08 GMT  
		Size: 2.5 MB (2526961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e782978cc13bbe2b88924185e3de48bae75c71bafc415c1bdf394e1ecdffa49`  
		Last Modified: Wed, 11 Nov 2026 23:38:08 GMT  
		Size: 12.1 KB (12077 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:90d5c7b9da87e013d236fdc7ea3a82859ea54993f4470b6a7d30f0689ad4d293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88894115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eea8a8fd4c4dc9c9b05612c4f886c77ec5b10385f14e1bd4761f3dae36681a08`
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
# Wed, 11 Nov 2026 23:41:12 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:41:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Wed, 11 Nov 2026 23:41:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06dd11e0143bd6ed02b71bfda1786fc6d527cd88bf73fd4944636e4d7f295a40`  
		Last Modified: Wed, 11 Nov 2026 23:41:25 GMT  
		Size: 59.9 MB (59928857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:396036552c58fb9d635a76cd056312531431edc68cd1a9536f9b61dbff9e750b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2539799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13038134777fd40a0143415d3575107bf61382b763b952ea01891412dcba780c`

```dockerfile
```

-	Layers:
	-	`sha256:0ba7166f6397badc778adc667b64a2c2ce41fb07f52b8439aa42c3a23c36acf1`  
		Last Modified: Wed, 11 Nov 2026 23:41:24 GMT  
		Size: 2.5 MB (2527522 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faa9b819e76f5a9e565542265f4781da8d46e6921a0e05c93794a29b88e3e727`  
		Last Modified: Wed, 11 Nov 2026 23:41:24 GMT  
		Size: 12.3 KB (12277 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:9b440e6ed103e3bd15296e6061a3709b21c9d9b958804f9d9a0f874604a8a610
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94641463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0a1000170c7ed160283154bb2b61a393bee29fd688634cfe3229a6985b4c954`
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
# Thu, 12 Nov 2026 04:44:43 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:44:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Thu, 12 Nov 2026 04:44:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1421d5be7281e8e7cc49cbdce44abbc708daf646da42140172595ee8ab6be81e`  
		Last Modified: Thu, 12 Nov 2026 04:45:21 GMT  
		Size: 60.2 MB (60234952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ff1750da7caacb75bdd6abb8a65a76034347863f95fc7ad922eae61dc9b3248b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1443d99e48baacbc8ffe82ea90f22275b2bdaf9b45bebd760d3338c740b7917`

```dockerfile
```

-	Layers:
	-	`sha256:a91fb9d60ca8976572b63b931f34d8ab972afb221b253feedfd91db0d7fbb7b2`  
		Last Modified: Thu, 12 Nov 2026 04:45:19 GMT  
		Size: 2.5 MB (2525853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e489037c78dcdfa4920e2b08006b475e31967fb637086c449f68c597847fde8`  
		Last Modified: Thu, 12 Nov 2026 04:45:19 GMT  
		Size: 12.2 KB (12169 bytes)  
		MIME: application/vnd.in-toto+json
