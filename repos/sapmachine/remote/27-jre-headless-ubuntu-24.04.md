## `sapmachine:27-jre-headless-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:2353310105eb0cba824513a49ceb785a05bd7b68c968e63c8b935d2a52a6bc35
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jre-headless-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:696a9091d022b38f8bf7ba656e77c076e37e19782b87110af9ea03eaf4f9e3f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.2 MB (89157634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:884dd6108e4bf059ebc6160ed33fe699ec804f504200fef4cdfcc89a16220ccb`
-	Default Command: `["bash"]`

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
# Mon, 26 Oct 2026 23:37:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Mon, 26 Oct 2026 23:37:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73610dd5a078bcce48c304f62555ae16618882e44eefb688d770779e778d56a8`  
		Last Modified: Mon, 26 Oct 2026 23:37:47 GMT  
		Size: 59.4 MB (59390022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e1b1a1ab0e7593f5d6a477a4d3e6ff88deec74d32c70b58c8c073f59d8fea287
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2291663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:826045bce9c3894a60b8c834150ac0ccbd5a2957657b31c054efa9a0f3221cb4`

```dockerfile
```

-	Layers:
	-	`sha256:6338806aa65d82ee8a62069af94a412648b96cf28ecf65e79b75d8b534ab0a09`  
		Last Modified: Mon, 26 Oct 2026 23:37:46 GMT  
		Size: 2.3 MB (2279331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be2476d01c51493f40ac8cbb8a8fe0b5de8151d5381e271cfc550e5929d1a6e0`  
		Last Modified: Mon, 26 Oct 2026 23:37:46 GMT  
		Size: 12.3 KB (12332 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-headless-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:badeed6a375aa5e7afe5fa0f360246588974c00e4da4292a2e2cbc195e6e1c9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87360214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01d3d075b3ac11b67c16647433e3fe0937892aa61e102ee2e886fbd672d883d8`
-	Default Command: `["bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:42:39 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Mon, 26 Oct 2026 23:42:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02bd8b35dabf377d4dcc9b170a80917abac15eab28c3b3badc9d0cdfa7230169`  
		Last Modified: Mon, 26 Oct 2026 23:42:53 GMT  
		Size: 58.4 MB (58420088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:865e986339c4db5c87193d756c2c4143ced447b68745a5a0be66046c427b717f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2292415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bba33c2f374494d69af7335e61e59a9e1a4502569e27731b284eafcfc1a6b91`

```dockerfile
```

-	Layers:
	-	`sha256:8c58f8823b4fb44a86a13cab574d47b106bb780dfe09f8fcb204f7579d9716bb`  
		Last Modified: Mon, 26 Oct 2026 23:42:51 GMT  
		Size: 2.3 MB (2279883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8bee35b6c6079ea919eb8d260a10203a82027f8e854c6d5ead6bf8eaf7f1cf0`  
		Last Modified: Mon, 26 Oct 2026 23:42:51 GMT  
		Size: 12.5 KB (12532 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-headless-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:e75292338f4c516d9593e4f27b7c58d407aea8565b266de0ca612fafd30d6384
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92897533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:babc17a89720c4db58811da719554d9bc7c60ee25c8d69abed060701a2675ee6`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:46:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:46:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 18:46:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c94b7cc217c02eabb108c200e80cbfe0e9b5934a84449a4aa4f5e35093d21df8`  
		Last Modified: Fri, 23 Oct 2026 18:47:10 GMT  
		Size: 58.5 MB (58519543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-headless-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:096c7aa9629b574e46b98031982cad62c3ded94991cf6cefe6f907082557c392
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2290554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a623d6971e3f3bd0044f2490f95f2c7dd752f7c61f52cb5c4a88f13236999f5`

```dockerfile
```

-	Layers:
	-	`sha256:0f1ec7b91476a48f85c0fcf4c082c0a357a9e4f142db710e6c8fcb23260bfb58`  
		Last Modified: Fri, 23 Oct 2026 18:47:08 GMT  
		Size: 2.3 MB (2278130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e40778ee72e40ad4ac3b05153c78007586f963c48a881614e6bf35921f8edc4f`  
		Last Modified: Fri, 23 Oct 2026 18:47:08 GMT  
		Size: 12.4 KB (12424 bytes)  
		MIME: application/vnd.in-toto+json
