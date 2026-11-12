## `sapmachine:25-jdk-ubuntu`

```console
$ docker pull sapmachine@sha256:717dd0166445e46613a644c7d6031cb58035125010f02c92b44ce9d818cdac28
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk-ubuntu` - linux; amd64

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

### `sapmachine:25-jdk-ubuntu` - unknown; unknown

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

### `sapmachine:25-jdk-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:b2ed4618fceecb0f0d203e693341e81b89076ff83b43fb64461166d54192c473
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251919459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a74bff85919d3dee4e4cd3d0b4b5c385ea66e7cb02ef6c03235b6288e1aade84`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:43:08 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:43:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 11 Nov 2026 23:43:08 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f330687a255989e525083c4dcffb2e566165c5ba78ed6fbc4f9c806799e64bb8`  
		Last Modified: Wed, 11 Nov 2026 23:43:32 GMT  
		Size: 223.0 MB (222954201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:df557c45ea60e10308348ebb912299ef6dfe6e4b791b5d3f825ac559e97532f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2616937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e786bbb2509b0273b76def28f2f3cb31ed968d080e721a8cf3b2e2980b65e7b1`

```dockerfile
```

-	Layers:
	-	`sha256:386f4b442557add9c39cf1d25375e751a5f4df9b4c7126212f57723b0920aec9`  
		Last Modified: Wed, 11 Nov 2026 23:43:27 GMT  
		Size: 2.6 MB (2600954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2568711c412a4ee9a0828cffbf7eef5c4b098e4b7b503766442547e4d699518e`  
		Last Modified: Wed, 11 Nov 2026 23:43:27 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:3472f4ad018d58c36e929ea45f0d3d334628dc67f12310a355bdbdbafe5e83e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.2 MB (256207001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b532bbf14f509d37289fae4cb3af1468ddcec3ddabb20d17dfca3ce194177d`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 07:32:15 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:32:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Tue, 27 Oct 2026 07:32:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6455c63f3dee19f1ae99627b12970f53918f4c80434bdd9db29c2a9827491850`  
		Last Modified: Tue, 27 Oct 2026 07:33:22 GMT  
		Size: 221.8 MB (221828693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9191cc37cf07131c822de8bd567b469ba57668527c67bbd7c225e942dd914dcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2612491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c602c8690ae3380bd27d9326ac476c0ceffb036106196c886efdcbdbff0dbe1`

```dockerfile
```

-	Layers:
	-	`sha256:55d765dd8471428620c0d2a6bd87d5832718a05d15251c70db9b6d42dcf11d75`  
		Last Modified: Tue, 27 Oct 2026 07:33:17 GMT  
		Size: 2.6 MB (2596681 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea00c1f23c5a7dab313cb58f6aa6865a7cbaef1aff87dd754acff7ebcc6d4c18`  
		Last Modified: Tue, 27 Oct 2026 07:33:17 GMT  
		Size: 15.8 KB (15810 bytes)  
		MIME: application/vnd.in-toto+json
