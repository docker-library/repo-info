## `sapmachine:lts-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:f21608cbb4c3938dc221a2ed57e493b75507709bc11773610c0b1d0312a81c40
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:b5821a91f9669ace0639c81e0ac40816a99451322de67fcddc5217c9c060acf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.8 MB (254820678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:492334dc3ded67881ebb6a5c3be47b852bd9fffa97e53fb4a4c4f08afd10b0cd`
-	Default Command: `["jshell"]`

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
# Thu, 20 Aug 2026 18:05:55 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:05:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 20 Aug 2026 18:05:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5aaa95a697cd047e277816c5f0ae074acc49ad40aa9a2eff5d14ce4e2315fdd`  
		Last Modified: Thu, 20 Aug 2026 18:06:17 GMT  
		Size: 225.1 MB (225067871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0927ab8468079aa7d0bf0ce86218d9da2547f49fa0b0a05a3b77e1a5974921ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2615169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfc1f72b009a8f49c2d4000eadd03eab64aefa3eaabf33dee1e4071a5e178792`

```dockerfile
```

-	Layers:
	-	`sha256:2f8b6b2c2b02e2024862615ae4010e47ee26e6493bd210a235442f5d0197ccf1`  
		Last Modified: Thu, 20 Aug 2026 18:06:13 GMT  
		Size: 2.6 MB (2599555 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8d4b56466360aeb73f4db876cab869f6d72ab3bb9c1a0eb39d4db1324072224`  
		Last Modified: Thu, 20 Aug 2026 18:06:12 GMT  
		Size: 15.6 KB (15614 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:c7480f1e593f2072b73e9381490e2ee48271902843b8731f954fd5fea675a014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251729407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db8aba81c4dde134dad7661b50765e2d985d928bb29a2d5e613db5a91ab2ca55`
-	Default Command: `["jshell"]`

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
# Thu, 20 Aug 2026 18:02:51 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:02:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 20 Aug 2026 18:02:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb5116dd2b92b1a8dafb9880122a14bcace6a1cafb3969cb3ec3eab936e13d4d`  
		Last Modified: Thu, 20 Aug 2026 18:03:15 GMT  
		Size: 222.8 MB (222842172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8be4a355cc287667cd25eec3c8107cfa940500285411a43f2241c0530f5bfaf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2616193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:022bea05a328287d79e12214e12762cdff8f8f1d2ad2fdd58cba1a6506cd7f2b`

```dockerfile
```

-	Layers:
	-	`sha256:d0248e17fb5409c5760060543fb12d957b866e8e8c4b12ef4baf5d047c226b48`  
		Last Modified: Thu, 20 Aug 2026 18:03:10 GMT  
		Size: 2.6 MB (2600248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:145e57eb9709e9b594aaa71e04ccfbfacd84625c491c388712a1c96ed130d7ba`  
		Last Modified: Thu, 20 Aug 2026 18:03:10 GMT  
		Size: 15.9 KB (15945 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:42bd2048bce62e8fa2848d538c90debffef2aa8217176c2d29d41db4957444ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257623993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e719ed4f79634a4ffc700a3663f3117bd0599cb336a2205be34581c3e23d6338`
-	Default Command: `["jshell"]`

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
# Thu, 20 Aug 2026 18:05:37 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:05:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 20 Aug 2026 18:05:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:188479c817c009975c24d6b91257b6b28a7e73dbfdf5563581fa65bb6240348b`  
		Last Modified: Thu, 20 Aug 2026 18:06:20 GMT  
		Size: 223.3 MB (223312798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b070fd4f7defa830ebf364d3d6ef9713524d890821b339628da25bc613d986fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2612351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:123018d456d416e9f1f79219d2bdd527bc609639d1f13ec5f14aa666bea89c2e`

```dockerfile
```

-	Layers:
	-	`sha256:c4e4d46644dfb127621cc946f3d536d9b735955c580edbcd996ab27eca76d55e`  
		Last Modified: Thu, 20 Aug 2026 18:06:15 GMT  
		Size: 2.6 MB (2596579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6c8e1fe2af43513102965eceb4c4cea84ac423ca2f111cbff1acbe0a1371591`  
		Last Modified: Thu, 20 Aug 2026 18:06:15 GMT  
		Size: 15.8 KB (15772 bytes)  
		MIME: application/vnd.in-toto+json
