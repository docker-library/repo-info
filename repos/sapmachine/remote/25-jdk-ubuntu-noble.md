## `sapmachine:25-jdk-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:c5889481876d10c757aa4deab3584ff17fa041e6db72171987d1db8c3f43d1b5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk-ubuntu-noble` - linux; amd64

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

### `sapmachine:25-jdk-ubuntu-noble` - unknown; unknown

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

### `sapmachine:25-jdk-ubuntu-noble` - linux; arm64 variant v8

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

### `sapmachine:25-jdk-ubuntu-noble` - unknown; unknown

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

### `sapmachine:25-jdk-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:3ca0d08a9fa630e6c4b2ca15fbf38108f83845cd7046c3f9430f6b2bbe77bf2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.2 MB (256236439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4982b432f9c7bccaf7cffbc53662881ad2db1cedb7390ad59f99ca213188fe4`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 04:56:39 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 04:56:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 12 Nov 2026 04:56:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74810fadf7e0418607027bd81cc6025ccc9c0d4e431c1b3a8639c72f0c6bd197`  
		Last Modified: Thu, 12 Nov 2026 04:57:54 GMT  
		Size: 221.8 MB (221829928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:f7c99683a09d1c4263ae2df0525aa2e71e680c98a586d3a0f21999d12ac9c5d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2613094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a9bad407e2ad09ef04714d1821d3dc6f766b73c3d658d99f877c4fbc475236d`

```dockerfile
```

-	Layers:
	-	`sha256:1bc4814275e4946d6b06d760f9e257f709db7542adfaf2cd26cff58e604385d8`  
		Last Modified: Thu, 12 Nov 2026 04:57:48 GMT  
		Size: 2.6 MB (2597285 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7007ae7b70f96ab65d8ec48ea1822257a27373acbb47c55ece6a08371afef2ad`  
		Last Modified: Thu, 12 Nov 2026 04:57:48 GMT  
		Size: 15.8 KB (15809 bytes)  
		MIME: application/vnd.in-toto+json
