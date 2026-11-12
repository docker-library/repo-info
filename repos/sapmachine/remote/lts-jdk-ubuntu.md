## `sapmachine:lts-jdk-ubuntu`

```console
$ docker pull sapmachine@sha256:2180d4b697a8844eaec839fe796f7d71bc650f02b90cbc547770da9d390dc304
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jdk-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:570c6f3db3da3a5564c715bb6d30fdc738bf6c3f04cb29065297bcaaa1f1ced5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.0 MB (254978364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:457bb6124700208051e232477d6e4cd5f8499bdb1e9fbb45a155012f00d17bb7`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:40:15 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:40:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 11 Nov 2026 23:40:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98094bfcde55d109e0ac0cda69b74f8d8ca2dbb36e499acca4b74620e24805c5`  
		Last Modified: Wed, 11 Nov 2026 23:40:39 GMT  
		Size: 225.2 MB (225185141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:55fd01508f19e66d4a66c2399434c7057c1b2fe550c788fc19e975460eeb7ad8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2615912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e791129d21571f0b11ec2302dfdc23e7f029d7d467edd27448423e5b1942d603`

```dockerfile
```

-	Layers:
	-	`sha256:0c19c7d2ed589bfaca566e2fce461fe2f4f5be3eee69756d526f1f96b48dd97d`  
		Last Modified: Wed, 11 Nov 2026 23:40:34 GMT  
		Size: 2.6 MB (2600261 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5686f959bd5b3d123fe2c0a30b6b0da5c7b55f193405163e1e1f141d230a3e8`  
		Last Modified: Wed, 11 Nov 2026 23:40:34 GMT  
		Size: 15.7 KB (15651 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-ubuntu` - linux; arm64 variant v8

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

### `sapmachine:lts-jdk-ubuntu` - unknown; unknown

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

### `sapmachine:lts-jdk-ubuntu` - linux; ppc64le

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

### `sapmachine:lts-jdk-ubuntu` - unknown; unknown

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
