## `sapmachine:21-jre-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:cb85372b705d8262292044e8efecd9e7257efc633efaef042090a0928000f8c0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jre-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:46c1cc812cf4e785efaafe37cdf6d945a9910e7580ed9961fd6e6ca033c99aee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.2 MB (93172113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceb93727af721b369f4d9b77012d645fb1e41ae5df39231c239f5f8264f87139`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:39:10 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:39:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 02 Oct 2026 01:39:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f12021a1b27959728ac3879666cd586fda30c1cf21ada7875d61ef0515301f08`  
		Last Modified: Fri, 02 Oct 2026 01:39:26 GMT  
		Size: 63.4 MB (63420486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a2fc0484270fd8298608c01039f3e1b0c04a53b21f6c3b12941a2db359b29fe7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2557541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:976c2dc673c9a311da8f2085ded8978863327d4a0a1b5bef6b3c03be33930252`

```dockerfile
```

-	Layers:
	-	`sha256:cb3ff59f114df35f27eec808b4da661b67452ffa566f0591be46ad36c5430eab`  
		Last Modified: Fri, 02 Oct 2026 01:39:24 GMT  
		Size: 2.5 MB (2548019 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4f0d519c7d47f005da14de31d041220e6c88e8cae9b2fe16425c9b627ceab16`  
		Last Modified: Fri, 02 Oct 2026 01:39:24 GMT  
		Size: 9.5 KB (9522 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:dc5671b6c3c541c4738de9e24dd0e3356dbeed92e3ee5a0a9f138daa40bc229f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.3 MB (90255469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba437e2acba0eb73475370eadb77bbed5f0f9cd85ec32fcc0c766173f801b0f2`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:39:19 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:39:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 02 Oct 2026 01:39:19 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27b4394911485823248f4a9844d2f0a59b6636e003a2114b60d0a6f04ba2c9a4`  
		Last Modified: Fri, 02 Oct 2026 01:39:34 GMT  
		Size: 62.6 MB (62571333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d76d2714be5c2dde567a90412a53e4d9498100e94c2c1722770a39dd92e2b288
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2557327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da9dfd5b25d731dbd41fc8ce9546016ef58616a0346bd8dfd9a3982aff919f9f`

```dockerfile
```

-	Layers:
	-	`sha256:aff94704fd87884502892dbf9df63572cf165a186e67b7e5a488ab700568c276`  
		Last Modified: Fri, 02 Oct 2026 01:39:33 GMT  
		Size: 2.5 MB (2547701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb03f0516d74acb438029353f18d5adca6fff2ea80902aa079ba2959db67e228`  
		Last Modified: Fri, 02 Oct 2026 01:39:32 GMT  
		Size: 9.6 KB (9626 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jre-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:9d343bbb9b9fbba7409ac4ce630803c7d4a8003f9bdebb127f89e986ea2e213f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.9 MB (97898848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ccc574a1e1517b1610bebc9799e83cf3530f39daaf3ccd5bee05452af1c8ef`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:59 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:59 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:25:02 GMT
ADD file:045fd400d3feed52639c1d69b89f522795380adacf8a6025e5d8b200e9a878dc in / 
# Thu, 24 Sep 2026 22:25:03 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 05:48:10 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jre=21.0.12.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:48:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Fri, 02 Oct 2026 05:48:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4ec38ea96fb6e9976b5659ce60f9385aeabcf358353540676f8685df8f5439db`  
		Last Modified: Thu, 24 Sep 2026 23:36:25 GMT  
		Size: 34.7 MB (34703208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b506799abf3174ab7f9cf3e645d741b38ab5cef52412e2b7da18b27d55c84f87`  
		Last Modified: Fri, 02 Oct 2026 05:48:37 GMT  
		Size: 63.2 MB (63195640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:51df740ec90e0fcf167106517b48a98ac54c9dc106d4054564350ca48cc9492f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2557117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ead6d589fcde3bfd5518cebae6b83771e3a549bc983c4b44552d1dafbf61bb4a`

```dockerfile
```

-	Layers:
	-	`sha256:e3bcdb7d32daa0488865638e8fe3992afac8d90b1a2a8826971117148c82e245`  
		Last Modified: Fri, 02 Oct 2026 05:48:35 GMT  
		Size: 2.5 MB (2547551 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e69a0d6bbba3c5676e749245161cc7d98adca61214e7e180bbf13851ff0be65`  
		Last Modified: Fri, 02 Oct 2026 05:48:35 GMT  
		Size: 9.6 KB (9566 bytes)  
		MIME: application/vnd.in-toto+json
