## `sapmachine:17-jre-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:743abe6c5dd189650119a6d3b595b051de8144b6a7420699e32cccbeb5098406
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jre-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:f8bfe3d8437c5a2208221782436bfab54ee434bc5493f35e16f40c57a70806b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.2 MB (86179595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c45baee190c15f1b1ef388da64d9f7878eed9e6ed1a0da46672bcbae4c453743`
-	Default Command: `["bash"]`

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
# Wed, 09 Sep 2026 02:42:12 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:42:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 09 Sep 2026 02:42:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f87c8ef110d1080f6eefc2e2bdd439836268e493a8f3cfb83d70bd72947276c`  
		Last Modified: Wed, 09 Sep 2026 02:42:25 GMT  
		Size: 56.4 MB (56416342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7a9d0738e221f5d2d4ce09f46d3d98b97cabcc8cd1f07659c833b9aa9abf164b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2284679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c33fac37d06629e5d839bbb8b98ec25e3be4bfaa0792200aa52f93738a890938`

```dockerfile
```

-	Layers:
	-	`sha256:e2ae99c825e016716ef689a273c4fdef4e3ff62a9e313e1a469c5a3a5763c105`  
		Last Modified: Wed, 09 Sep 2026 02:42:24 GMT  
		Size: 2.3 MB (2273694 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f64e99e334884b3e8206600d5d16fa81203662ec8ddf285698a5a2576b9212ee`  
		Last Modified: Wed, 09 Sep 2026 02:42:24 GMT  
		Size: 11.0 KB (10985 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:e7df0aac5264ee07db78106df61bf57cea0985324bcbbb13394bc8ae6a4b48ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.8 MB (84828592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:602ff1e63cb68c4eb2df8f511302c64c61a30a4d40501079ba2c07b8f8869b21`
-	Default Command: `["bash"]`

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
# Wed, 09 Sep 2026 02:36:30 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 09 Sep 2026 02:36:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ff263ed08d67b85076b7dbc3a1326493077c344c184fe6ca78577f8337a3ab1`  
		Last Modified: Wed, 09 Sep 2026 02:36:43 GMT  
		Size: 55.9 MB (55888577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:367c65695e02242edac27bba78df707cfabc4ba87ead1422fb1d4a71b62a6da2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2285338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c29df15cd76b0f12cce0346a35378762b5cb27b29358ed2c3332323a315683fa`

```dockerfile
```

-	Layers:
	-	`sha256:a97d8be3866618cd968f633e6dfd6dbf4d2708fcc6e71b854f4ab4bcc9350423`  
		Last Modified: Wed, 09 Sep 2026 02:36:42 GMT  
		Size: 2.3 MB (2274201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10872c3d78c3a32bf87742422d60fbf28db37bb45337a296ed994d8b8b90a944`  
		Last Modified: Wed, 09 Sep 2026 02:36:41 GMT  
		Size: 11.1 KB (11137 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:11bbd2897ae62aeedfbd17014498648bd73264f06c455bd3ae4488671411d7e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.0 MB (90030948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a7a4e7f5629a99ad1764b4a6ff65ae7c277926c8e0057879dbc447ec32f00ae`
-	Default Command: `["bash"]`

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
# Wed, 09 Sep 2026 04:37:36 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre-headless=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:37:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Wed, 09 Sep 2026 04:37:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:830d9b8069bcabf43557bcfcf52bf6a8df7d1508e14bd39de243b33176d6d6e6`  
		Last Modified: Wed, 09 Sep 2026 04:38:43 GMT  
		Size: 55.7 MB (55654069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b5f6516d6ac6b3a453ba6fabbcb0cde57e99089317523b49876aa3619a0591d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2284164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9a19d353fbb003c3d3c1013d3923ceb2b14d7bc124e1e1ec4445f060d217ef`

```dockerfile
```

-	Layers:
	-	`sha256:ff2cb132ed38182c41d0d3a089fa09394d1fabae86e467d3cd8e4b7c9fc28268`  
		Last Modified: Wed, 09 Sep 2026 04:38:42 GMT  
		Size: 2.3 MB (2273111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4f7ab7a7d35798facd8f1636c40d515de3261b82311f6a3245331592e8716013`  
		Last Modified: Wed, 09 Sep 2026 04:38:41 GMT  
		Size: 11.1 KB (11053 bytes)  
		MIME: application/vnd.in-toto+json
