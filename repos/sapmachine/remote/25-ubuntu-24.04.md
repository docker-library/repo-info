## `sapmachine:25-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:c3a4027f2b09d273bc294071fd288b1ba57fe3d2f502f45a235b76e73ba56f8b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:aef2084174948eb666b31d5a2535e5074c98467a5924fa43f479ec1fb49a7fcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.0 MB (254952058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71bdbe09db0400a5746266b4d27c51e6a49ccaa36df97f818f9dd11d70f0a786`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:39:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:39:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Mon, 26 Oct 2026 23:39:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ac12d2369d216b89b0ddbc22bc9bd7359eae39c9f9006b6cee09268750d0bb`  
		Last Modified: Mon, 26 Oct 2026 23:39:24 GMT  
		Size: 225.2 MB (225184446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d0c7440949104ddc5844b2b749c208d25c3768f34b639b478058ac55c61f4f29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2615309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8481aa57179fffbb682783ffc90e58a1c207fa82e932fbc03cdfef4fb8eabbf`

```dockerfile
```

-	Layers:
	-	`sha256:189dcf666c50ff9bf51434dbe41424447cff72b87785ad75015d845d1a895d1d`  
		Last Modified: Mon, 26 Oct 2026 23:39:19 GMT  
		Size: 2.6 MB (2599657 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb0f5357634ca0885dda55a65d9e1e98f16fbd39581cc934648769ae0035ac2a`  
		Last Modified: Mon, 26 Oct 2026 23:39:19 GMT  
		Size: 15.7 KB (15652 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:21ba917519c02225f72f2f25a43ad039ebbba68c5a77e744ceb0c9d2bdad9d80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251889493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e266eaea8d6e5f3f6b2501f1afb06101e2da614661f0e31a952c6074657f711b`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:44:04 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:44:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Mon, 26 Oct 2026 23:44:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6050ec30e7f930bcbb8394d859632a3351412d22618e7ae99ffda8972973dc0d`  
		Last Modified: Mon, 26 Oct 2026 23:44:50 GMT  
		Size: 222.9 MB (222949367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2d6dbb397ccfff9fb4b5b18f10f1c4b0819763cefe16acd2ec3bdd1484072c50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2616334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c29e952f3c6a2c7ee825bd054aeb15df5a160fec9f5473591aecc6f8e48bf26c`

```dockerfile
```

-	Layers:
	-	`sha256:e389c0111785714774fc4b4774c7487be4546cbf362c7b3306f74be9bfca8fe0`  
		Last Modified: Mon, 26 Oct 2026 23:44:23 GMT  
		Size: 2.6 MB (2600350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8128b1eb21114a79c7c4f4721189afd1bd00f5e0f2e9b4e190cc55fde886316`  
		Last Modified: Mon, 26 Oct 2026 23:44:23 GMT  
		Size: 16.0 KB (15984 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:09cbbbe06da035b5757f7ddabc46da6efb450c742eba5761e3ef5c6addca2a46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.2 MB (256202200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57629bec202e55626e6f6aab227ecb1dc501b16e876d5b2e49f72c60a16f2e4e`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 19:00:28 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 19:00:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 19:00:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2eb2f968be428448b1ae16c2e2151a4523c5bda21926debd28fdb24d6d15535`  
		Last Modified: Fri, 23 Oct 2026 19:01:28 GMT  
		Size: 221.8 MB (221824210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:389561e8fbb0a0f6cc1986196d3ff554a494b0a5df63768e2568598674bc2e70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2612479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091de19bd8c2c61c1846b3f40d418271caae86ad092f9662c1ab334ab766153f`

```dockerfile
```

-	Layers:
	-	`sha256:4e7b098fab4bf86299a7424fcf976f20f1ed1182e99ab0d81704a48527fcb228`  
		Last Modified: Fri, 23 Oct 2026 19:01:19 GMT  
		Size: 2.6 MB (2596669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2171394127f71454797b8f7fd358864f9c0559b9d3c228e1bd7599bca2b199f9`  
		Last Modified: Fri, 23 Oct 2026 19:01:19 GMT  
		Size: 15.8 KB (15810 bytes)  
		MIME: application/vnd.in-toto+json
