## `sapmachine:25-jre-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:68c147fbdd67fc41bfa505e518eaa9da55f4ac722029f431509b8f29a1dc7462
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:fc02af31a4ee9070684b23430f6eec9ea5c46e20f2952dc776f33ac1f945c6fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90218268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fa3364abb12991f09358ea05783891e4c8f5419b43442dd2fa25a970e4e109c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:24:05 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:24:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:24:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88026e1b0331624fbd74e4f3f747f23259773817ce522c1feb184a80e1d186b6`  
		Last Modified: Wed, 22 Jul 2026 18:24:19 GMT  
		Size: 60.5 MB (60479387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e3d260fef3285e5a4dee72b1055a0bdc5e3b77cd075b63d8849f50f72a91e744
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2563168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f03f6beab731fe5ba95d66c072dae4c269cf7a3d25cbb341b1a61039411a6671`

```dockerfile
```

-	Layers:
	-	`sha256:35784be9f389e1cf29e98466c09a86a5c8e4791d7abfbb8c780f40135236cb07`  
		Last Modified: Wed, 22 Jul 2026 18:24:17 GMT  
		Size: 2.6 MB (2553731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37ca0fc51a32a03af1d5ea7407da13d8236c263503ac4ab9eb0055e424b8cfde`  
		Last Modified: Wed, 22 Jul 2026 18:24:17 GMT  
		Size: 9.4 KB (9437 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:4eb49d47db750bc121ccc0b0c275120b646410b0f0b16f7b52d3f70b4732dcef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (87006797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f859905ec1c770ba987d0ade08a41a5578bd37deeb40a4236fc7a07a7b0f148`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:22:23 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:22:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:22:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94775bb8f11de9ef0e32be5a676840a43f0e43b0cdf920bb886362f264ba5aa9`  
		Last Modified: Wed, 22 Jul 2026 18:22:37 GMT  
		Size: 59.4 MB (59393613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d5d093110d8907e0ef13bd79facef7bd050a1a9f702770c5db67a13283200481
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81bcf61ddc4f4345d9e6f6c83668eeb8ec58bb60bdf9871187a92daa82edd443`

```dockerfile
```

-	Layers:
	-	`sha256:6ddbd10134853fb69aae8050c5760735f6494c249334679033acb34a7fd43fd8`  
		Last Modified: Wed, 22 Jul 2026 18:22:35 GMT  
		Size: 2.6 MB (2553434 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14f75e781bbe05cf8794fe8d622778bc00e4219c4769594bdc23f275850bea3c`  
		Last Modified: Wed, 22 Jul 2026 18:22:35 GMT  
		Size: 9.6 KB (9565 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:a351bea6ea0bcbc805b1a3d6ed798127088848f99df1fcc1f1dd337d678c848e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.3 MB (94268394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a9867ea53cf38cdbfedb7f72e4d7348c2ab1f88d0a48a86bf04fe07bb4fea81`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:35:02 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:35:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:35:02 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:35:06 GMT
ADD file:fe88ac7d2b59101d91924b906576ed0bd1506245791beb01e66dafe898d768bb in / 
# Mon, 29 Jun 2026 10:35:07 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 18:29:26 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:29:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:29:26 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5690bbd3d34cc4d9e9e4be010900221fbca585525b0f241e62ac168001ecbe75`  
		Last Modified: Wed, 22 Jul 2026 18:29:52 GMT  
		Size: 59.6 MB (59626526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8064682ad826cd84dbb7e8eec65d94327dd44d03cd9002585caa80a4cfa2a424
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79075aa2b4e6b97cabe046b7d04fc645b4b9f22e36b7f27dd4729f2c10395770`

```dockerfile
```

-	Layers:
	-	`sha256:2804e7134eb5766cbacb1a83f2af8a632f3ca63b40e41016aab60fab9a7db561`  
		Last Modified: Wed, 22 Jul 2026 18:29:50 GMT  
		Size: 2.6 MB (2552645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:023db2491d9954b190638bae60a23f345723f3d2d49ddf38dba20c109dda6793`  
		Last Modified: Wed, 22 Jul 2026 18:29:50 GMT  
		Size: 9.5 KB (9493 bytes)  
		MIME: application/vnd.in-toto+json
