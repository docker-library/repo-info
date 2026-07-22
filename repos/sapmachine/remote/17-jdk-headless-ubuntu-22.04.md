## `sapmachine:17-jdk-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:03752a18358aa2e7097dab609617711e968c2e6de1f885f083383ccf1b865fc2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jdk-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:a63bab8dd020cbba28c2004f455a3e77bc2972603d4b797202dc9a3363f38272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.4 MB (232442861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ec3822f834cf0ad144712d0c147f17c315d365605c0276dea604a88277fbf2`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:26:22 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:26:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 22 Jul 2026 18:26:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3531f7768d5007bc76d86657e7da59e564332feb625603db6ec1e289b9f0e1a2`  
		Last Modified: Wed, 22 Jul 2026 18:26:43 GMT  
		Size: 202.7 MB (202703980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3df09c1bad576967b0d4458cd027d7ff19443cad840cceb46d677813830d6d88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2386683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2a23851c645434e84a0c8e767d95ff7bfb50ae35eb4c3a1bb05f762511e5b22`

```dockerfile
```

-	Layers:
	-	`sha256:22afd5f9d2fd218fab1fb9b57c82e13ae1581f4b77625e7fdb503a84abdddd43`  
		Last Modified: Wed, 22 Jul 2026 18:26:38 GMT  
		Size: 2.4 MB (2377793 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc59e0b5e19b443fabc520ab50ee940350ef241019409a6bdf725da06e3b2985`  
		Last Modified: Wed, 22 Jul 2026 18:26:38 GMT  
		Size: 8.9 KB (8890 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:07a9ec50f28509453fa9d5f5502a81fe36688cd59d7f19e485653b88fee1e51d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.1 MB (229072181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73cb958d97bd22d613c080cb3fa7c8b4d59d7f500588939a818547a7ba666083`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:23:59 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:23:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 22 Jul 2026 18:23:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2223e6bb7882ed1bf64d8e39bc2ca2c95505ea4e150f99dc1deb1cf3dae5a8e2`  
		Last Modified: Wed, 22 Jul 2026 18:24:23 GMT  
		Size: 201.5 MB (201458997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ef55ae652bb4392994b97b0ef695b67a1025427c928b1361f1a45e780b4dd4c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2386458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9dc32728cb7b58786c1b694fa77e353a5730b430cf7c4d0439b0ae5516cf497`

```dockerfile
```

-	Layers:
	-	`sha256:3518edc4654eac3a291372f5a74d6f53c9d152b37a8045e9c561f3e642d89125`  
		Last Modified: Wed, 22 Jul 2026 18:24:18 GMT  
		Size: 2.4 MB (2377465 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:839d10b96d30946f73ea8d5bab7953a2ff36d452c0c4883d980e7f0f5e0661d5`  
		Last Modified: Wed, 22 Jul 2026 18:24:18 GMT  
		Size: 9.0 KB (8993 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:f5b5bd599708b6d8c0e327806a9f97d5e02ab14506b26213c5b53f7b8f822a3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.1 MB (236107421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cedaff13cf775f432729d52ce4e88ff767926e24bc855d1a4701046ba9c980ec`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 29 Jun 2026 10:35:02 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:35:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:35:02 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:35:06 GMT
ADD file:fe88ac7d2b59101d91924b906576ed0bd1506245791beb01e66dafe898d768bb in / 
# Mon, 29 Jun 2026 10:35:07 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:42:28 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.20 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:42:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 22 Jul 2026 18:42:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56eb537f1722fe00d43c9e4fb55ae6ed1c4dae077da24a13f14a6bad521c9139`  
		Last Modified: Wed, 22 Jul 2026 18:43:10 GMT  
		Size: 201.5 MB (201465553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a372d5caf3239a79b1308af02e94ae171eca3de704bfb0f211eb1064408ceb1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09ca42c48e6bedf2045243329a032bbd10de130c0b66043027404174b4d4de31`

```dockerfile
```

-	Layers:
	-	`sha256:a459e42eacf16523379e30a03ff86d4b166ac48d71091f16c260a51fbf7853f2`  
		Last Modified: Wed, 22 Jul 2026 18:43:06 GMT  
		Size: 2.4 MB (2375289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4e5af4c56cb42cb4d2d597a75fb8bca88c01be40894ce4352137d6c477181dd`  
		Last Modified: Wed, 22 Jul 2026 18:43:06 GMT  
		Size: 8.9 KB (8933 bytes)  
		MIME: application/vnd.in-toto+json
