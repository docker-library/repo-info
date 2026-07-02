## `sapmachine:26-jre`

```console
$ docker pull sapmachine@sha256:5c03f8779c72a68980387de98b152ebdc63ab0f3c0a379d0de662594462e7e18
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-jre` - linux; amd64

```console
$ docker pull sapmachine@sha256:ce19f9601582c45a78ce5e13342b52f710487234075ceb07fd463c590fecb054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88732851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22603e9c3b830dddec76cc8f1a40cb18efe1e95f35def344c58c42e1066f2e06`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:36:28 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:36:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 02 Jul 2026 02:36:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aa4988679857068fbe6534709224579f33c5fa0f5cb4bce6221a575fe101534`  
		Last Modified: Thu, 02 Jul 2026 02:36:41 GMT  
		Size: 59.0 MB (58997250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:389303c9689504393fb58561c90d49504805ac879cf5ccea424811c94d6f664c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2537516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:606c93f1f771027b975083d91cc27397225d0f8790f6c2bc1faf1beb8b2884a9`

```dockerfile
```

-	Layers:
	-	`sha256:a1b25a8dc3d8577d885142af31709532c2be1e4b7bdba06701fdc3bdedf9ce75`  
		Last Modified: Thu, 02 Jul 2026 02:36:40 GMT  
		Size: 2.5 MB (2526214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17d91b63390de826d7e59cfec27f45ae61e354eb9feeb0fcb1b6ba91d979032c`  
		Last Modified: Thu, 02 Jul 2026 02:36:39 GMT  
		Size: 11.3 KB (11302 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:0e6222ba5c0042ede0de8d9398ae311071e42249ecc33fc97575bf93e786dc02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86910015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd0cc8191ca04fffdbf087737fc04a152af1c0ceb6118e1e36f17b94c0ec35b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:35:22 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:35:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 02 Jul 2026 02:35:22 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b212eb369f8646700c2c6a7f52d9983bc81d1c0060669dc7b54aef421ba0ce46`  
		Last Modified: Thu, 02 Jul 2026 02:35:36 GMT  
		Size: 58.0 MB (58025835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a600c9f6008df1c71aa77c57de1c4a1b43399d438e38da9b1b9dd4dcb053495d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1dccae42d52cac9778f87fa53c7e4e5a3dcd5c8d3b0599a7c185bcbed8c923`

```dockerfile
```

-	Layers:
	-	`sha256:dc9f9d0baf4dc219c360fc840462b35760875d0986ae91f65961594f1ab6fcab`  
		Last Modified: Thu, 02 Jul 2026 02:35:35 GMT  
		Size: 2.5 MB (2526775 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aacaaaee45f66819a70a12b3bd0b6cb80516de9bf8da358b51ddfff770190e80`  
		Last Modified: Thu, 02 Jul 2026 02:35:34 GMT  
		Size: 11.5 KB (11503 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jre` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:623cf6a0069efcc5bc6fb590c0c2ea441e4d1adb8bff144ac7c1d062c987efb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94489972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c30613f99c785a5df8d112bea37376d9c0c0010a932bd26f326b1861be1199`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 03:23:43 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jre=26.0.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:23:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Thu, 02 Jul 2026 03:23:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d926fa6dbf01bb78a37c71735054ae8b541e542581ba4f9586677d4e28e0c6e`  
		Last Modified: Thu, 02 Jul 2026 03:24:13 GMT  
		Size: 60.2 MB (60176496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jre` - unknown; unknown

```console
$ docker pull sapmachine@sha256:64b8fbb2f348820432c451a354f5881b48b92961f7212df06ff15e3b0ea2e8c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2536501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52f6d9b077b8f2f5ee31b295d5a3476ea495c128e64d80d2d403eef8b3a4444`

```dockerfile
```

-	Layers:
	-	`sha256:5dfa5ddb2635112829e6cb60988c79522c59f119744ac3565e084bfc74fb4d70`  
		Last Modified: Thu, 02 Jul 2026 03:24:11 GMT  
		Size: 2.5 MB (2525106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60a6f4687154029d9fc11bcdcc61837a8f74630d7842dd0eeb86a3edccf998b3`  
		Last Modified: Thu, 02 Jul 2026 03:24:11 GMT  
		Size: 11.4 KB (11395 bytes)  
		MIME: application/vnd.in-toto+json
