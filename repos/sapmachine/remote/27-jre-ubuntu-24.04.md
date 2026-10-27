## `sapmachine:27-jre-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:efdbc0175861190a6d35827bdccd884d5a234aca6bb601936d592300970212a9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jre-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:aaaffb12cb295c8f186802ed32ce08fb74ed7f9f8f0a6e3d527599f32f9cf1d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90659624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee493e7b87fd048b02b34c4f1e965826a47f2a253c1e4ae1a0445b7deb903a3d`
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
# Mon, 26 Oct 2026 23:37:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:37:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Mon, 26 Oct 2026 23:37:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd40e3f9e41c06c52de1f00f31adaa63fa06e957fc7d4fa65196a7d1a9ea33e7`  
		Last Modified: Mon, 26 Oct 2026 23:38:04 GMT  
		Size: 60.9 MB (60892012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:2f6d00ef0eb43fdaec07a07a483ecd85dd93d3e27e2ae847eb1712b8a8f11d8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c24241eb4e3933466cf3fcc61ee188f21335b0117922bdf70fc3302b2b46e85`

```dockerfile
```

-	Layers:
	-	`sha256:de31d409dee95ed36dd839cee5c18e75069bfb55ae2dc92a42d1ab040f6d9c1a`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 2.5 MB (2526357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14400cfada1d4505f564641c0bb66474486ed3939fed44c85a40365bde0c18c0`  
		Last Modified: Mon, 26 Oct 2026 23:38:03 GMT  
		Size: 12.1 KB (12077 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:3ca755ac2b642edc6fc9b7717e84c171e89f2d221c89e53c54adf492c5776491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88866762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b62e878deddbf3d6170e3e2031730bfdc7086f6925e6e7f32e1aff95f7275c`
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
# Mon, 26 Oct 2026 23:42:35 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Mon, 26 Oct 2026 23:42:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a12197a0694421aa7c11933ed65f96baf31d1671d7e1c4523dfc641f694984f`  
		Last Modified: Mon, 26 Oct 2026 23:42:49 GMT  
		Size: 59.9 MB (59926636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d27d16716a3f1cd20e6fb4262393a2af57726a43cae013207fd9a045c594438a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2539195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ede6ece338affd1584775b5d4d64e48d34e052b5898bb41a2bc1aa4dbf572475`

```dockerfile
```

-	Layers:
	-	`sha256:5cb921603efc7ccfa542c53063f5b460544d74a8216c31861cdfda323edaf576`  
		Last Modified: Mon, 26 Oct 2026 23:42:47 GMT  
		Size: 2.5 MB (2526918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00026b84b36dd7eb3b98d5498918a6ca4f30f225d850aa59119c217d152d04ea`  
		Last Modified: Mon, 26 Oct 2026 23:42:47 GMT  
		Size: 12.3 KB (12277 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jre-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:9343d87bc1f1f48e7e33d4219e931222434f7ccd9c0d65abdd18e67ec06f5a3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94620714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0ed61afe76c7e461228cb00f2b68930144173a8d9e10bde3e6f927c6e25db18`
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
# Fri, 23 Oct 2026 18:48:45 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27.0.1.0.2 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 18:48:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 23 Oct 2026 18:48:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25f5965194629363bd1ea53eb4ee28817870fcee972fd3e1c1c3f5d45f523727`  
		Last Modified: Fri, 23 Oct 2026 18:49:18 GMT  
		Size: 60.2 MB (60242724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jre-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d71cf0b417756c416a059b2ffcd4ff4e7fda89de2e019844485ed8967bdf9b59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2537406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0ef5bce013b96d958f830a36d3818afbbcd116f5aa1a936b00d9e482c874296`

```dockerfile
```

-	Layers:
	-	`sha256:dd7a52cd5047c81eea8cc22b4e09dfd229deaf101cb95f4fa955749f9574d4d1`  
		Last Modified: Fri, 23 Oct 2026 18:49:17 GMT  
		Size: 2.5 MB (2525237 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da2e73c8ee1f87ffa2c7cb706795f1bc28bd45ac0112f162aed727fdc7c0b69e`  
		Last Modified: Fri, 23 Oct 2026 18:49:16 GMT  
		Size: 12.2 KB (12169 bytes)  
		MIME: application/vnd.in-toto+json
