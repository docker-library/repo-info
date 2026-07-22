## `sapmachine:lts-jdk-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:b89ee431f1791c78917dee5262393829323e1cae3a05611e202e0930ec9b507f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jdk-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:f90850d7efeb4c67293728551b912c1eaa6844607ed6038008bc607355c3a02c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.8 MB (254785614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844cfeeca95e4c03466b8c4fa0886fa7fe4d561b91c8449b8114239fd770c6f2`
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
# Wed, 22 Jul 2026 18:24:05 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:24:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:24:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58219fddf991baf6671813ad50894e1d402257cc64da95b965b360b8eb863d1a`  
		Last Modified: Wed, 22 Jul 2026 18:24:29 GMT  
		Size: 225.1 MB (225050013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:bfcc6945e7f94dd2ff8007bbbe902859f2c587cea06fc9f1143a86fe6b5dc291
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2614330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92665198857068ea0e2775c37e4756e1ec26d5beb16598925d98cae2dbd57f32`

```dockerfile
```

-	Layers:
	-	`sha256:75dd179a1a003089fb843f74eff358fc1a7508bbc2be1ce6a45f755ad9d1765f`  
		Last Modified: Wed, 22 Jul 2026 18:24:23 GMT  
		Size: 2.6 MB (2599489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:660100b030529a638f74efa863b2e94e0eea80db710faeeeaca8fdd39256d400`  
		Last Modified: Wed, 22 Jul 2026 18:24:23 GMT  
		Size: 14.8 KB (14841 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:e9a83f1f0f19d5109a8aacdf54bd998ee9d7ae6b1f7e25e0d31f71fa9c72bf9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251702464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d8b02cdaba5faeee19c2aef4c730dcae026dbbaa286fc2930b5acaee5d4645e`
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
# Wed, 22 Jul 2026 18:22:21 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:22:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:22:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184ad4b99cf4b6d4359339252b35569a3b52d2703fe324af4590bd6fda7c20da`  
		Last Modified: Wed, 22 Jul 2026 18:22:45 GMT  
		Size: 222.8 MB (222818284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:639a7b0f196e1c5bbcf9a4387aff3e27625703f71b6d04453440d1ab9d6b81d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2615356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:074c569deed61b26a8fd50d16d94848185168dc8e5136f23a640a817cb272595`

```dockerfile
```

-	Layers:
	-	`sha256:87c2ad615ab213129d93fe29873ad8205549d9c97684d6b62a4031fadb66ac6d`  
		Last Modified: Wed, 22 Jul 2026 18:22:40 GMT  
		Size: 2.6 MB (2600182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79f340b7d893497781b7db2b3d5b37b0c915fa9df8d18d0d6240fed83195fb55`  
		Last Modified: Wed, 22 Jul 2026 18:22:39 GMT  
		Size: 15.2 KB (15174 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jdk-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:5fa302fdbed8c83c4914a6bf93f754fa145c1bc958d27e41bcb2e9a2325aa952
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257622911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c85646ab50fdc43d6de016fc82c94d9ef36feee12e3d145a384e32d46866c1de`
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
# Wed, 22 Jul 2026 18:27:50 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:27:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:27:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87a191c3b9e8629af8de5b2d97a37921bd9124f5264a2c0ba6a8d73a599a2ff`  
		Last Modified: Wed, 22 Jul 2026 18:28:31 GMT  
		Size: 223.3 MB (223309435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jdk-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0a65a6f48b83bead087757a72dbe554b1ea80644dc8709cc41f62e4f51170726
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2611513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7c0a199395cf51c83966a3ee58dbd59cc502ce82cf9a51f76600c5c32f57300`

```dockerfile
```

-	Layers:
	-	`sha256:88bc926e76a4183a66e94900234b76489852f7582b552a241c64197ec2c3031b`  
		Last Modified: Wed, 22 Jul 2026 18:28:26 GMT  
		Size: 2.6 MB (2596513 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce9d4a3f39beda20c38f3db27e95102c3819d860b0176ec6aef006442deeb958`  
		Last Modified: Wed, 22 Jul 2026 18:28:26 GMT  
		Size: 15.0 KB (15000 bytes)  
		MIME: application/vnd.in-toto+json
