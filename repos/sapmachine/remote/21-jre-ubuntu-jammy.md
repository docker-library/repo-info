## `sapmachine:21-jre-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:33f5cd7535c630fd26a319c2050385bd83896f6bb1c103a8e682298a25a1672b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:fa0daa2eb123b0cb8ef57a5cfb660f79067c296629e7453def30b2de75f8aa00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90188999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a24c87bbd1b41b36a56678d2018fcdd8fdc5f4f14b7b04c694a8cc41b255e625`
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
# Thu, 02 Jul 2026 02:38:05 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.11 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:38:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 02 Jul 2026 02:38:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da11796eb55e5897f9ed972720191abf813784e31179efadee12f653e94e2172`  
		Last Modified: Thu, 02 Jul 2026 02:38:19 GMT  
		Size: 60.5 MB (60450118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d974e18396a2734892e1844e1eda62a2ee04b8b749f89f0b95421887b976f32e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2556709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9bc2454c23e840a5d42cf6c2f585f73787764d0bf529e49a6c00e10fc8b45bf`

```dockerfile
```

-	Layers:
	-	`sha256:3d2255280157c9149a388a03d0c1fbe8d306376f1993081b591a86c990d343a2`  
		Last Modified: Thu, 02 Jul 2026 02:38:17 GMT  
		Size: 2.5 MB (2547935 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7695e3187811a9c32efed57c1c4498e47d3ebf2407e3b1d9f48acf95aee96f74`  
		Last Modified: Thu, 02 Jul 2026 02:38:17 GMT  
		Size: 8.8 KB (8774 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:7467b93b9957b72a9a1aa8c5b07a1843f7e7440566800379c0ba9c0184f00aee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87219866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ef16c846650d4f69ed3470bf8d56e561c08110eda130ce6b4f346dae088b1dd`
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
# Thu, 02 Jul 2026 02:37:18 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.11 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:37:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 02 Jul 2026 02:37:18 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29a8ca7b26427fe48b0a92884a108a7d782ad6f88a0f1aaa4c8e30dc31b6198b`  
		Last Modified: Thu, 02 Jul 2026 02:37:32 GMT  
		Size: 59.6 MB (59606682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0fbcc9178ad726a76b77fbc4bd94ff7fcd098553e731b87801b99736e08b0ba2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2556495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11977c21581f7bbaaeb24f9c4c40e9ce532c2aa9554518ed99176d31ff4ba895`

```dockerfile
```

-	Layers:
	-	`sha256:1b72f3b878af445a2fea51c20ae928eb83aba93eb2a1dd62e4afc5f351eaad35`  
		Last Modified: Thu, 02 Jul 2026 02:37:30 GMT  
		Size: 2.5 MB (2547617 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf3d95d006878c3dbb4568e79cfa91614fc9684b61c858d6fb2e99a2ccd04f03`  
		Last Modified: Thu, 02 Jul 2026 02:37:30 GMT  
		Size: 8.9 KB (8878 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:d5c6c631f9084cd7872da056381e93a6da6d07585726fdc4b58604efcf3517e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96326114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:348aa7538bbd83975114dd03b0f4b9b5c64c1a74dc889424aa0f0cd3da0408ad`
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
# Thu, 02 Jul 2026 03:40:21 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.11 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:40:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 02 Jul 2026 03:40:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7770783660770b30b5dedf6326e89f411ec9fd7bf02105bb96b5a6a95304501f`  
		Last Modified: Thu, 02 Jul 2026 03:40:53 GMT  
		Size: 61.7 MB (61684246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:001a159a1b495383fa8d07076ed184cd1f61f488d5d9e3cac025d22eac679df5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2556285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb5cebf50cbdae00b747f74e2286e939cf5149d32e7e03786482bf134597d92a`

```dockerfile
```

-	Layers:
	-	`sha256:447d4dc946dae86c2e8992241bdc0c97be32552f545c6690376f9fc9b5e63aba`  
		Last Modified: Thu, 02 Jul 2026 03:40:51 GMT  
		Size: 2.5 MB (2547467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9dde019dae168af5c13beddf3650be99bd353cb66f1b4c13109ac1d4bfa9b4ee`  
		Last Modified: Thu, 02 Jul 2026 03:40:50 GMT  
		Size: 8.8 KB (8818 bytes)  
		MIME: application/vnd.in-toto+json
