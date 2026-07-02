## `sapmachine:17-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:f6bf9c1e12081a6591442cb23f91cca836d04c1472fb541b25cd535d006fcff5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:1c128121a1f54b39371c40d793ed99a2aaa7eab6bdf86f85f9ddda5852aa2bfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231362937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e545befb392df47427b4b5dbb2c3475a10ecd13a458bdddd86a6a3fb6a690683`
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
# Thu, 02 Jul 2026 02:38:56 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.19 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:38:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 02 Jul 2026 02:38:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf8a08f1df487e2d648cbc58fa1652c7be5cce306439b62c00e92ae071c06e9e`  
		Last Modified: Thu, 02 Jul 2026 02:39:19 GMT  
		Size: 201.6 MB (201624056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:acf2f704d8e983c41445753768791072432c2dd13a7d0ccb53c99ae3a6ff6d05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2641254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b87b4e51d881581d57d64006a09e816b1da09ab011e7b45faebeb3f2fb24111d`

```dockerfile
```

-	Layers:
	-	`sha256:987b71d0a4dd923fa8c0998dfab44c2ceb8fb9c1defc1aab30114b628435a8f5`  
		Last Modified: Thu, 02 Jul 2026 02:39:15 GMT  
		Size: 2.6 MB (2631160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46ed3b0467ec184298dcc4bf7c0b0fa14a33a7ef0b0efa480868885bb354734a`  
		Last Modified: Thu, 02 Jul 2026 02:39:15 GMT  
		Size: 10.1 KB (10094 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:c3796cc99bdb32ce18f4cd40082a6c244ebc8947f5f2f7425ce9c1d6da7edabb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.9 MB (227947592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8703b83fbe071c69fe4f5dfd375463e44a40887fec753a6837258e0280760206`
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
# Thu, 02 Jul 2026 02:37:59 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.19 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:37:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 02 Jul 2026 02:37:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe2746aeb20154ac6d7bd4160fab5bd5a2b729a723a81e0611ca29532b2a388f`  
		Last Modified: Thu, 02 Jul 2026 02:38:22 GMT  
		Size: 200.3 MB (200334408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ad29e2e8fd2b7dfa57645c43895772bccaa3be2d163709fab1ca571764e48754
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2641137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df40ad6e31f120ebf2e1cfb8eb0a820c1b0a52c33b6ef79ccbfd6442b6cb4262`

```dockerfile
```

-	Layers:
	-	`sha256:20677dbfb56e474b61e381652c7d9696f33735c963b41d2b43388fe2b3ad3acd`  
		Last Modified: Thu, 02 Jul 2026 02:38:18 GMT  
		Size: 2.6 MB (2630890 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b451e8855e93b955fa0a7154d5ccda21874cf61a8ba8d5ecc37db91d7cc9138`  
		Last Modified: Thu, 02 Jul 2026 02:38:18 GMT  
		Size: 10.2 KB (10247 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:98b3505ba719c96d0bc1704905a949b30d1364805d57fdb51a441f2da08591f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.1 MB (237102299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5d7c5110e7a9d53302d126ebeba9c1adc10cdc1e6796a962f7869e567aa1cc6`
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
# Thu, 02 Jul 2026 03:45:36 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.19 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:45:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 02 Jul 2026 03:45:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d95125243d5e9b896f342270fc0189dfee4bd893bc6108320c8bf9085110a69a`  
		Last Modified: Thu, 02 Jul 2026 03:46:18 GMT  
		Size: 202.5 MB (202460431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:be2b6a60a07b75ed75a612201a7ba835a3f2fa34beca08c25b3e6f330e6da1e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2638933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e95cb67750aa327d75c739f2aaab5a1ce8457008c1d0cb974861b380c9f98ca`

```dockerfile
```

-	Layers:
	-	`sha256:a8b69263f47cf55dfe6dbf05d2d5a5b2818e6be340ff8c38dff3c7da9b10d3a1`  
		Last Modified: Thu, 02 Jul 2026 03:46:13 GMT  
		Size: 2.6 MB (2628770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e81f4981e1cd3727951de936ff06df8bccf40e0c7560c9fc1c3e13c58715f01f`  
		Last Modified: Thu, 02 Jul 2026 03:46:12 GMT  
		Size: 10.2 KB (10163 bytes)  
		MIME: application/vnd.in-toto+json
