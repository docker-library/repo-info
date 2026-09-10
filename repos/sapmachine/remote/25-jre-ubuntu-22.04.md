## `sapmachine:25-jre-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:2fbc05986f049db9881288e189541f19902491894d3f172458615caaf256c38c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:2c20b739821b9c911cdbac1df795d5901865593cd98d1add21c813525574e3c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90261536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfef30b82a41c05a22bd0c2fe6f8259d68fbd89032704138faa24be4202c2529`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:41:21 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:41:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 09 Sep 2026 02:41:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c30c184850fb8209f84076c14eb45d27dd68e41e1371353fd90830e521fc4e2`  
		Last Modified: Wed, 09 Sep 2026 02:41:34 GMT  
		Size: 60.5 MB (60511285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:dc1241d9ba33053a194f50b15c9b736e93f45c88dd0557c2faf99fdf32c607e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2563971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce48115a5486d8b8ffec928e6428ebc26d0ceedb08b5705f1028e0d1a20752e5`

```dockerfile
```

-	Layers:
	-	`sha256:681d7cdf5b8a62a15d8f48cef36129213fa205f375a2d699c8a22b0a239a4000`  
		Last Modified: Wed, 09 Sep 2026 02:41:33 GMT  
		Size: 2.6 MB (2553787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fd8485b271871b8cb43743ec8cc46ec62d030d50b208b01f65b9bbb8b7212f1`  
		Last Modified: Wed, 09 Sep 2026 02:41:32 GMT  
		Size: 10.2 KB (10184 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:ceaaa87f1afa8d73dceb3c5f7de40403f4131ea43c7bdad9a42b7777e556c9fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.1 MB (87102646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47e898c3732fe624014fddc9c20d2118dd495ffd2bd049267ca7be0c7d582589`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:40:47 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 09 Sep 2026 01:40:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d800b1757e7ed3044d7f277da04d00b1327c5dbdb35d4f9d2c12db041ac7aa78`  
		Last Modified: Wed, 09 Sep 2026 01:41:00 GMT  
		Size: 59.4 MB (59419899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:489977e1eab3b82a7f9a65a83ed96a68c75689c1a5fe8174cd609ae3e227a2c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2563803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9ff66c91ddc75e7883a782bfea45208bbd1996845992484213411c51d9ecca4`

```dockerfile
```

-	Layers:
	-	`sha256:846445930d5757d0de55a582ba0915ab3fb57470535cf3f326bd4df8dcae3640`  
		Last Modified: Wed, 09 Sep 2026 01:40:59 GMT  
		Size: 2.6 MB (2553490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5545bb35f0ccc46721bbafef4d724aafd793b6e002cdb9139aaada5564b606c`  
		Last Modified: Wed, 09 Sep 2026 01:40:59 GMT  
		Size: 10.3 KB (10313 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:d501333e211de02d6e04c5948c556be5248e0c3fd9692afe930b76aa43d44565
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.3 MB (94334577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0811e20a30a3c3d11bd9be9265eb672f0556db5f5343e53c2f6a4df2237f5f69`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:57:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:57:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:57:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:57:55 GMT
ADD file:432b9684ec0569be2be149e91ac77c16c05d7cfbb3e9cfbb7fd24d3ec4e3542c in / 
# Thu, 03 Sep 2026 12:57:55 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 04:04:48 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:04:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 09 Sep 2026 04:04:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8084947db51e150a34ebb4af676246311fa28e22e6ec22e569f91b1d57b82431`  
		Last Modified: Wed, 09 Sep 2026 04:05:38 GMT  
		Size: 59.6 MB (59631898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:59edfda1f1ac018a92defda83cfd399c48a293888c24059a98417666063a6432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b8028853d8ed897035d7988cef9dbb2277ecc9260b9a4908b7d19bdb8c29d46`

```dockerfile
```

-	Layers:
	-	`sha256:2d0a315a670536811728dcf3b7b52a62197c296410a25e19da06bbc454db930b`  
		Last Modified: Wed, 09 Sep 2026 04:05:36 GMT  
		Size: 2.6 MB (2552701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0537a6bd778024163ff3acb5a0a6e534bef9c890da74d50759e5204fb7a1c250`  
		Last Modified: Wed, 09 Sep 2026 04:05:36 GMT  
		Size: 10.2 KB (10239 bytes)  
		MIME: application/vnd.in-toto+json
