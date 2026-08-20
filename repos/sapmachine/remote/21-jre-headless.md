## `sapmachine:21-jre-headless`

```console
$ docker pull sapmachine@sha256:03e1a1601c7c98852df1b6a60a6f3eb043d15341ee9cc36f00ad451dc7434e84
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:9b37309e7212666074bed93694204700177e707a414a66a841540a29dede4c04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (91991640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78e04e4b901e0f7e15bd5021fb3f27eba01a4dfdad0179da3cfd27210bd8bad3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:06:39 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:06:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 20 Aug 2026 18:06:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7476848852b633ab6d3a673ebf600aba2ab4541c4df96c33193168dd96515c68`  
		Last Modified: Thu, 20 Aug 2026 18:06:52 GMT  
		Size: 62.2 MB (62238833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8be9d47a5cd68d8a8bf0413dfe214e07209bab36715570b60305090e6a006b2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2285671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0e230a8d45ef481a02fdef7afe9fa3ebc418cc11cf20d24a68f6acca62fbd11`

```dockerfile
```

-	Layers:
	-	`sha256:36594cd807f253567ec32b56a855fb35e8cd15e1dc2870b3a6d64286a04cdc69`  
		Last Modified: Thu, 20 Aug 2026 18:06:50 GMT  
		Size: 2.3 MB (2274686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63b5137359e7883430592345a1b048c01fdd2f14b038d6c50bb651f079a596f8`  
		Last Modified: Thu, 20 Aug 2026 18:06:50 GMT  
		Size: 11.0 KB (10985 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:c8573a4f708d60aba0f6756488f6f4b5e8be133073df32e9efbf803de0a93454
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90301187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f89981fdca9c4e33b07363af455cf3679838e47e55e1741cefa03c388d09a287`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:03:35 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:03:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 20 Aug 2026 18:03:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfd999aea870336daaf94e5ebf0d3d52d0da25e8915cf136c1e282c3c63fcec4`  
		Last Modified: Thu, 20 Aug 2026 18:03:49 GMT  
		Size: 61.4 MB (61413952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:adf571f48da88ca5970ee8ab8dd1090c454f44a6b9190044c10416ee558be72d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2286330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee0cb37ba4cf0995ed0dfea0c5fa439c154cffaa164d6780aeff900dbba1ff69`

```dockerfile
```

-	Layers:
	-	`sha256:4154329d5fdfe729dfa5a3fadddb91d20a3012ef7d5cf280efacd7743aa8da98`  
		Last Modified: Thu, 20 Aug 2026 18:03:48 GMT  
		Size: 2.3 MB (2275193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1e46967a09c1acbf2b12b926a6d6409809a4a46491a837f50c9a4d9ad9d90f22`  
		Last Modified: Thu, 20 Aug 2026 18:03:48 GMT  
		Size: 11.1 KB (11137 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:6f5ab2469eb634b34784323a96372141b68eca4d41e939811fdf30b6d81028b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.2 MB (96157297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5745059e90a2e7d3c4fc35bd6d4446701b2f5796b75b21543f9e650d9d8afda`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Thu, 20 Aug 2026 18:10:31 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre-headless=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 18:10:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 20 Aug 2026 18:10:31 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c12d704afa291b06f26849c0edc7eb3fe687dc27af71e5c49117f0117f04eb2`  
		Last Modified: Thu, 20 Aug 2026 18:10:58 GMT  
		Size: 61.8 MB (61846102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7df1a777c3960a6e6c141744847db1ddf8f2f35a46f80ff32909004ecd652e2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2285156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a029c31ecd30a1d73679055a9cf9f860fb1144c236e0302df03653e67d8fcca`

```dockerfile
```

-	Layers:
	-	`sha256:5330d58093e67589836ef5d9fd774819a9c3b63995ae01ce3a81346621f030c3`  
		Last Modified: Thu, 20 Aug 2026 18:10:56 GMT  
		Size: 2.3 MB (2274103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ec1d35c4854c4d5a35af98c4f675722a154505979ded1f24b3917a3b4a8390e`  
		Last Modified: Thu, 20 Aug 2026 18:10:56 GMT  
		Size: 11.1 KB (11053 bytes)  
		MIME: application/vnd.in-toto+json
