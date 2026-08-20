## `sapmachine:17-jre`

```console
$ docker pull sapmachine@sha256:2a6e5c31a7f07fd1aaa0e7c0569987b4012bd78a58e2913bbcfd83c5b646db37
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jre` - linux; amd64

```console
$ docker pull sapmachine@sha256:55a29574dd54a15f2154b10d92fa16826f9bc844e27bc9936757672ac3f42a34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.7 MB (87749948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4677bbdb7bb9e9392252b091badbd33204e5d1553c3a41da1e57244b535c851`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:29:30 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:29:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 18 Aug 2026 19:29:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a6a2d1a9ec32b7f5ba91ac3d068d4dd7a7c4df3c1553b47c3187fa455f2143d`  
		Last Modified: Tue, 18 Aug 2026 19:29:43 GMT  
		Size: 58.0 MB (57997141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:45ea7a584c376f044a58c823f81f66b5360d08ad57969fb3b1e2c111994451a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2530788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c22e72a558dbe1d066182809930b85128fb624d047144a7133acbb58549d648`

```dockerfile
```

-	Layers:
	-	`sha256:bb38a616a57fa44b7830f580e0d18eea488c329de2bc915dd89793b1cc56a8ef`  
		Last Modified: Tue, 18 Aug 2026 19:29:42 GMT  
		Size: 2.5 MB (2520742 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc8f026e181df15a45ab9b7322e79b69720a9da3a5037f538bc922a8f497184b`  
		Last Modified: Tue, 18 Aug 2026 19:29:42 GMT  
		Size: 10.0 KB (10046 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:10d35a6041dabf5dba76c7fef593f5df88768af24b8ead6507fa7357b1b918b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.4 MB (86357840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc3b318e6ec8e008c13257575dc82eca7a2cf5570d21a83ea98da965b6dc2fb2`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:30:07 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:30:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Tue, 18 Aug 2026 19:30:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17f4437339b1001c2106e02ae38fedc45e203a03521a5c51987d714cc3f7c4fa`  
		Last Modified: Tue, 18 Aug 2026 19:30:20 GMT  
		Size: 57.5 MB (57470605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:dfd4c35dcbd22625c3408207c7b8275a63b5631df6cd706c44bb8338db4f6e1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2531455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ea0dcdb41b1a867ca965f3c6bd8a5cb0dfc87d76bf7be5231164dfd47f99bec`

```dockerfile
```

-	Layers:
	-	`sha256:8d72b9d7af5e5c9a4247402a6ad02eae4c703bb85f7ed3451a9ee86660364369`  
		Last Modified: Tue, 18 Aug 2026 19:30:19 GMT  
		Size: 2.5 MB (2521258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e9b78992d5e10dafc7c2f6a3c72089a5e44ad751acba67f7bcd2612893dd6e2`  
		Last Modified: Tue, 18 Aug 2026 19:30:19 GMT  
		Size: 10.2 KB (10197 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:b9357c7bf45bf5351b031cfee47f9cd95a75ed469bb6bc42c8118b4892760a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.8 MB (91841985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f090ea124067a2565e91812b79a7b4dd3d7264f6501772940baafa77ca6f538`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 22:42:12 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:42:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 19 Aug 2026 22:42:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0962e943d708cd006e1b13cb2c6a7ffb2b9edaac17447cd8ee5a0805a1ad8da1`  
		Last Modified: Wed, 19 Aug 2026 22:42:37 GMT  
		Size: 57.5 MB (57530790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c0e7bc091bbf61d3e2285a1e29ec7d727c14863bfe1fa070f449e01671f33ef4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2530354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b8088d22171a009e75b55b8a9e5f6ee341682e2f767019bda2270176151f4c2`

```dockerfile
```

-	Layers:
	-	`sha256:05dd5c284e23271a5639a14bc3c03d930853cd695e2a91e4c39e6458cfd56ed2`  
		Last Modified: Wed, 19 Aug 2026 22:42:35 GMT  
		Size: 2.5 MB (2520240 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52204367052aa94233c4875ebd308dd76d1d64fdd87a80333e30c948525e9aef`  
		Last Modified: Wed, 19 Aug 2026 22:42:35 GMT  
		Size: 10.1 KB (10114 bytes)  
		MIME: application/vnd.in-toto+json
