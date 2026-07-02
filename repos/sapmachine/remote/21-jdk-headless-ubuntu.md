## `sapmachine:21-jdk-headless-ubuntu`

```console
$ docker pull sapmachine@sha256:27b393e098282b2f2f2bd1aa57faa5bd882623a74bbb3ad209c5723788beff34
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:21-jdk-headless-ubuntu` - linux; amd64

```console
$ docker pull sapmachine@sha256:3f6bbdb1dc4fc74dd421f5e30693afff87a109643b66e812f950aef5b606f616
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.3 MB (245268058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40e7827dccb96f2400ecf48c9555a871f8c08532be5921ef32e70da3dffa99de`
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
# Thu, 02 Jul 2026 02:37:49 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.11 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:37:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 02 Jul 2026 02:37:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9587af0fb0ce8eb541c2272b965a28965f4fcee59162822c343d2987003ef712`  
		Last Modified: Thu, 02 Jul 2026 02:38:13 GMT  
		Size: 215.5 MB (215532457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cdeb53cd9a50c4357499b2d0c4fbaa876273007ebda1465ee66f24891e396e82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2369655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b22d00aea63728849c4f0d4e5d5efd6f509cb714c5ef06b31ed8b2b716a33c71`

```dockerfile
```

-	Layers:
	-	`sha256:6d7d4161bd2b184b5758f14afe2cd85a93db02b11a2ba202ff799a318232d125`  
		Last Modified: Thu, 02 Jul 2026 02:38:08 GMT  
		Size: 2.4 MB (2359421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab264e3ddeb2695e8a7470b0c78ff2451f35e4ba81c3a9bd04881d19160d3aa4`  
		Last Modified: Thu, 02 Jul 2026 02:38:09 GMT  
		Size: 10.2 KB (10234 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:e3188168696e13793ff94ef1478802db9662dfb0a9e4dadf043b16909d54de29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.7 MB (242657587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:034970e59b6e38dbd0c12390f63760e9eea1ae654780e82c2ec04147f27fbf5e`
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
# Thu, 02 Jul 2026 02:36:57 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.11 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:36:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 02 Jul 2026 02:36:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b37fa9f70115f2c6efaaabada812923f435bc52042abe0d5f044d7f23a633f92`  
		Last Modified: Thu, 02 Jul 2026 02:37:21 GMT  
		Size: 213.8 MB (213773407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c0ee93395886d6c1dda437cfc5b8670618068638ea02c3303b813dcad0b88899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2370314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f59362249134347477c97bd2e64632f022995534e85697a76e353eb94d29ab59`

```dockerfile
```

-	Layers:
	-	`sha256:8accef99eaa5eafa5f1a5131dc29561fffb9e18907506aec29bc1c7e77fb7f09`  
		Last Modified: Thu, 02 Jul 2026 02:37:16 GMT  
		Size: 2.4 MB (2359928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d47d1fcf27c21c32699b7dd890b10aca927c3cb2b4d59c535f9412013e655d5`  
		Last Modified: Thu, 02 Jul 2026 02:37:16 GMT  
		Size: 10.4 KB (10386 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:21-jdk-headless-ubuntu` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:d283674a8cb71fcf16ef6745a414d0447e50b68133e34ac0251787ed235c5b43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.7 MB (250709342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32cf76a8a3dae10ac62d6edd171a1513b501a5b01ef23fa81c394cbbc9e85cb`
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
# Thu, 02 Jul 2026 03:35:44 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-21-jdk-headless=21.0.11 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:35:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-21
# Thu, 02 Jul 2026 03:35:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a2df4f168c05cc6d2f535ee8ddad50f2aafc796882453478d78d0e4554bfa46`  
		Last Modified: Thu, 02 Jul 2026 03:36:26 GMT  
		Size: 216.4 MB (216395866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-headless-ubuntu` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a0ad0190d3e0acc68d1fec783c87161ba0591c0a885a3d4cb4d944558bff8d43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2367194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:847f6f264d73e7038e838771bae9493fe7f045dc00b9006a50a209b015aded6b`

```dockerfile
```

-	Layers:
	-	`sha256:9b27c72d37f1c53b411ea12d07121b23d7c129348606dcbf05ca9e592e938418`  
		Last Modified: Thu, 02 Jul 2026 03:36:20 GMT  
		Size: 2.4 MB (2356892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c52975223c2f68e2d58a123c2b9ff3f80a1d28a290d85532b82d898f39cc94fb`  
		Last Modified: Thu, 02 Jul 2026 03:36:19 GMT  
		Size: 10.3 KB (10302 bytes)  
		MIME: application/vnd.in-toto+json
