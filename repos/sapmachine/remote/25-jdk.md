## `sapmachine:25-jdk`

```console
$ docker pull sapmachine@sha256:4509d8ea4562504c4277322bae345ee5772386fe8e0df28dd92919e1fdf831ed
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jdk` - linux; amd64

```console
$ docker pull sapmachine@sha256:20adb81278ce02f978f611bd4de1c602ae332bd1f1330e38929a25825e02c650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.6 MB (168610428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f7cfb7bd4a6f7e64e48496bac9e0cad8c1c5f36a09d65a6c6a18d46b72cbc0`
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
# Wed, 18 Nov 2026 16:41:14 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:41:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 18 Nov 2026 16:41:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4726b6ca5fa5a35359b5ca63ab186b23cbb5dc1caf8f1d897dcb568285094e`  
		Last Modified: Wed, 18 Nov 2026 16:41:32 GMT  
		Size: 138.8 MB (138817205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d7d3091f01c8cceec566ad4d39feb5347362272176a122aaf50bb00087b0a6e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2571272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c395e78972caedbc9823fd731a24b44d54ed48325a12531bd89e897d2eb3a987`

```dockerfile
```

-	Layers:
	-	`sha256:ce448f235633bd648a2ef58f0f4c0eb391de35204a79cfeac530c856273b293c`  
		Last Modified: Wed, 18 Nov 2026 16:41:29 GMT  
		Size: 2.6 MB (2555658 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5c352bfcf5c374e452330d579b3366e924ddb4b39b50046891dcbd56ade194b`  
		Last Modified: Wed, 18 Nov 2026 16:41:29 GMT  
		Size: 15.6 KB (15614 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:466e13c06e16a8a345714a7cfc41f04c6a8bf5f53538d8b8eafae02e018688a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166771928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:921c079f88977064e24ccd786dfa856e47a867cca093057d07b4e626e149f150`
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
# Wed, 18 Nov 2026 16:39:04 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 16:39:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 18 Nov 2026 16:39:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f246288610f97c00bf6c57831d3fd888f1408837233426f9792baa05c74f2f`  
		Last Modified: Wed, 18 Nov 2026 16:39:22 GMT  
		Size: 137.8 MB (137806670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:611bfe44d856f5dabb35f2e584d503aecf5506364cb554aadc502c03085a827a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2572297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4402a71098ec54b267aef01aeac316cf1c5d4b46f46346b88f292982d1697c4c`

```dockerfile
```

-	Layers:
	-	`sha256:145f8cc55dfda84ae5f65ca4dad2f107dd0f167a943d3068a6f9f44e79de5482`  
		Last Modified: Wed, 18 Nov 2026 16:39:19 GMT  
		Size: 2.6 MB (2556351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9a23a225334c1095e19f31e49dcd29ff327c0109c5a048a256dd8fdc1e2f8b1`  
		Last Modified: Wed, 18 Nov 2026 16:39:19 GMT  
		Size: 15.9 KB (15946 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jdk` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:20c4abda009e36ad064673bae3910981aab25021f934238c30bf2ca07bcff20e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.1 MB (171096219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79841ad6f8fb45a76139795f3d11ee57e389d01b3366427502765ffe3dd94ab`
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
# Wed, 18 Nov 2026 17:02:21 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 18 Nov 2026 17:02:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 18 Nov 2026 17:02:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1dd64019a71f2d2545342749baaa88aec0f8348c766c69dd0041027df0c889b`  
		Last Modified: Wed, 18 Nov 2026 17:03:03 GMT  
		Size: 136.7 MB (136689708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b790c24d9621a96f22fad3eed689d8a235c1dfc68f5940c12bf0d989daaa971a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2570388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91181fecdd6133e2fc9d5e42c1268291404dee7951396c17efff622bd93046f6`

```dockerfile
```

-	Layers:
	-	`sha256:241a951cbac279691068ce75da93805c561bbe96c09e9055cb3e69b6ac1a7f1f`  
		Last Modified: Wed, 18 Nov 2026 17:02:59 GMT  
		Size: 2.6 MB (2554616 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81e9995967352118bf2c25d90faf86b2e3e49df7cd2cce4b360ed3aba2eae24f`  
		Last Modified: Wed, 18 Nov 2026 17:02:59 GMT  
		Size: 15.8 KB (15772 bytes)  
		MIME: application/vnd.in-toto+json
