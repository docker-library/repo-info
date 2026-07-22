## `sapmachine:25-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:223e0637cd6b533b9c220359a2a95a73905d87e99718b7024952da5e02e047dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:534c7984f97dff8e2d6a57d25fdbbfadd5cddb91c09ddd7f2b97202b3e07639d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.4 MB (254384150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29d61e2c9e3ec7b8e98bbbe0cc8aa83f6fd9ba5aa3ed6b7a12d1632c775201f5`
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
# Wed, 22 Jul 2026 18:24:24 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:24:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:24:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f562e071bef7a6628c4acf74ebe14e94fb5d6e16df23ddcf952b0b7164ef813d`  
		Last Modified: Wed, 22 Jul 2026 18:24:46 GMT  
		Size: 224.6 MB (224645269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:85a7baf52e84181155ed2e63a5c36db0696e50dc22138e5cc65caa0039fa5d04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2634936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ee701d1e5cf2472f4908b05cf82134b8a6339013b03566f034d67928f0aba66`

```dockerfile
```

-	Layers:
	-	`sha256:ba2251ab8c45d3a791c113deef9b628797e989648cf0175f583f7b8b5557b596`  
		Last Modified: Wed, 22 Jul 2026 18:24:42 GMT  
		Size: 2.6 MB (2623534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1721271817f991334a55941b2a755eb9291d17a2a1e65df221dd741c8e7b791`  
		Last Modified: Wed, 22 Jul 2026 18:24:42 GMT  
		Size: 11.4 KB (11402 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:eaeb148200002b237dbd30d8bde2ff81893c3453115a0f838dc526f63e3adef8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.0 MB (250002037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52365c2972697c7909c122df9babcd98f373e46e81d986cf6633d2a1e3bf5a45`
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
# Wed, 22 Jul 2026 18:22:43 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:22:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:22:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5753a34c760ac471b46c6a596b2547786d1401caef7e88fb4ab3de404ec328`  
		Last Modified: Wed, 22 Jul 2026 18:23:08 GMT  
		Size: 222.4 MB (222388853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:91127964c24a873d0d4e24a54331755d1c158de89689e7afb69fefaedcfcc9ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2634910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d2dba8a4ca718b7610e5eb622f082f235115ad54b9a74bbbaae293af98f29b7`

```dockerfile
```

-	Layers:
	-	`sha256:ce8e9ea01bfddaad8ded0bad981dd645dd2fcba8260c5f62529ed0db3e3af0f8`  
		Last Modified: Wed, 22 Jul 2026 18:23:03 GMT  
		Size: 2.6 MB (2623309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34e55a12b284241cfe8017a64e043702a586a4a753ee7e1aecb251eee618def1`  
		Last Modified: Wed, 22 Jul 2026 18:23:03 GMT  
		Size: 11.6 KB (11601 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:e57add6a9d2914f3cf3336660eebb4e85bbc24b85ae90598289611c8f325421b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.5 MB (257470383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cdf3cd2b60441dbe86cffaafa7df58895cf6e38d2c01c90107b16a7e8e9c074`
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
# Wed, 22 Jul 2026 18:30:49 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 22 Jul 2026 18:30:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 22 Jul 2026 18:30:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:524439e1050d5edb0148ee2e99024229b3582ecf76c468e6e839ac409ff84685`  
		Last Modified: Wed, 22 Jul 2026 18:31:33 GMT  
		Size: 222.8 MB (222828515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:98c452a90bd262560d4e033f2e1855a7fb4265a3169c7dc4d977d794802e6a53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2632041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93f5d6892786607dfe742fe4670b029cde2cace24bd66c1eef7110f7396e986a`

```dockerfile
```

-	Layers:
	-	`sha256:f4782b77a7048d7e6f38a811163996e2199b9b6788f427ba39727ad7d5defddb`  
		Last Modified: Wed, 22 Jul 2026 18:31:28 GMT  
		Size: 2.6 MB (2620550 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a00394a341d6ca73b409f06dc2f2624c89053023a080cee0ac15f6d4fd893aba`  
		Last Modified: Wed, 22 Jul 2026 18:31:27 GMT  
		Size: 11.5 KB (11491 bytes)  
		MIME: application/vnd.in-toto+json
