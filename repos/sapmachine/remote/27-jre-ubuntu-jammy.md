## `sapmachine:27-jre-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:c5b0bd38ff43eadf001158c0c94c695fa6747bf511eb590f926fa13a048dd0ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jre-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:ca717f14062baccb9a37e75efc2901494547c6b128c9c8f4f81fe81f70f215e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.6 MB (90567791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab5e97982169b99c2ec375ae03bb4a2280e3f3d3b83106d90e845dde62882ff`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:31:39 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 20 Nov 2026 03:31:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bce10a1cb1c252d0eabb5e9948ced71823d8251d9ad6e9d9de2cdbd82468bad8`  
		Last Modified: Fri, 20 Nov 2026 03:31:53 GMT  
		Size: 60.5 MB (60497976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ab80cb918a3ae422174686d8bb961c301254c75d6416705d71311057e1344eb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf19121f2eff8a394a80c044c3056da4e7c4fe86e683555b93758687dd75a5d`

```dockerfile
```

-	Layers:
	-	`sha256:c9b766c73a76e0c79d459058a3b7e2c5857240993a28b22be0ef6914b811c293`  
		Last Modified: Fri, 20 Nov 2026 03:31:52 GMT  
		Size: 2.6 MB (2552564 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ab63e2a81c36904065a559e5bde7aa570f0f9b60f3dfcb49be542a912823862`  
		Last Modified: Fri, 20 Nov 2026 03:31:52 GMT  
		Size: 10.2 KB (10169 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:9112ff56c74d54a7f009549537a0ac0e34c67e37b6a81d31e42dcdd8bfebfce0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87502389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a736710f24555ff24bd7263ab48751a9a45f921ff6ba1c7d01f1b22856163c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:33:30 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:33:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 20 Nov 2026 03:33:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1d6da0595017850da458f369ce3449dd9358d5abbba03f7137bf9ba5a11823`  
		Last Modified: Fri, 20 Nov 2026 03:33:44 GMT  
		Size: 59.5 MB (59500988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7f8d184a1dba2e5243439e220e8366bcab4d86dcf723140a6d8b1ef2316e6e84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af7156ed90d77f7534a9e5f01f93a3fd7ffb77c9bb5b71c3c640cd3f3738e96f`

```dockerfile
```

-	Layers:
	-	`sha256:6d180eca53ecc4b4ad66db7849b3eb69fe164c50b9d88df6a3535187478b6b7a`  
		Last Modified: Fri, 20 Nov 2026 03:33:42 GMT  
		Size: 2.6 MB (2552267 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a00e751edbd19a4e6e879cad22ca4b75ea37b655a8c43524077caeb39cd73838`  
		Last Modified: Fri, 20 Nov 2026 03:33:42 GMT  
		Size: 10.3 KB (10296 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:1b32df810d99692bb13ccee1f27fd816278afbb28357d255b754c02f2964121a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.8 MB (94786291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c149613314f76f394186685095e6b068bf2ed32b10e76997344466b5a01965a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:20:22 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:20:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:20:22 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:25 GMT
ADD file:864e29ad8b1d92dce321e0401fe4ef4bbac836267e9967e73cb6394dc831cccb in / 
# Tue, 17 Nov 2026 09:20:26 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 05:13:40 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:13:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 20 Nov 2026 05:13:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9804e375186303552a81eb396d737b0147d193d4c91b130b2d26bf6a7c67c33a`  
		Last Modified: Fri, 20 Nov 2026 05:14:08 GMT  
		Size: 59.8 MB (59764629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d07b16599f183f5ed6e15ab127b68dca0d068d7fc4ff58e1fcceba3ec7ec287b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302cbf92e7ac60c632be5eedaa4b598a3f6fe87feb33bfd10d4492c84307cedf`

```dockerfile
```

-	Layers:
	-	`sha256:a5a065d11ede3bdb3ac1b39047ed4b9a4edc5a590cc2466ed4ded8ab168f762a`  
		Last Modified: Fri, 20 Nov 2026 05:14:06 GMT  
		Size: 2.6 MB (2551478 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53fdf5034ec8ee59d63f9d99206f67e7a02655b9acd97e31dcd628f2fda0ca71`  
		Last Modified: Fri, 20 Nov 2026 05:14:06 GMT  
		Size: 10.2 KB (10224 bytes)  
		MIME: application/vnd.in-toto+json
