## `sapmachine:jre-headless-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:78c33ade3381944ca450b1e22b9fc77e79b160f677e7287cde47e8001d1322db
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-headless-ubuntu-noble` - linux; amd64

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

### `sapmachine:jre-headless-ubuntu-noble` - unknown; unknown

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

### `sapmachine:jre-headless-ubuntu-noble` - linux; arm64 variant v8

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

### `sapmachine:jre-headless-ubuntu-noble` - unknown; unknown

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

### `sapmachine:jre-headless-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:46a85ab8c55749404f5474471cc96df5f9454242f146e5977cc5750a4d6468f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92894127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ac9c39ce09bc19887482b73d5e22f5ba9b108b65b2e04d1965caeb4aff36570`
-	Default Command: `["bash"]`

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
# Tue, 27 Oct 2026 07:24:04 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 07:24:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Tue, 27 Oct 2026 07:24:04 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a5b1086db6374879b89862a1d30539f84c66ff7249a4010b57af06517db92da`  
		Last Modified: Tue, 27 Oct 2026 07:24:35 GMT  
		Size: 58.5 MB (58515819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0a86197dec23355a2dcb2029ad6379ea68565e871f123698d20e349c45d22504
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2290566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20aef2c3e6564c2b818d05e5ccee9ae44cbc2aeecf6bb753845f2a4eb05c16a1`

```dockerfile
```

-	Layers:
	-	`sha256:934ec356d3f7dba59ab170c8ff58eaac87480551134f37ccd4e55fd5df61b1ef`  
		Last Modified: Tue, 27 Oct 2026 07:24:33 GMT  
		Size: 2.3 MB (2278142 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:384d34c5ce5c751a63a983908d2fe7fdac0708e6cb97db903ed778e68f5c7091`  
		Last Modified: Tue, 27 Oct 2026 07:24:33 GMT  
		Size: 12.4 KB (12424 bytes)  
		MIME: application/vnd.in-toto+json
