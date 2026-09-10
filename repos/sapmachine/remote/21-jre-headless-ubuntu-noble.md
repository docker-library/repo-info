## `sapmachine:21-jre-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:1a64655934236ce34bd0b0748a6d69eb628ab616f11bf85c292680a6c3ca001d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-headless-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:692faa2fccd991f51ba8e4388488790b8159cb722506ad12f563d3d15c5aa0ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (92002053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d401df582b2a7b19ddb4d72ce36b5c1bb9559e563dfb5d6730fd0bd976a1752`
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
# Wed, 09 Sep 2026 02:41:28 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:41:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 09 Sep 2026 02:41:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e69a871c2f402a36f363531564bce19692a1daa45c3f406a522ef14e404e14be`  
		Last Modified: Wed, 09 Sep 2026 02:41:43 GMT  
		Size: 62.2 MB (62238800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4f44752b0d7cfdf0c0ff19dda290276b6ff11968f2f59bfc48ea8db5cca3d6c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2285685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc61a1ed057a2608ed08289707d5c8a3bc793722de43ec2403c8b1318dac522`

```dockerfile
```

-	Layers:
	-	`sha256:ec4fc3b1f01afa679f2018bfd8335f19a86b4879adb7778b064f69ab4fe9ee53`  
		Last Modified: Wed, 09 Sep 2026 02:41:41 GMT  
		Size: 2.3 MB (2274700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0864e7281a0215fb7228b0834242658719e7606afc8ac14f8413d331eac43dbb`  
		Last Modified: Wed, 09 Sep 2026 02:41:41 GMT  
		Size: 11.0 KB (10985 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:72be03a2910c0eb124d41961430cf86ac66ae73ac733b6d038d44f2b902f444c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90353939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f813ce017617ed014c4f913a9342e7e137372840475e273e1bb72b1476469655`
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
# Wed, 09 Sep 2026 02:36:13 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:36:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 09 Sep 2026 02:36:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd339e915a5864235e5ba951866a06dc82db6a4051de3833cee4c24bfd0c167`  
		Last Modified: Wed, 09 Sep 2026 02:36:28 GMT  
		Size: 61.4 MB (61413924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:355d7c0b8e805bc6b1d84c3f54fc3af6b24c47a76106ba9b9067914d6fee8fae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2286344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:572391764bd3a3fd3948e20024482e852f896db58ca3da77a418f8428aa4d158`

```dockerfile
```

-	Layers:
	-	`sha256:1a1ea8a6a1cd4882ddd282ad1e4ef8bf41ba714c49f0c3de5a7d2403df16436e`  
		Last Modified: Wed, 09 Sep 2026 02:36:26 GMT  
		Size: 2.3 MB (2275207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a6fae32e5860c541564dfc7818b544623c96c27e46c795f9c599d19a3d6df0a`  
		Last Modified: Wed, 09 Sep 2026 02:36:26 GMT  
		Size: 11.1 KB (11137 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:9fd31491e04d0e526362358c0dc5d433ee07555b8954bf76b3422f227b9e9208
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.2 MB (96223132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc9c9104b0e532e14c6a050d51bb90e65a985042a172a682d25848f9ab49a2b`
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
# Wed, 09 Sep 2026 04:12:49 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:12:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 09 Sep 2026 04:12:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9a1ca6ca7af4fb6416907cb0c0f288ca148bb99cb55aefbb57a99b98668cb7`  
		Last Modified: Wed, 09 Sep 2026 04:13:39 GMT  
		Size: 61.8 MB (61846253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a3b9bbb360b3808293cb4d4f2950733da82cf8621fb04295039cde9b873fb581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2285170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0424ff92bfcb2781834210a719326762b1bde421c44157746109ca028975f4f5`

```dockerfile
```

-	Layers:
	-	`sha256:0d3405525b756cebc44aa57f10e507f70cd775e9910ccf0caeb0cb170069b7ce`  
		Last Modified: Wed, 09 Sep 2026 04:13:37 GMT  
		Size: 2.3 MB (2274117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92105305749837c147e433fe8ce1539ba2d9cfbb9bc662885e12e3a56df0cd5a`  
		Last Modified: Wed, 09 Sep 2026 04:13:37 GMT  
		Size: 11.1 KB (11053 bytes)  
		MIME: application/vnd.in-toto+json
