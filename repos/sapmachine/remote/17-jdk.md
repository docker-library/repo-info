## `sapmachine:17-jdk`

```console
$ docker pull sapmachine@sha256:a58b46f3645687cfbdc0cb6be89b7053a8ef1f6148d248fee92bbd42a889f50d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jdk` - linux; amd64

```console
$ docker pull sapmachine@sha256:0a85a4d455c79dc1c1a211970c92536d21c6e4a51139d6d9300510aff8de1281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234932219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:198993ec2338066e241aa4679fa394e1d7650d38720f94ae64524ae5f04e6fdf`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:42:33 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:42:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 09 Sep 2026 02:42:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfc82e724604623be37a8c38b924d557667a62d8b88739e24d0b83dec4ce0187`  
		Last Modified: Wed, 09 Sep 2026 02:42:55 GMT  
		Size: 205.2 MB (205168966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3045ba5d381ea77bd6eeddebbc2c009d113cb688307a589e2777a5db809ca8ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2619639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2764d43116bc153d26c62585d567af142a262a15df0aab5a51954c81675e03a`

```dockerfile
```

-	Layers:
	-	`sha256:9e21c1c0ba0c6b75e37e499b0a60faabc4d6379c0edf57387b9cff9964d4222e`  
		Last Modified: Wed, 09 Sep 2026 02:42:50 GMT  
		Size: 2.6 MB (2606260 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51a9a1586d71a44d72b39636181b70825ab7d22610145ffc52eaa271e3a1a2b1`  
		Last Modified: Wed, 09 Sep 2026 02:42:50 GMT  
		Size: 13.4 KB (13379 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:5104538665e1aa3e6f5270c62852e8efbf13f2c8fa31e3c1c5a3e48eebd09481
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232888846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cf7e38ff99223587df1477874c93ebbf8b0bedc6fb609dfa5885b374f57966f`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:37:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:37:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 09 Sep 2026 02:37:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5de6ff2e2210ec82be3ac2fa1d1ef5f80452620a597b6464c9a42a8c6a48925a`  
		Last Modified: Wed, 09 Sep 2026 02:37:24 GMT  
		Size: 203.9 MB (203948831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:6c7495670fd9f1270ce54a9f2525532b1d4afa174a139203d2fa779de144ea8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2620498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d143bff97d781f11c78e9d22b56fae6a3abdd78f6f3222310b1e30e754b8a63`

```dockerfile
```

-	Layers:
	-	`sha256:ded8368e23186297dbe5bab9bd9999e3037609e8f214e1c519de38d13c59101a`  
		Last Modified: Wed, 09 Sep 2026 02:37:19 GMT  
		Size: 2.6 MB (2606872 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:042107f8e658aed33ad05b08925b7a249e8db480d54ae241243c7c205137fbd4`  
		Last Modified: Wed, 09 Sep 2026 02:37:19 GMT  
		Size: 13.6 KB (13626 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:67f3516178f2bd3b906c706f203d69073aeb3f5360dc9093b23632e7a48ed446
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.7 MB (238674392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0621465bc94ba54badf41e5541e35f695162f3d6a55fab76a822ba8f0f1c7aa`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 08:36:59 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 08:36:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 09 Sep 2026 08:36:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:024615285ce808c350ecdc3d8ed2251a1c9be59f4eed757151b55fe88856e422`  
		Last Modified: Wed, 09 Sep 2026 08:37:45 GMT  
		Size: 204.3 MB (204297513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk` - unknown; unknown

```console
$ docker pull sapmachine@sha256:119246def43fa27de676f1d5ee8a73a126fce0c0d13dc054f20a5834a2f67959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2617355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f131e464a0e8e079e641ce7b2b2eb326b5335f2e3d35fe1ae1ef4d83dd9361e7`

```dockerfile
```

-	Layers:
	-	`sha256:381f109db2228bc331a8ac4fed10c29db77ab2358b78a9137e7f99b115cb3a59`  
		Last Modified: Wed, 09 Sep 2026 08:37:41 GMT  
		Size: 2.6 MB (2603860 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:116d154242a5dea241c21c4108d2c8812a754472e2451eb0f3516c938613a66d`  
		Last Modified: Wed, 09 Sep 2026 08:37:40 GMT  
		Size: 13.5 KB (13495 bytes)  
		MIME: application/vnd.in-toto+json
