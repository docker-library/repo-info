## `sapmachine:26-jdk-headless-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:f02dd15633287a31d4ce1316faa53f0aab1b76f6e573b23b8e7153281e0e31e0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:26-jdk-headless-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:90cd372e3f2dba1d235ad0c11aa1c8448c2d2dd02bdbdeefd4c9e70ff828cb6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169548433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e43fd4cf78375edcfda8b8b1d15a577ce5db00d93dc04482136f830ef6776e6`
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
# Wed, 09 Sep 2026 02:40:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:40:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 02:40:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e80be89c97154a9987a3443b28f0649432eeb0ba40c1a600d3b258ea404785e0`  
		Last Modified: Wed, 09 Sep 2026 02:40:19 GMT  
		Size: 139.8 MB (139785180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a71c92f5907b35b3dac04ca6611459786c7fda7c0ceab16613d4ee4bc4ec43df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2314872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed5082116d71582ef6a2fbb5c7d8d8c81d448ca6cb62fc4d4cfcfd8b76379da3`

```dockerfile
```

-	Layers:
	-	`sha256:92ebe6231bd6890f2af4762e3ffa2553824e13ed113ab11d3e79a1beb39ea6df`  
		Last Modified: Wed, 09 Sep 2026 02:40:16 GMT  
		Size: 2.3 MB (2302558 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cb83d520727f1233ee31b38a3f63ed6d062adf426aa15b8dc8ab24cdfcd5b84`  
		Last Modified: Wed, 09 Sep 2026 02:40:16 GMT  
		Size: 12.3 KB (12314 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jdk-headless-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:1a5b85238d572b4fa19c2ebf9267e9f3b869544276dd51981c78b9b44d3a6a5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167773074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40cbf201ff09b9c172d78dab7802237638a02c97cd4a0227a2cfb80454cff8c6`
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
# Wed, 09 Sep 2026 02:35:16 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:35:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 02:35:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4c289035b5e5e750ccfd00bfa74237313e0bf0b96a3fcd68b7eb3a3b960f7e`  
		Last Modified: Wed, 09 Sep 2026 02:35:35 GMT  
		Size: 138.8 MB (138833059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c41da3f828e3b092b27147dcf18317eba41665f49d683f1bb76a468486d83bab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2315625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:578a8b90299d539134093d5017e6e981d57b40629011a21ad8da7e2b459b38c5`

```dockerfile
```

-	Layers:
	-	`sha256:7053d20a913260e7c633717c3b1a6cd0281a275ede15aad91286edf4d01cdd79`  
		Last Modified: Wed, 09 Sep 2026 02:35:32 GMT  
		Size: 2.3 MB (2303110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:671bda58d2be11e132902ccbe81aafd2a2139369d1b615b518f70a8732c22458`  
		Last Modified: Wed, 09 Sep 2026 02:35:32 GMT  
		Size: 12.5 KB (12515 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:26-jdk-headless-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:1b0fbd2546ffa65770063678918b6fdb495b0d65f914ab292a59c96b0b74b3d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.0 MB (173023414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df11d559cb569affe9b56e31efec7619f7c8ad23d029895f84ce62bc589e74c4`
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
# Wed, 09 Sep 2026 03:44:57 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-26-jdk-headless=26.0.2.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:44:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-26
# Wed, 09 Sep 2026 03:44:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:692ee4731f6ceef33cda8435f5d9daee9b76344a25f18baed24adb1ccb2c63e5`  
		Last Modified: Wed, 09 Sep 2026 03:46:22 GMT  
		Size: 138.6 MB (138646535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:54732678cdfacd13b23187a24ee32aedadb15996431f9213ee3dea8b5432ec01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bd4516d687c013f4d364f7c8be187d7734f1b686b05c0977ad57165aa17238a`

```dockerfile
```

-	Layers:
	-	`sha256:b151635c2f2334eb5c513ea06daa2551d7535bf48a8b30db1cc56faa44204baa`  
		Last Modified: Wed, 09 Sep 2026 03:46:19 GMT  
		Size: 2.3 MB (2301369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebfb55318fec20e9c6029d6e6dcb0133a621eaa386234fb6eccbf4325d18eb52`  
		Last Modified: Wed, 09 Sep 2026 03:46:18 GMT  
		Size: 12.4 KB (12407 bytes)  
		MIME: application/vnd.in-toto+json
