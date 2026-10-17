## `neurodebian:noble-non-free`

```console
$ docker pull neurodebian@sha256:5e0c58512d398bdf0f912cf6f1591e8fd33841859ac15565c33507272330e9a9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neurodebian:noble-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:fae25ad9fd3df57bdf6658e92ce38c8db310435eef4d548fc9c98303feb83836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33440015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eff1b13cbcd0b79e2508f9098e9a67a2d40167e7655703b9b959e08ae6517a0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:32:56 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:32:56 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 17 Oct 2026 00:32:56 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 17 Oct 2026 00:33:02 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:33:02 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f051cf5ba78d24a93195d915d44b784bebf164f3d2f694a47b61e7908c8bebd`  
		Last Modified: Sat, 17 Oct 2026 00:33:08 GMT  
		Size: 3.6 MB (3565807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a4271a08fbda475c1dd71f0846a1d325132cdfd87c373dca65fe6b2581e725b`  
		Last Modified: Sat, 17 Oct 2026 00:33:08 GMT  
		Size: 2.6 KB (2639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f1caee754fc8e9c6a1d3a599e4090dd824b0651bf3ff01247dd691d7b8357ba`  
		Last Modified: Sat, 17 Oct 2026 00:33:08 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f25e7836f5cff42116e2feff6ccb47177e94e294ca9c2e1a68ec40d0d60e32`  
		Last Modified: Sat, 17 Oct 2026 00:33:08 GMT  
		Size: 105.1 KB (105105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d30077ecbf053f4ff682ac1d92a33b003923ce6a4bda020fabf6c4fa9d56b1e`  
		Last Modified: Sat, 17 Oct 2026 00:33:09 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:ff962daed76691b2b51781b6da1113627c14c91a46a961fa0e23f67586265e77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2137160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ab1e6b1c05eb2b140e65f26d40e4d73fa0ae4ee90ed575f252e43d5422b855a`

```dockerfile
```

-	Layers:
	-	`sha256:d29ee6e0fbe4d261ec2d41d8c44bf40388a74fbb45858ad3341113ab9a1e344f`  
		Last Modified: Sat, 17 Oct 2026 00:33:08 GMT  
		Size: 2.1 MB (2120999 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6e325a0d90878697c8f74bf4a2795ab35d223b32ca2ff6ed0f06b86716287a9`  
		Last Modified: Sat, 17 Oct 2026 00:33:08 GMT  
		Size: 16.2 KB (16161 bytes)  
		MIME: application/vnd.in-toto+json

### `neurodebian:noble-non-free` - linux; arm64 variant v8

```console
$ docker pull neurodebian@sha256:a947e077f238458f8ddcf58242bcffd1bd398a32a35f0352e397a38aa92b78d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.6 MB (32611973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6712170e0790de7123229dc47c2b02515f061f453f124af27d4a570c30cb8a25`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:32:45 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:32:46 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4E9A2E702A23C7C882574536439754ED1F42AA2C 	&& mkdir -p /etc/apt/keyrings 	&& gpg --batch --export --armor 4E9A2E702A23C7C882574536439754ED1F42AA2C > /etc/apt/keyrings/neurodebian.asc 	&& rm -rf "$GNUPGHOME" # buildkit
# Sat, 17 Oct 2026 00:32:46 GMT
RUN { 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian noble main'; 	echo 'deb [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian data main'; 	echo '#deb-src [signed-by=/etc/apt/keyrings/neurodebian.asc] http://neuro.debian.net/debian-devel noble main'; } > /etc/apt/sources.list.d/neurodebian.sources.list # buildkit
# Sat, 17 Oct 2026 00:32:54 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:32:54 GMT
RUN [ -e /etc/apt/sources.list.d/debian.sources ] && srcs=/etc/apt/sources.list.d/debian.sources || srcs=/etc/apt/sources.list; sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' $srcs || sed -i -e 's,universe *$,universe multiverse,g' $srcs # buildkit
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8726c964a220b193d65dd93229c5b953d62ab0bcc14757d7a6e49a036bf01a4d`  
		Last Modified: Sat, 17 Oct 2026 00:33:00 GMT  
		Size: 3.6 MB (3563072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4f8d035cb557d746f5890b7ce53f79284e4f2e7bd41e7451aa90d5c82e83baf`  
		Last Modified: Sat, 17 Oct 2026 00:33:00 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c111156924ec8719b4b9804f2406efade6ba0ee218ce9edd4042831dd578ba1e`  
		Last Modified: Sat, 17 Oct 2026 00:33:00 GMT  
		Size: 272.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f5bce4d304a924eb18ca7df799d5b9a601bcb61d19f9e1a02d75fc2a65e6db`  
		Last Modified: Sat, 17 Oct 2026 00:33:00 GMT  
		Size: 105.8 KB (105801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1eb74690667adad8029bc1ec140f9e6174184d0c8f6293db4ada2148a9f2d0`  
		Last Modified: Sat, 17 Oct 2026 00:33:02 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neurodebian:noble-non-free` - unknown; unknown

```console
$ docker pull neurodebian@sha256:c2c07703a663365c65bde793f3b63671d5e40c4b3545f9b65a4f26d17e01738e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2138347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d08c0c1aa49b4b7ff96791bc3e3aece4aaa98305f7cb7fc057caa9a6cd725352`

```dockerfile
```

-	Layers:
	-	`sha256:c985d62c837ffd82739eda66bcc29e78017a21367c7dc58869ed9f24a695ae99`  
		Last Modified: Sat, 17 Oct 2026 00:33:00 GMT  
		Size: 2.1 MB (2122044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bafba2d9a1b22547dd6149664e2454609e8dd7a0575209d98fc0481df73e217f`  
		Last Modified: Sat, 17 Oct 2026 00:33:00 GMT  
		Size: 16.3 KB (16303 bytes)  
		MIME: application/vnd.in-toto+json
