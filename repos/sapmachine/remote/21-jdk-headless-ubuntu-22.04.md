## `sapmachine:21-jdk-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:147127a3af2295ca1b5153e7d93c78f910adba9aae3be49d39e1b7aed7299b54
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:03107a25520e81f492c0d5e8ad979a7e9fb20798496aae56f7d038e0300bd573
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.4 MB (247373646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c659136e3ef450a27b9b0a12806d3184fef0287161cf493311a154228b4e0d8`
-	Default Command: `["jshell"]`

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
# Wed, 22 Jul 2026 18:25:22 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:25:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 22 Jul 2026 18:25:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f1f9687b114da2da39c2e69d22d7ce33b24737fc3150b4543873ed14afe65cc`  
		Last Modified: Wed, 22 Jul 2026 18:25:45 GMT  
		Size: 217.6 MB (217634765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:81e661c00432b2570d768cf61760d3155eb132c85b81519977177ecf47b7e622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2388302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b74f8fa32eeaf2a6669661114859df196f5b68218a48bfc950118493648e8cc`

```dockerfile
```

-	Layers:
	-	`sha256:7e4093839f76b3f08f0405d4c7af7931a5ae4139002baa4817902b90c3a42d79`  
		Last Modified: Wed, 22 Jul 2026 18:25:40 GMT  
		Size: 2.4 MB (2379412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad8f728c1d26e0f55c4e90255f7917378c58cfeac959a469193c3a0037c2f8db`  
		Last Modified: Wed, 22 Jul 2026 18:25:40 GMT  
		Size: 8.9 KB (8890 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:703dd79febe92a56b83d405d4c2cea3bbff9a3dad94015a31cd03453c948af41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243426066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d8d24cfa8e66df3a962b5accf7e7fdef6bdd5f7579455df4ab8c5114ac7b850`
-	Default Command: `["jshell"]`

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
# Wed, 22 Jul 2026 18:23:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:23:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 22 Jul 2026 18:23:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c2313a4dff2f3c736f8883b83a8562d9a248391ea822162f556916bde71ba0c`  
		Last Modified: Wed, 22 Jul 2026 18:23:53 GMT  
		Size: 215.8 MB (215812882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:19823ab10867a31d23d25ea4f160b9ee7fae517187face5d92f4aca1d39818e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2388077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d5931647c0add886893b2d141c7b2da226ac1451c221f04cb0b5794ab5170dd`

```dockerfile
```

-	Layers:
	-	`sha256:127fa3eae5910a70bf7c9f3283d2d9818cc113f9f9d53df3a47d07836b68085e`  
		Last Modified: Wed, 22 Jul 2026 18:23:45 GMT  
		Size: 2.4 MB (2379084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e3935416fe57217198a6c62a92fc4dc416fa4550432ffd98f749868567ae03d`  
		Last Modified: Wed, 22 Jul 2026 18:23:45 GMT  
		Size: 9.0 KB (8993 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:4240943376c104a87a631f810afaff7dbeb9d1ecf7568efbd00ba1d92e7a368e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.9 MB (251929368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6733f439fb95306a257eb78f06e18bbd29a9e264a30d377b3321ed692e1c1b19`
-	Default Command: `["jshell"]`

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
# Wed, 22 Jul 2026 18:36:36 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.12 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:36:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Wed, 22 Jul 2026 18:36:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6ca8e2be43a15d81f08ff734bd91e4330c02efe4069b7fface4c94bbaba5483`  
		Last Modified: Wed, 22 Jul 2026 18:37:17 GMT  
		Size: 217.3 MB (217287500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:21b180d222ccb726ce58a9833c4c1d3ad720a5e15155de76534e58eddcd9e18e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe6099482be9a3b7b1466ec2e6be39f49398aee31cd6501c89ee8f7dc4af6d32`

```dockerfile
```

-	Layers:
	-	`sha256:4cd166c165ab6c7baad6605939ec27707f7524f5c7e49a8aa4df9937c5be2680`  
		Last Modified: Wed, 22 Jul 2026 18:37:12 GMT  
		Size: 2.4 MB (2376908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ca4958fa61078083b0a14bc969edd34eab54116ddeb0c29c8bf0b4fbb2fa4f8`  
		Last Modified: Wed, 22 Jul 2026 18:37:12 GMT  
		Size: 8.9 KB (8934 bytes)  
		MIME: application/vnd.in-toto+json
