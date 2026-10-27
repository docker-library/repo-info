## `sapmachine:25-jre-headless`

```console
$ docker pull sapmachine@sha256:f07cc12ea854deadfac94078b2220d5b45a0d223a5d11258b05af6728601a02b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-headless` - linux; amd64

```console
$ docker pull sapmachine@sha256:29e86608bedc59fb63696b1d5bcced2afc7f14b6ebe5234b2eb588fe9169fa73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.2 MB (89196234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8d6c4150ef716eb47e637962de6ad23b73a92bbc4b9c7dcd55239a1e3b9108a`
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
# Mon, 26 Oct 2026 23:38:47 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Mon, 26 Oct 2026 23:38:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:260cdd69dbabd9a40e9b1d2332b85f727e5ef40fed498b4ea31a29f25e1d072c`  
		Last Modified: Mon, 26 Oct 2026 23:39:01 GMT  
		Size: 59.4 MB (59428622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c9fca9580a7d315a36c539790ae46e9bf4ac4ee680596679d0e31e47bcc6f4d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2292966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192076f01a4263db14bc7618306b5b32851b8d6e30bcf8fa37d7b1caf62a0d69`

```dockerfile
```

-	Layers:
	-	`sha256:3b8aca13a7b4b3c04e83765c5b6b91752aad6b757bd90335b5b6cd8358f20a8d`  
		Last Modified: Mon, 26 Oct 2026 23:39:00 GMT  
		Size: 2.3 MB (2280928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ab38849c176d36aa3d5b68ebbe5867b38dd0adf908258512c9841be97745c59`  
		Last Modified: Mon, 26 Oct 2026 23:39:00 GMT  
		Size: 12.0 KB (12038 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:ac2b3c14a6de74812d25fdf5e6ecb810f5bb3d2ca0383dc4fafce52a49b6899c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.3 MB (87306615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73a26047d7d88cf8c1a24fa3f7a24ddf05a96f1db5c7fa36c0fbf2ad2b2832d4`
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
# Mon, 26 Oct 2026 23:43:43 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.5.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Mon, 26 Oct 2026 23:43:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f4bf7d9b2e6ba1afd681c5a28768e286d003fdbd7e1bf5374a2daee87dffaad`  
		Last Modified: Mon, 26 Oct 2026 23:43:57 GMT  
		Size: 58.4 MB (58366489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c4382a85a7b2e728656ec31057910b90d009fbee98db608d309e4827ae133885
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2293694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b50a99b678cc7ce3efb73dfb5e188908cae422ffb419b36c0aaabbe05c59d15`

```dockerfile
```

-	Layers:
	-	`sha256:b54a3e943bb8df0a86ddc026eb6fd4d761a829b5bd09bd62891e655b87a76a5b`  
		Last Modified: Mon, 26 Oct 2026 23:43:55 GMT  
		Size: 2.3 MB (2281468 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6961709c4ffa541a4c232a3efc13a4cc85e94b5fecd4292ee6a629310fde4c4c`  
		Last Modified: Mon, 26 Oct 2026 23:43:55 GMT  
		Size: 12.2 KB (12226 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:5aec6de700c216bab15f93d9a1244063a4c97fc57aa9c66372c0f0eb8ecbc19b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (91990591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0522be2c4ff8c2b62c0da3824231a7bf052ccc45dcfe092848c4c3ecc94915a6`
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
# Fri, 23 Oct 2026 18:56:19 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.5.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:56:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 23 Oct 2026 18:56:19 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5331fe91057be17bb37003ec83144f72afaaf50f824fa0f528655c14b7856d25`  
		Last Modified: Fri, 23 Oct 2026 18:56:56 GMT  
		Size: 57.6 MB (57612601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b717f4858a3c04d8a6b2c412ddad2e668da3c4f48e10447bf4dce5c46298e11b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2291845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:166173676ce4e7cabd9187c2930878e93941b026dc998c69c71951b85b186ce5`

```dockerfile
```

-	Layers:
	-	`sha256:eefc59a5dc22dec483ee196cc4f428bb9e8abb488cd81b8ba526b2d28490ee69`  
		Last Modified: Fri, 23 Oct 2026 18:56:54 GMT  
		Size: 2.3 MB (2279721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:686e990f68c27f82fdafb79753afde51d7ddb2025dfe15f50115f50a48e56514`  
		Last Modified: Fri, 23 Oct 2026 18:56:54 GMT  
		Size: 12.1 KB (12124 bytes)  
		MIME: application/vnd.in-toto+json
