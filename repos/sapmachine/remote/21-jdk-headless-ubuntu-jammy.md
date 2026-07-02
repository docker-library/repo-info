## `sapmachine:21-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:17a7d53e4fbbbf1a4603f5dcbc6b9a1bbb2d3b427f1f189115364a8d46308170
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:318c2e2dd9587d0fc61eb291816ac09668bb11150cb3b0899dc97423400e3e3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.8 MB (244842227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:982f542c52b38079ea46ae8c6065a52c9942ec3acf4010722f4ea25dab8c7c01`
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
# Thu, 02 Jul 2026 02:38:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.11 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:38:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 02 Jul 2026 02:38:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d48838a94c046597ee1d356f4e6f7424abb1f0e522ea18bc4957ba58c7529b`  
		Last Modified: Thu, 02 Jul 2026 02:38:55 GMT  
		Size: 215.1 MB (215103346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:52dd578069b194926982defa23cc1cef0ae8ab2fa6beefa06eecb684fb89374a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3608a4dc1f248244fb12e13e5d9b6bbf79a2de3ad756310919caee42ab09b7e`

```dockerfile
```

-	Layers:
	-	`sha256:be2a8da36048cf29e88cc066022d4f3174a70846a43d4a04115989226362d8c0`  
		Last Modified: Thu, 02 Jul 2026 02:38:48 GMT  
		Size: 2.4 MB (2380676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4529180162d65f46aa9a9d98e5ba3e41668a9ff06ff3345a0a8ca0b2435f986`  
		Last Modified: Thu, 02 Jul 2026 02:38:48 GMT  
		Size: 8.9 KB (8890 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:e60dbbed12944f3660847c60d55ac05bae799e0b6d521dc72e8a9d62ba7645f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.9 MB (240947298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05fdf9f7db5a6a3ace2a277b934e6dd21764ccd02c95b81990b05587b63d2d9a`
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
# Thu, 02 Jul 2026 02:37:16 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.11 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:37:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 02 Jul 2026 02:37:16 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c37af7304a918e2ab1b239bbc7f629cb3448887f37cc76928e6d7f52ed740ad1`  
		Last Modified: Thu, 02 Jul 2026 02:37:41 GMT  
		Size: 213.3 MB (213334114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:32dbdeb132bf32d9caf502fc401d63488c6f5ba3f65a35a5a7748ccb476a8f3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee11ca312156ebc4b3d62d8d73ed414c131f50220f2f25527f94681a259b6e76`

```dockerfile
```

-	Layers:
	-	`sha256:6cac8354948522473ca08373448273233df6f35e12413a381f7023f3a28ce882`  
		Last Modified: Thu, 02 Jul 2026 02:37:36 GMT  
		Size: 2.4 MB (2380348 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:384f02db9880ae90fb3c4b59e9510306ca501a16639a877bd867a365d75a740c`  
		Last Modified: Thu, 02 Jul 2026 02:37:35 GMT  
		Size: 9.0 KB (8994 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:a7d77ba811da16abc49be4fc661f865acdc4dec5a5f63a184fb105e4e95e8cfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250537960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52b896845fb9f77cd49762730cac4153f4675b571fa8805e44ddde5e764ca894`
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
# Thu, 02 Jul 2026 03:38:53 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.11 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:38:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 02 Jul 2026 03:38:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335c21f7f73bc57a9addbbaddd9f484b28e725dab84bb13bc7b21c97ef05831c`  
		Last Modified: Thu, 02 Jul 2026 03:39:36 GMT  
		Size: 215.9 MB (215896092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3d79353f20daed844bfc6dd0c11d7cc4d38204f68b310458bd45562b3aa841c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175fabc39ac9a99b030f2b902ac584738731768de28afaac9c02c0bc1446f259`

```dockerfile
```

-	Layers:
	-	`sha256:abff69a45fc2c1a79a17a29a746da4a356762e962a3e40ed092e60791f33968c`  
		Last Modified: Thu, 02 Jul 2026 03:39:30 GMT  
		Size: 2.4 MB (2378172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6aec2d27f61b1357854bfe804dd7ee87b72b5649df9fed1e7bd75e15039081a`  
		Last Modified: Thu, 02 Jul 2026 03:39:29 GMT  
		Size: 8.9 KB (8934 bytes)  
		MIME: application/vnd.in-toto+json
