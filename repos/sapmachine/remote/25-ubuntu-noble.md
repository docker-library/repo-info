## `sapmachine:25-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:49054e4895ef298836d088cf231178313392f5b9d83c68ff4f42fad0c1073bd2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:661136cbd956ed96eb5f6b2c6cac1a5ef2932ea5a649dfdbed1e49cde50e3292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251922292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77f6249774ea810c43363e06a1c6de3cf7c1db482e581883ee426d28539e4c3e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:37:01 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:37:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 02 Jul 2026 02:37:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd8e185e7f8b76fe1534f9e58db3f446a73a4108ec3d9b3cec461cf1b3fdb6a8`  
		Last Modified: Thu, 02 Jul 2026 02:37:26 GMT  
		Size: 222.2 MB (222186691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ebba14e08a1a816eb2d7d95c9d17ceda63df2d58b94ee06e88b73bc4b7c47ed4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2614331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9e72c9ca95fea39461c0ae6fca833fa9ab62ac0c21d6470d3867358833f147`

```dockerfile
```

-	Layers:
	-	`sha256:18ce9c725ed7410e8e80850cf811801f4571c2d0e8ccd12a0d8cbc06a3743609`  
		Last Modified: Thu, 02 Jul 2026 02:37:20 GMT  
		Size: 2.6 MB (2599489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d362b0f205c48999c97fc1c49c9b25c94978f4d31a6fe48c4e6e53c64d71dd93`  
		Last Modified: Thu, 02 Jul 2026 02:37:20 GMT  
		Size: 14.8 KB (14842 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:2c4f4ccaa65dc0198141b1162ab4d5b939b6859f76a73b0e05bdfcb4e45fac2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.9 MB (248874775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d0da3d2755b2a1c82bd1003e9fbc867dd0546ef4caf3a21b84d129b8b139332`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:36:07 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:36:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 02 Jul 2026 02:36:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0eea3cd6ecc0d2c21ab4e332c1c2c4b72bf61bdbffa398b43e2796ea0a5cd2`  
		Last Modified: Thu, 02 Jul 2026 02:36:31 GMT  
		Size: 220.0 MB (219990595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cfb7a8fab5569b30b10c811fd5fd485d6a8b2e2710169efc4f85efd1741ec570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2615356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b21b8e66c09651cdb11ca63d5691b83cbc91cb9fa61da2be275c4a50bba40095`

```dockerfile
```

-	Layers:
	-	`sha256:db0ea48752ac4ff38013c6e9c9ab030a5c265d0135945b3ae5b1a6d5c129aa23`  
		Last Modified: Thu, 02 Jul 2026 02:36:26 GMT  
		Size: 2.6 MB (2600182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6479dcc53e24645ddd561e14c1f6761cac5c4422d4ac169f9c7b4676a2b6750c`  
		Last Modified: Thu, 02 Jul 2026 02:36:26 GMT  
		Size: 15.2 KB (15174 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:f3f50b8a4c85bec6be9189f16054dfa0feec7d5354773bb4d32874525835423a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257220662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1c7fc6cf80f34c746a892faed8bbe3226d160f5ca5369992d26ea7168b7f455`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 03:28:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.3 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:28:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Thu, 02 Jul 2026 03:28:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c1ef5730b9db5cab8d8f33f2692b49ad442d26504879f88f4d728c5cbb3e8b`  
		Last Modified: Thu, 02 Jul 2026 03:29:34 GMT  
		Size: 222.9 MB (222907186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3ebf76e749c5d385c925a0fc53d91b0c8998f65bde4a48164d91bf7468f2cc86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2611513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6231092ef13a93bca49d0a486ae7be6b87ccd7ec2b131b77298b37c85221fe3`

```dockerfile
```

-	Layers:
	-	`sha256:14ea20b3787092e7b5a9db7311d1570a15af7ac54e674946689618330d0d7d3d`  
		Last Modified: Thu, 02 Jul 2026 03:29:28 GMT  
		Size: 2.6 MB (2596513 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df689649aee0e8351417f6cfb3e74b114181c03d92e26748156aaa8079600492`  
		Last Modified: Thu, 02 Jul 2026 03:29:28 GMT  
		Size: 15.0 KB (15000 bytes)  
		MIME: application/vnd.in-toto+json
