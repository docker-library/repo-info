## `sapmachine:jdk-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:3764cb43c0965c7a6afa7fe84b14005e6ecf4ee3ee2704a7ce1c023ea535c47d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jdk-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:0d323db62cc2546d81aa305d75c77b78aab9b79b90651c4fefa5a1bff003b519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.6 MB (170603573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0490fceb6c01b7c50b4c50f55e6582b345dc958e743125dec020e8769ad252c8`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:20:22 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 01:20:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c957a1386d9824b1ee5ed9e07226f9d7b48ab8f1a3a753f82945df5c47e5792`  
		Last Modified: Tue, 18 Aug 2026 01:20:41 GMT  
		Size: 140.9 MB (140866630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e00daa12b8ff05f768e4bfece99cd245bd666fb5b4f051d25e9768a72c99296e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2588411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1da474eedbe6f1f5639d7a0c8ec25dbe0e58df3fe2665c64b7fa82f49e70e12`

```dockerfile
```

-	Layers:
	-	`sha256:925b13b11e9b8520e58c95b3a55bace4b99f62ba237252aa456e90c397b22fe9`  
		Last Modified: Tue, 18 Aug 2026 01:20:38 GMT  
		Size: 2.6 MB (2577041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b612a2f2f2bce9020c64f28017c8d176afe180ba740ba37eb59063653ef657bf`  
		Last Modified: Tue, 18 Aug 2026 01:20:38 GMT  
		Size: 11.4 KB (11370 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:0b010f3e22fdb76331fa9ed269d4e30fdf228e69defa4b7466056501744f9b70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167492199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f0060081ce93711eaa500d3ff04b0203259b16cd043f3b1cc99d9b5ae5d6dc`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:20:05 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:20:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 01:20:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87c49869b9027b4502918536eab255f4e4cec6f635378bab7aea1b65e9fb7092`  
		Last Modified: Tue, 18 Aug 2026 01:20:24 GMT  
		Size: 139.9 MB (139871746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:840b489ea1476d4b7f735ff9ff01059da3b0f00b3f9bea99d64806a3a6516713
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2588386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8825ceff36739d236ea42e475e7b84443051cdaf7a41fc24987402f3da1db26f`

```dockerfile
```

-	Layers:
	-	`sha256:61cfbfa345b60ba18c59f13be3dfa83c54ca2603feec1f726360f00789ed19eb`  
		Last Modified: Tue, 18 Aug 2026 01:20:21 GMT  
		Size: 2.6 MB (2576816 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88c73c4907affe7a5beb3ec83882ee1c76bb717ff71560441477439c05559dc7`  
		Last Modified: Tue, 18 Aug 2026 01:20:20 GMT  
		Size: 11.6 KB (11570 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jdk-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:515a6dcfefe1cac87ed840920cca83dc47c45494506fc918afe610eff4539492
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.5 MB (174543211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01809b7d8a9e3b22280bdffefb82aa62758a7b31c4f3881e712127e13bfc7bc7`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:32:39 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:32:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Tue, 18 Aug 2026 01:32:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a84eec7e78f7af135c21aa41722461de5892cbcbad8161d8d6cef06b4644bf`  
		Last Modified: Tue, 18 Aug 2026 01:33:17 GMT  
		Size: 139.9 MB (139905066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d406d16be0d03da2bcd21b67174993e8e6e09d572c33425f8472df799bcf7a21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2587453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc1e0e075e17cff8756ceae5ab947db54b5bf132fb100825d5e5fac98ba3ef68`

```dockerfile
```

-	Layers:
	-	`sha256:f2755db116b031038314de955b6d5d9b0084af6df2bac4497354fb8083245fe4`  
		Last Modified: Tue, 18 Aug 2026 01:33:13 GMT  
		Size: 2.6 MB (2575991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c29edd174bc24760beadc167856e371cc9b90d5cf3d01d9b6dca1b9ab3fcc87b`  
		Last Modified: Tue, 18 Aug 2026 01:33:13 GMT  
		Size: 11.5 KB (11462 bytes)  
		MIME: application/vnd.in-toto+json
