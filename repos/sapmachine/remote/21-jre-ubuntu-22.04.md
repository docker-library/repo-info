## `sapmachine:21-jre-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:740a164712988714abb2aae6e94dbaefd6a6c707768aee65a757fd29091c27db
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:3d765bbeaa15cdf90256392db84c33cbb4e364718175f05b00451f7cfd70ecf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.1 MB (93125608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b7692b788614a4ab08f5741642e817876bcca9e23a590ad8451981fda08a2c`
-	Default Command: `["bash"]`

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
# Wed, 22 Jul 2026 18:25:09 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:25:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 22 Jul 2026 18:25:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:396bf0106f48f1f69f30a4c7c9ba69efe9f8908896ec186ac008d87963eaf0e6`  
		Last Modified: Wed, 22 Jul 2026 18:25:24 GMT  
		Size: 63.4 MB (63386727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:51f0b45259979318aaebcffc35a40647e77102a455a3a07c72fe932d71ebcef9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2556709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17b5abf32dd69c28cae8f4eb5a43c49a12c5e249cc805d4b65be0a2b192dfd23`

```dockerfile
```

-	Layers:
	-	`sha256:9b2ecb14e4472473a41859179b68e50bf02ba0d13feb11eb1bd9cb2f774fbb55`  
		Last Modified: Wed, 22 Jul 2026 18:25:22 GMT  
		Size: 2.5 MB (2547935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:070c07caf5aceba3497071e9c813ba71a00ab209c9296526dfc40c22746a5abb`  
		Last Modified: Wed, 22 Jul 2026 18:25:22 GMT  
		Size: 8.8 KB (8774 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:2d205df246862802b3c3ea8495f7634d09f7d2cbb56c0774018ab8a00f1d1a15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.1 MB (90146208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3747e5e31bcd38d3802c1b0fc17c728c3c975409cd919cb4e07707442e4e0a1`
-	Default Command: `["bash"]`

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
# Wed, 22 Jul 2026 18:23:06 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:23:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 22 Jul 2026 18:23:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e3058ae30d2d2863d1f739dc12fefdd5d70167c1d9190488f1b28329f5ee239`  
		Last Modified: Wed, 22 Jul 2026 18:23:20 GMT  
		Size: 62.5 MB (62533024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ec9f781eef1b8a6ccec127ff8050bd14d1ce714e1c05ca2fb7b0a1d0082a5dc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2556495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:843eb1a378785fcd2c11c36eb1d81e648d7e4f2ecfabe81efc0276886449b8ab`

```dockerfile
```

-	Layers:
	-	`sha256:4360b0959fd65d08a842b2fe3084e57e48f5bda69f46ef68badef75a34ed24bd`  
		Last Modified: Wed, 22 Jul 2026 18:23:19 GMT  
		Size: 2.5 MB (2547617 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:918e1bc884dca276559247511b187dce6b99e361f29446e3e72a96803f6f7468`  
		Last Modified: Wed, 22 Jul 2026 18:23:18 GMT  
		Size: 8.9 KB (8878 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:73b697010171d1ac5c7c4421bc36c3aa413c65832ff23aae2cabeeb8e7283cf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.8 MB (97831671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5a7a8f05f3ff0a72fa7c209f8b2ceac2e3cdd9b69792eb93969ba6b3bb937c0`
-	Default Command: `["bash"]`

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
# Wed, 22 Jul 2026 18:35:10 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:35:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 22 Jul 2026 18:35:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d637f9b40963bd346406c7e2b461c7954fd9952ca2e73fa24d20a214284f0cb`  
		Last Modified: Wed, 22 Jul 2026 18:35:37 GMT  
		Size: 63.2 MB (63189803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5c88ab96bdc80ae8facd4690dc037204b3789b1cffe0312582f8cb9bca46685e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2556285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc9a11640da1e4358e74fd1998bbb0e0fae7899dd8b18cded88d6fa5a11e5f4`

```dockerfile
```

-	Layers:
	-	`sha256:db3c7ea305f70441e795dd1044dc7a56c64634e0bb649acaf463eda8035ab62e`  
		Last Modified: Wed, 22 Jul 2026 18:35:35 GMT  
		Size: 2.5 MB (2547467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f8c17493b917f33c5ca774fe154ce2349aeff028134dc7354bf0fe9ca67a574`  
		Last Modified: Wed, 22 Jul 2026 18:35:34 GMT  
		Size: 8.8 KB (8818 bytes)  
		MIME: application/vnd.in-toto+json
