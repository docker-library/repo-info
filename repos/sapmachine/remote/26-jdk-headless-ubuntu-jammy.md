## `sapmachine:26-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:154c02aa186720da772a2f55d58d7584fe818a22eccece138a2f963e4e0db123
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:77880b572313edce76f1a1a5e387b37be9d3197aebaeff6a198b3fd0b19ec759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169073386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d558ad548d10c3a3f58e4f4ab8df634708f5b456fc9c0f01fe08ff309f1b5dbb`
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
# Wed, 22 Jul 2026 18:23:28 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:23:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 22 Jul 2026 18:23:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6375c3e4fac6720507e13934c18f3159787d17e528e5ff52b783912a4f77af8`  
		Last Modified: Wed, 22 Jul 2026 18:23:50 GMT  
		Size: 139.3 MB (139334505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2711f52135ec951df2db6ceadfb928a942aa25da34409f5847cfcd79ab83dd73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2332672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83a62f98dd0bdffeab7be623c0873043a6b49b72b9a5239b7a4504b2daf74ab1`

```dockerfile
```

-	Layers:
	-	`sha256:60a73f772fc43542c13950f7491916fbccc18f0fcc0aff9660d80d8949c1e193`  
		Last Modified: Wed, 22 Jul 2026 18:23:43 GMT  
		Size: 2.3 MB (2323103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d0dcd25dc3eaeef644cbc65cda6d040c499136756c46919ec64b0fd633618a4`  
		Last Modified: Wed, 22 Jul 2026 18:23:43 GMT  
		Size: 9.6 KB (9569 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:61d86e58ed77e37171d3fd8e8f4017d09a265570c2eef6a429075d5f14b4bc24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.0 MB (165957267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b91b55b513aa8104f2d5f32dfca2fcea5ac563999ca727c897f97d9aef50411`
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
# Wed, 22 Jul 2026 18:21:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:21:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 22 Jul 2026 18:21:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c2e93d98f31d02e6d35571094acbcaa940f82be560948c9b913494b29508b4`  
		Last Modified: Wed, 22 Jul 2026 18:22:09 GMT  
		Size: 138.3 MB (138344083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0ca8c214a40467bfb2bac81ff78f1f9a286aa17e880177a49d433e7eb0c4165d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2332493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08ec54ee94f357beaecb0383267dd43bf4dc616a5367b5b7d0d5dfb89ff52641`

```dockerfile
```

-	Layers:
	-	`sha256:5fefec10cec7994d73e3f597f6cd9f6ebcd7e7da0d3a01a5f26d976327bca908`  
		Last Modified: Wed, 22 Jul 2026 18:22:06 GMT  
		Size: 2.3 MB (2322796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6aac2b9ac1e923260791df3bf690f6bd83d32d11786851ea6ee09af858c1903f`  
		Last Modified: Wed, 22 Jul 2026 18:22:06 GMT  
		Size: 9.7 KB (9697 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:1d032f4a8177703b98919ae92894e1192e9124bc59768b38269aada47d29df22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.8 MB (172806672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2241692517a722607e94440e79e380bf8859e5a11e9d8f92f36f7d93748ee1c`
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
# Wed, 22 Jul 2026 18:25:04 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:25:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 22 Jul 2026 18:25:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcdb4bec7db293355be1decda2399e184503bdb6adb879a704e2e6c69208614e`  
		Last Modified: Wed, 22 Jul 2026 18:25:41 GMT  
		Size: 138.2 MB (138164804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0088060e8f5fbc5eef4d6377a648e7108279c846a008157adb973e1279acbd5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2331552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41afd13aa2d67e8a9ee23fb2677d6960e6e48c8724f611c39d805106bf36fda1`

```dockerfile
```

-	Layers:
	-	`sha256:727efb518338eb00843cb44732c7f56b49cd63deb3da17f8706de184f331c2d7`  
		Last Modified: Wed, 22 Jul 2026 18:25:37 GMT  
		Size: 2.3 MB (2321927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b35ea8d0c27ef76f47b4154893b924ec7e0eaedb0de59788ce4df332e150b67e`  
		Last Modified: Wed, 22 Jul 2026 18:25:37 GMT  
		Size: 9.6 KB (9625 bytes)  
		MIME: application/vnd.in-toto+json
